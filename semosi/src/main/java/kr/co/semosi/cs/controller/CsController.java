package kr.co.semosi.cs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CsController {
	
	@RequestMapping(value="/moveOnePost.sms")
	public String moveOnePost(){
		return "cs/post";
	}
	
	@RequestMapping(value="/moveCsMain.sms")
	public String moveCsMain(){
		return "cs/csMain";
	}
	
	@RequestMapping(value="/moveCsSearch.sms")
	public String moveCsSearch(){
		return "cs/csSearch";
	}
	
	@RequestMapping(value="/moveCsWritePost.sms")
	public String moveCsWritePost(){
		return "cs/postWrite";
	}
	
	@RequestMapping(value="/moveNotice.sms")
	public String moveNotice(){
		return "cs/notice";
	}
	
	@RequestMapping(value="/moveGuide.sms")
	public String moveGuide(){
		return "cs/guide";
	}
	
	@RequestMapping(value="/moveFaq.sms")
	public String moveFaq(){
		return "cs/FAQ";
	}
	
	@RequestMapping(value="/moveQna.sms")
	public String moveQna(){
		return "cs/QNA";
	}
	
	@RequestMapping(value="/moveIntroduce.sms")
	public String moveIntroduce(){
		return "cs/introduce";
	}
	
	@RequestMapping(value="/moveTerms.sms")
	public String moveTerms(){
		return "cs/terms";
	}
}
