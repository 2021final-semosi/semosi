package kr.co.semosi.admin.job.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.semosi.admin.job.model.service.AdminJobService;
import kr.co.semosi.admin.job.model.vo.AdminOffer;
import kr.co.semosi.admin.job.model.vo.AdminSearch;

@Controller
public class AdminJobController {
	
	@Resource(name="jobService")
	private AdminJobService jobService;
	
	@RequestMapping(value="/job_offer_list.sms")
	public String jobOfferList(
			@RequestParam Map<String, Object> paramMap, 
			Model model, @RequestParam(defaultValue = "all") String category, 
			@RequestParam(defaultValue = " ") String keyword){
		//조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null && paramMap.get("startPage").toString().length()!=0 ?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null && paramMap.get("visiblePages").toString().length()!=0?Integer.parseInt(paramMap.get("visiblePages").toString()):13);
        
		// 전체 게시물 수를 가져옴
		int totalCnt = jobService.jobOfferContentCnt(paramMap);
		
		BigDecimal decimal1 = new BigDecimal(totalCnt);
	    BigDecimal decimal2 = new BigDecimal(visiblePages);
	    BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);
	    
	    int startLimitPage = 0;
        if(startPage==1){
        	startLimitPage = 0;
        }else{
        	startLimitPage = (startPage-1)*visiblePages+1;
        }
        
        paramMap.put("start", startLimitPage);
        paramMap.put("end", startLimitPage+visiblePages);
        
        // 검색 카테고리와 키워드 넣어주기
        paramMap.put("category", category);
		paramMap.put("keyword", keyword);
        
        //jsp에서 보여줄 정보 추출
        model.addAttribute("startPage", startPage+"");//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물 수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
        model.addAttribute("jobOfferList", jobService.jobOfferList(paramMap));//검색
        
        return "admin/job/job_offer";
	}
	
	@RequestMapping(value="/job_search_list.sms")
	public String jobSearchList(
			@RequestParam Map<String, Object> paramMap, 
			Model model, @RequestParam(defaultValue = "all") String category, 
			@RequestParam(defaultValue = " ") String keyword){
		//조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null && paramMap.get("startPage").toString().length()!=0 ?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null && paramMap.get("visiblePages").toString().length()!=0?Integer.parseInt(paramMap.get("visiblePages").toString()):13);
        
		// 전체 게시물 수를 가져옴
		int totalCnt = jobService.jobSearchContentCnt(paramMap);
		
		BigDecimal decimal1 = new BigDecimal(totalCnt);
	    BigDecimal decimal2 = new BigDecimal(visiblePages);
	    BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);
	    
	    int startLimitPage = 0;
        if(startPage==1){
        	startLimitPage = 0;
        }else{
        	startLimitPage = (startPage-1)*visiblePages+1;
        }
        
        paramMap.put("start", startLimitPage);
        paramMap.put("end", startLimitPage+visiblePages);
        
        // 검색 카테고리와 키워드 넣어주기
        paramMap.put("category", category);
		paramMap.put("keyword", keyword);
        
        //jsp에서 보여줄 정보 추출
        model.addAttribute("startPage", startPage+"");//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물 수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
        model.addAttribute("jobSearchList", jobService.jobSearchList(paramMap));//검색
        
        return "admin/job/job_search";
	}
	
	@RequestMapping(value="/post_report_list.sms")
	public String postReportList(
			@RequestParam Map<String, Object> paramMap, 
			Model model, @RequestParam(defaultValue = "all") String category, 
			@RequestParam(defaultValue = " ") String keyword){
		//조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null && paramMap.get("startPage").toString().length()!=0 ?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null && paramMap.get("visiblePages").toString().length()!=0?Integer.parseInt(paramMap.get("visiblePages").toString()):13);
        
		// 전체 게시물 수를 가져옴
		int totalCnt = jobService.postReportContentCnt(paramMap);
		
		BigDecimal decimal1 = new BigDecimal(totalCnt);
	    BigDecimal decimal2 = new BigDecimal(visiblePages);
	    BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);
	    
	    int startLimitPage = 0;
        if(startPage==1){
        	startLimitPage = 0;
        }else{
        	startLimitPage = (startPage-1)*visiblePages+1;
        }
        
        paramMap.put("start", startLimitPage);
        paramMap.put("end", startLimitPage+visiblePages);
        
        // 검색 카테고리와 키워드 넣어주기
        paramMap.put("category", category);
		paramMap.put("keyword", keyword);
        
        //jsp에서 보여줄 정보 추출
        model.addAttribute("startPage", startPage+"");//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물 수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
        model.addAttribute("postReportList", jobService.postReportList(paramMap));//검색
        
        return "admin/job/report_board";
	}
	
	@RequestMapping(value="/delChangeOffer.sms")
	public void delChangeInquiry(@RequestParam String postNo, @RequestParam char delYN, HttpServletResponse response) throws IOException{
		if(delYN=='N') delYN='Y';
		else delYN='N';
		
		AdminOffer ao = new AdminOffer();
		ao.setPostNo(postNo);
		ao.setDelYN(delYN);
		
		int result = jobService.delChangeOffer(ao);
		
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	@RequestMapping(value="/delChangeSearch.sms")
	public void delChangeSearch(@RequestParam String postNo, @RequestParam char delYN, HttpServletResponse response) throws IOException{
		if(delYN=='N') delYN='Y';
		else delYN='N';
		
		AdminSearch as = new AdminSearch();
		as.setPostNo(postNo);
		as.setDelYN(delYN);
		
		int result = jobService.delChangeSearch(as);
		
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	@RequestMapping(value="/job_offer_page.sms")
	public String jobOfferPage(@RequestParam String postNo, @RequestParam String title, Model model) {
		AdminOffer aOffer = jobService.jobOfferPage(postNo,title);
		model.addAttribute("aOffer",aOffer);
		return "admin/job/job_offer_page";
	}
	
	@RequestMapping(value="/job_search_page.sms")
	public String jobSearchPage(@RequestParam String postNo, @RequestParam String title, Model model) {
		AdminSearch aSearch = jobService.jobSearchPage(postNo,title);
		model.addAttribute("aSearch",aSearch);
		return "admin/job/job_search_page";
	}
	
	@RequestMapping(value="/post_report_page.sms") 
	public String postReportPage(@RequestParam String reportNo, Model model) {		
		jobService.postReportPage(reportNo);
		
		model.addAttribute("postReportPage",jobService.postReportPage(reportNo));
		return "admin/job/report_board_page";
	}
	
	@RequestMapping(value="/report_post_delete.sms") 
	public void postReportDelete(@RequestParam String postNo, HttpServletResponse response) throws IOException {		
		int result = jobService.postReportDelete(postNo);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}	
	
	@RequestMapping(value="/jocheckDelete.sms")
	public void jocheckDelete(@RequestParam(value="valueArr[]") List<String> datas, HttpServletResponse response) throws IOException{
		String[] joList = new String[20];
		int i=0;
		for(String data:datas){
			joList[i] = data;
			i++;
		}
		int result = jobService.jocheckDelete(joList);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	@RequestMapping(value="/jscheckDelete.sms")
	public void jscheckDelete(@RequestParam(value="valueArr[]") List<String> datas, HttpServletResponse response) throws IOException{
		String[] jsList = new String[20];
		int i=0;
		for(String data:datas){
			jsList[i] = data;
			i++;
		}
		int result = jobService.jscheckDelete(jsList);
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
}
