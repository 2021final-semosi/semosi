package kr.co.semosi.jobsearch.controller;

import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.semosi.jobsearch.model.service.JobsearchService;
import kr.co.semosi.jobsearch.model.vo.JobSearchApply;
import kr.co.semosi.jobsearch.model.vo.JobSearchList;
import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Controller
public class JobsearchController {
	
	@Autowired
	@Qualifier(value="jobsearchService")
	private JobsearchService jService;
	
	@RequestMapping(value="/jobsearchPage.sms")
	public String jobsearchPage(Model model) {
		System.out.println("[JobsearchController : jobsearchPage] 호출 성공");
		
		int page=1;
		ArrayList<JobSearchList> list=jService.selectOfferAllList(page);
		
		model.addAttribute("list", ageCalculator(list));
		
		return "jobsearch/jobsearchPage";
	}
	
	@RequestMapping(value="/moreJobsearchPage.sms")
	@ResponseBody
	public ArrayList<JobSearchList> moreJobsearchPage(Model model, @RequestParam int page) {
		System.out.println("[JobsearchController : moreJobsearchPage] 호출 성공");
		
		ArrayList<JobSearchList> list=jService.selectOfferAllList(page);
		
		return ageCalculator(list);
	}

	@RequestMapping(value="/moveSearchJobPost.sms")
	public String moveSearchJobPost(HttpSession session, @RequestParam int postNo, Model model){
		System.out.println("[JobofferController : moveSearchJobPost] 호출 성공");
		
		ParentMember pm=(ParentMember)session.getAttribute("pMember");
		SitterMember sm=(SitterMember)session.getAttribute("sMember");
		
		if(pm!=null || sm!=null){		// 부모회원 또는 시터회원 중 하나라도 로그인 되어 있다면
			JobSearchList jsl=jService.selectOneJobPost(postNo);
			model.addAttribute("postData", ageCalculator(jsl));
			
			return "jobsearch/searchJobPost";
		}
		else{							// 비로그인 상태라면 포스트를 조회할 수 없도록 하기 위해
			model.addAttribute("msg", "로그인 후 이용해주세요.\\n로그인 페이지로 이동합니다.");
			model.addAttribute("location", "/loginPage.sms");
			
			return "jobsearch/result";
		}
	}
	
	@RequestMapping(value="/offerPostApply.sms")
	public String offerPostApply(HttpSession session, @RequestParam int postNo, Model model){
		System.out.println("[JobofferController : searchPostApply] 호출 성공");
		
		SitterMember sm=(SitterMember)session.getAttribute("sMember");
		
		JobSearchApply jsa=new JobSearchApply();
		jsa.setMembersNo(sm.getMemberNo());
		jsa.setPostNo(postNo);
		
		if(sm!=null){		// 시터 회원으로 로그인되어 있다면 로직 진행
			int result=jService.insertSearchApply(jsa);
			
			if(result>0){
				model.addAttribute("msg", "신청이 완료되었습니다.");
				model.addAttribute("location", "/moveSearchJobPost.sms?postNo="+postNo);
				
				return "jobsearch/result";
			}
		}
		model.addAttribute("msg", "시터 회원만 신청 가능합니다.");
		model.addAttribute("location", "/moveSearchJobPost.sms?postNo="+postNo);
		
		return "jobsearch/result";
	}

	private Object ageCalculator(JobSearchList jsl) {
		LocalDate present=LocalDate.now();
		LocalDate birth=new java.sql.Date(jsl.getCareBirth().getTime()).toLocalDate();
		
		int nAge=present.minusYears(birth.getYear()).getYear();
		if(birth.plusYears(nAge).isAfter(present)){
			nAge--;
		}
		jsl.setnAge(nAge);
		
		return jsl;
	}

	// 나이 계산 메소드
	public ArrayList<JobSearchList> ageCalculator(ArrayList<JobSearchList> list){
		LocalDate present=LocalDate.now();
		int i=0;
		
		for(JobSearchList jsl : list){
			LocalDate birth=new java.sql.Date(jsl.getCareBirth().getTime()).toLocalDate();	// 계산을 위해 java.sql.Date 형식을 java.time 형식으로 변환 
			int nAge=present.minusYears(birth.getYear()).getYear();		// 현재 년도 - 생일 년도
			if(birth.plusYears(nAge).isAfter(present)){					// 생년월일을 현재년도월일로 바꿔주고 월일이 지났는지 비교
				nAge--;
			}
			jsl.setnAge(nAge);
			
			long months=Period.between(birth, present).toTotalMonths();	// 두 날짜의 차를 개월 수로 변환
			jsl.setMonths(months);
			
			list.set(i, jsl);
			
			i++;
		}
		
		return list;
	}
}
