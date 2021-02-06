package kr.co.semosi.jobsearch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobsearchController {
	
	@RequestMapping(value="jobsearchPage.sms")
	public String jobsearchPage() {
		
		return "jobsearch/jobsearchPage";
	}
	
	@RequestMapping(value="/moveSearchJobPost.sms")
	public String moveSearchJob(){
		return "jobsearch/searchJobPost";
	}
}
