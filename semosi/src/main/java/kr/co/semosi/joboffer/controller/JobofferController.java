package kr.co.semosi.joboffer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobofferController {
	
	@RequestMapping(value="jobofferPage.sms")
	public String jobsearchPage() {
		
		return "joboffer/jobofferPage";
	}
	
	@RequestMapping(value="/moveSearchSitterPost.sms")
	public String moveSearchSitterPost(){
		return "joboffer/searchSitterPost";
	}
}
