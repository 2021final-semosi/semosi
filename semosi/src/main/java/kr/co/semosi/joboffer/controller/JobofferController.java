package kr.co.semosi.joboffer.controller;

import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.semosi.joboffer.model.service.JobofferService;
import kr.co.semosi.joboffer.model.vo.JobOfferApply;
import kr.co.semosi.joboffer.model.vo.JobOfferList;
import kr.co.semosi.joboffer.model.vo.JobOfferPost;
import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Controller
public class JobofferController {
	
	@Autowired
	@Qualifier(value="jobofferService")
	private JobofferService jService;
	
	@RequestMapping(value="/jobofferPage.sms")
	public String jobofferPage(Model model) {
		System.out.println("[JobofferController : jobofferPage] 호출 성공");
		
		int page=1;
		ArrayList<JobOfferList> list=jService.selectSearchAllList(page);
		
		model.addAttribute("list", ageCalculator(list));
		
		return "joboffer/jobofferPage";
	}
	
	@RequestMapping(value="/moreJobofferPage.sms")
	@ResponseBody
	public ArrayList<JobOfferList> moreJobofferPage(Model model, @RequestParam int page) {
		System.out.println("[JobofferController : moreJobofferPage] 호출 성공");
		
		ArrayList<JobOfferList> list=jService.selectSearchAllList(page);
		
		return ageCalculator(list);
	}
	
	@RequestMapping(value="/moveSearchSitterPost.sms")
	public String moveSearchSitterPost(HttpSession session, @RequestParam String postNo, Model model){
		System.out.println("[JobofferController : moveSearchSitterPost] 호출 성공");
		
		ParentMember pm=(ParentMember)session.getAttribute("pMember");
		SitterMember sm=(SitterMember)session.getAttribute("sMember");
		
		if(pm!=null || sm!=null){		// 부모회원 또는 시터회원 중 하나라도 로그인 되어 있다면
			JobOfferPost jop=jService.selectOneSearchPost(postNo);
			model.addAttribute("postData", ageCalculator(jop));
			
			return "joboffer/searchSitterPost";
		}
		else{							// 비로그인 상태라면 포스트를 조회할 수 없도록 하기 위해
			model.addAttribute("msg", "로그인 후 이용해주세요.\\n로그인 페이지로 이동합니다.");
			model.addAttribute("location", "/loginPage.sms");
			
			return "joboffer/result";
		}
	}
	
	@RequestMapping(value="/searchPostApply.sms")
	public String searchPostApply(HttpSession session, @RequestParam int postNo, Model model){
		System.out.println("[JobofferController : searchPostApply] 호출 성공");
		
		ParentMember pm=(ParentMember)session.getAttribute("pMember");
		
		JobOfferApply joa=new JobOfferApply();
		joa.setMemberpNo(pm.getMemberNo());
		joa.setPostNo(postNo);
		
		if(pm!=null){		// 부모 회원으로 로그인되어 있다면 로직 진행
			int result=jService.insertOfferApply(joa);
			
			if(result>0){
				model.addAttribute("msg", "신청이 완료되었습니다.");
				model.addAttribute("location", "/moveSearchSitterPost.sms?postNo="+postNo);
				
				return "joboffer/result";
			}
		}
		model.addAttribute("msg", "부모 회원만 신청 가능합니다.");
		model.addAttribute("location", "/moveSearchSitterPost.sms?postNo="+postNo);
		
		return "joboffer/result";
	}
	
	// 나이 계산 메소드
	public ArrayList<JobOfferList> ageCalculator(ArrayList<JobOfferList> list){
		LocalDate present=LocalDate.now();
		int i=0;
		
		for(JobOfferList jol : list){
			LocalDate birth=new java.sql.Date(jol.getBirthDay().getTime()).toLocalDate();	// 계산을 위해 java.sql.Date 형식을 java.time 형식으로 변환 
			int age=present.minusYears(birth.getYear()).getYear();		// 현재 년도 - 생일 년도
			if(birth.plusYears(age).isAfter(present)){					// 생년월일을 현재년도월일로 바꿔주고 월일이 지났는지 비교
				age--;
			}
			jol.setAge(age);
			list.set(i, jol);
			i++;
		}
		
		return list;
	}
	
	public JobOfferPost ageCalculator(JobOfferPost jop){
		LocalDate present=LocalDate.now();
		LocalDate birth=new java.sql.Date(jop.getBirthDay().getTime()).toLocalDate();
		
		int age=present.minusYears(birth.getYear()).getYear();
		if(birth.plusYears(age).isAfter(present)){
			age--;
		}
		jop.setAge(age);
		
		return jop;
	}
}
