package kr.co.semosi;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.semosi.index.model.service.IndexService;
import kr.co.semosi.index.model.vo.IndexReviews;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	@Qualifier(value="indexService")
	private IndexService iService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("[HomeController : loadReview] 호출 성공");
		
		ArrayList<IndexReviews> list=iService.selectRecentReviews();
		
		model.addAttribute("list", list);
		
		return "index";
	}
	
}
