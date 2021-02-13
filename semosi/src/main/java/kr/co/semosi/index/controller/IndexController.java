package kr.co.semosi.index.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.semosi.index.model.service.IndexService;
import kr.co.semosi.index.model.vo.Index;
import kr.co.semosi.index.model.vo.IndexReviews;

@Controller
public class IndexController {

	@Autowired
	@Qualifier(value="indexService")
	private IndexService iService;
	
	@RequestMapping(value="/loadCount.sms")
	@ResponseBody
	public Map<String, String> loadCount(){
		System.out.println("[IndexController : loadCount] 호출 성공");
		
		Index countData=iService.applyCount();
		
		Map<String, String> result=new HashMap<String, String>();
		
		result.put("offerCount", Integer.toString(countData.getOfferCount()));
		result.put("searchCount", Integer.toString(countData.getSearchCount()));
		result.put("sitterCount", Integer.toString(countData.getSitterCount()));
		/*
		System.out.println("[IndexController] 리턴");
		*/
		return result;
	}
	// homeController로 이전
	/*
	@RequestMapping(value="/loadReview.sms")
	public void selectRecentReviews(Model model){
		System.out.println("[IndexController : loadReview] 호출 성공");
		
		ArrayList<IndexReviews> list=iService.selectRecentReviews();
		
		model.addAttribute("list", list);
		System.out.println(list.get(0).getAddress());
		return ;
	}
	*/
}
