package kr.co.semosi.admin.review.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.semosi.admin.review.model.service.AdminReviewService;
import kr.co.semosi.admin.review.model.vo.JobOfferReviewView;
import kr.co.semosi.admin.review.model.vo.JobSearchReviewView;
import kr.co.semosi.admin.review.model.vo.ReviewAnswer;

@Controller
public class AdminReviewController {

    @Resource(name = "adminReviewService")
    private AdminReviewService rService;

    @RequestMapping(value = "/offer_review.sms")
    public String offerReviewList(@RequestParam Map<String, Object> paramMap, 
	    @RequestParam(defaultValue = "all") String category, @RequestParam(defaultValue = " ") String keyword, Model model) {
	// 조회 하려는 페이지
	int startPage = (paramMap.get("startPage") != null && paramMap.get("startPage").toString().length() != 0 ? Integer.parseInt(paramMap.get("startPage").toString()) : 1);
	// 한페이지에 보여줄 리스트 수
	int visiblePages = (paramMap.get("visiblePages") != null && paramMap.get("visiblePages").toString().length() != 0 ? Integer.parseInt(paramMap.get("visiblePages").toString()) : 13);
	
	//검색
	paramMap.put("category", category);
	paramMap.put("keyword", keyword);
	
	// 일단 전체 건수를 가져온다.
	int totalPCnt = rService.getReviewCnt(paramMap);

	BigDecimal decimal1 = new BigDecimal(totalPCnt);
	BigDecimal decimal2 = new BigDecimal(visiblePages);
	BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);

	int startLimitPage = 0;
	if (startPage == 1) {
	    startLimitPage = 0;
	} else {
	    startLimitPage = (startPage - 1) * visiblePages + 1;
	}

	paramMap.put("start", startLimitPage);
	paramMap.put("end", startLimitPage + visiblePages);

	// jsp 에서 보여줄 정보 추출
	model.addAttribute("startPage", startPage + "");// 현재 페이지
	model.addAttribute("totalPCnt", totalPCnt);// 전체 게시물수
	model.addAttribute("totalPage", totalPage);// 페이지 네비게이션에 보여줄 리스트 수
	model.addAttribute("OfferReviewList", rService.offerReviewList(paramMap));

	return "admin/review/offer_review";
    }
    
    @RequestMapping(value = "/search_review.sms")
    public String searchReviewList(@RequestParam Map<String, Object> paramMap, 
	    @RequestParam(defaultValue = "all") String category, @RequestParam(defaultValue = " ") String keyword, Model model) {
	// 조회 하려는 페이지
	int startPage = (paramMap.get("startPage") != null && paramMap.get("startPage").toString().length() != 0 ? Integer.parseInt(paramMap.get("startPage").toString()) : 1);
	// 한페이지에 보여줄 리스트 수
	int visiblePages = (paramMap.get("visiblePages") != null && paramMap.get("visiblePages").toString().length() != 0 ? Integer.parseInt(paramMap.get("visiblePages").toString()) : 13);
	
	//검색
	paramMap.put("category", category);
	paramMap.put("keyword", keyword);	
	
	// 일단 전체 건수를 가져온다.
	int totalPCnt = rService.getReviewCount(paramMap);

	BigDecimal decimal1 = new BigDecimal(totalPCnt);
	BigDecimal decimal2 = new BigDecimal(visiblePages);
	BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);

	int startLimitPage = 0;
	if (startPage == 1) {
	    startLimitPage = 0;
	} else {
	    startLimitPage = (startPage - 1) * visiblePages + 1;
	}

	paramMap.put("start", startLimitPage);
	paramMap.put("end", startLimitPage + visiblePages);

	// jsp 에서 보여줄 정보 추출
	model.addAttribute("startPage", startPage + "");// 현재 페이지
	model.addAttribute("totalPCnt", totalPCnt);// 전체 게시물수
	model.addAttribute("totalPage", totalPage);// 페이지 네비게이션에 보여줄 리스트 수
	model.addAttribute("SearchReviewList", rService.searchReviewList(paramMap));

	return "admin/review/search_review";
    }
    
    @RequestMapping(value = "/review_answer.sms")
    public String reviewAnswerList(@RequestParam Map<String, Object> paramMap,
	    @RequestParam(defaultValue = "all") String category, @RequestParam(defaultValue = " ") String keyword, Model model) {
	// 조회 하려는 페이지
	int startPage = (paramMap.get("startPage") != null && paramMap.get("startPage").toString().length() != 0 ? Integer.parseInt(paramMap.get("startPage").toString()) : 1);
	// 한페이지에 보여줄 리스트 수
	int visiblePages = (paramMap.get("visiblePages") != null && paramMap.get("visiblePages").toString().length() != 0 ? Integer.parseInt(paramMap.get("visiblePages").toString()) : 13);
	
	//검색
	paramMap.put("category", category);
	paramMap.put("keyword", keyword);
	
	// 일단 전체 건수를 가져온다.
	int totalPCnt = rService.getReAnswerCount(paramMap);

	BigDecimal decimal1 = new BigDecimal(totalPCnt);
	BigDecimal decimal2 = new BigDecimal(visiblePages);
	BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);

	int startLimitPage = 0;
	if (startPage == 1) {
	    startLimitPage = 0;
	} else {
	    startLimitPage = (startPage - 1) * visiblePages + 1;
	}

	paramMap.put("start", startLimitPage);
	paramMap.put("end", startLimitPage + visiblePages);

	// jsp 에서 보여줄 정보 추출
	model.addAttribute("startPage", startPage + "");// 현재 페이지
	model.addAttribute("totalPCnt", totalPCnt);// 전체 게시물수
	model.addAttribute("totalPage", totalPage);// 페이지 네비게이션에 보여줄 리스트 수
	model.addAttribute("ReviewAnswerList", rService.reviewAnswerList(paramMap));

	return "admin/review/review_answer";
    }
    
    			     
    @RequestMapping(value = "/answerDelYN.sms")
    public String answerDelYN(@RequestParam String answerReviewNo, @RequestParam char delYn, HttpServletResponse response) throws IOException{
	ReviewAnswer ra = new ReviewAnswer();
	if(delYn=='Y'){
	   delYn='N';
	}else{
	    delYn='Y';
	}
	
	ra.setAnswerReviewNo(answerReviewNo);
	ra.setDelYn(delYn);
	
	int result = rService.answerDelYN(ra); 
	
	if(result>0){
	    System.out.println("정보 변경 성공");
	    response.getWriter().print(true);
	}else{
	    System.out.println("정보 변경 실패");
	    response.getWriter().print(false);
	}
	return null;
    }
    
    @RequestMapping(value = "/offerDelYN.sms")
    public String offerDelYN(@RequestParam String reviewNo, @RequestParam char delYn, HttpServletResponse response) throws IOException{
	JobOfferReviewView jo = new JobOfferReviewView();
	
	if(delYn=='Y'){
	   delYn='N';
	}else{
	    delYn='Y';
	}
	
	jo.setReviewNo(reviewNo);
	jo.setDelYn(delYn);
	
	int result = rService.offerDelYN(jo); 
	
	if(result>0){
	    System.out.println("정보 변경 성공");
	    response.getWriter().print(true);
	}else{
	    System.out.println("정보 변경 실패");
	    response.getWriter().print(false);
	}
	return null;
    }
    
    @RequestMapping(value = "/searchDelYN.sms")
    public String searchDelYN(@RequestParam String reviewNo, @RequestParam char delYn, HttpServletResponse response) throws IOException{
	JobSearchReviewView js = new JobSearchReviewView();
	
	if(delYn=='Y'){
	   delYn='N';
	}else{
	    delYn='Y';
	}
	
	js.setReviewNo(reviewNo);
	js.setDelYn(delYn);
	
	int result = rService.searchDelYN(js); 
	
	if(result>0){
	    System.out.println("정보 변경 성공");
	    response.getWriter().print(true);
	}else{
	    System.out.println("정보 변경 실패");
	    response.getWriter().print(false);
	}
	return null;
    }
}
