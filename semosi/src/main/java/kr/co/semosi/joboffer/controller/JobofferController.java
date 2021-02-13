package kr.co.semosi.joboffer.controller;

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
		
		model.addAttribute("list", list);
		
		return "joboffer/jobofferPage";
	}
	
	@RequestMapping(value="/moreJobofferPage.sms")
	@ResponseBody
	public ArrayList<JobOfferList> moreJobofferPage(Model model, @RequestParam int page) {
		System.out.println("[JobofferController : moreJobofferPage] 호출 성공");
		
		ArrayList<JobOfferList> list=jService.selectSearchAllList(page);
		
		return list;
	}
	
	@RequestMapping(value="/moveSearchSitterPost.sms")
	public String moveSearchSitterPost(){
		return "joboffer/searchSitterPost";
	}
}
