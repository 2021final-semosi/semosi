package kr.co.semosi.joboffer.controller;

import java.time.LocalDate;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.semosi.joboffer.model.service.JobofferService;
import kr.co.semosi.joboffer.model.vo.JobOfferList;

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
	public String moveSearchSitterPost(){
		return "joboffer/searchSitterPost";
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
}
