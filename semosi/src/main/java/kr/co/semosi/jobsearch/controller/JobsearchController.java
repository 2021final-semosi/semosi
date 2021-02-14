package kr.co.semosi.jobsearch.controller;

import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.semosi.jobsearch.model.service.JobsearchService;
import kr.co.semosi.jobsearch.model.vo.JobSearchList;

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
	public String moveSearchJob(){
		return "jobsearch/searchJobPost";
	}
	
	// 나이 계산 메소드
	public ArrayList<JobSearchList> ageCalculator(ArrayList<JobSearchList> list){
		LocalDate present=LocalDate.now();
		int i=0;
		
		for(JobSearchList jol : list){
			LocalDate birth=new java.sql.Date(jol.getCareBirth().getTime()).toLocalDate();	// 계산을 위해 java.sql.Date 형식을 java.time 형식으로 변환 
			int age=present.minusYears(birth.getYear()).getYear();		// 현재 년도 - 생일 년도
			if(birth.plusYears(age).isAfter(present)){					// 생년월일을 현재년도월일로 바꿔주고 월일이 지났는지 비교
				age--;
			}
			jol.setAge(age);
			
			long months=Period.between(birth, present).toTotalMonths();	// 두 날짜의 차를 개월 수로 변환
			jol.setMonths(months);
			
			list.set(i, jol);
			i++;
		}
		
		return list;
	}
}
