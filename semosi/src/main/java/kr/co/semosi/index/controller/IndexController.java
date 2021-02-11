package kr.co.semosi.index.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.semosi.index.model.service.IndexService;
import kr.co.semosi.index.model.vo.Index;

@Controller
public class IndexController {

	@Autowired
	@Qualifier(value="indexService")
	private IndexService iService;
	
	@RequestMapping(value="/loadCount.sms")
	@ResponseBody
	public Map<String, String> loadCount(){
		System.out.println("[IndexController] 호출 성공");
		
		Index countData=iService.applyCount();
		
		Map<String, String> result=new HashMap<>();
		
		result.put("offerCount", Integer.toString(countData.getOfferCount()));
		result.put("searchCount", Integer.toString(countData.getSearchCount()));
		result.put("sitterCount", Integer.toString(countData.getSitterCount()));
		/*
		System.out.println(result.get("offerCount"));
		System.out.println(result.get("searchCount"));
		
		System.out.println("[IndexController] 리턴");
		*/
		return result;
	}
}
