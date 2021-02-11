package kr.co.semosi.admin.customer.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.semosi.admin.customer.model.service.AdminCustomerService;
import kr.co.semosi.admin.customer.model.vo.FAQ;
import kr.co.semosi.admin.customer.model.vo.Inquiry;
import kr.co.semosi.admin.customer.model.vo.Notice;
import kr.co.semosi.admin.customer.model.vo.QnA;

@Controller
public class AdminCustomerController {
	
	@Resource(name="customerService")
	private AdminCustomerService customerService;

	@RequestMapping(value="/faq_parents_list.sms")
	public String selectPFAQList(
			@RequestParam Map<String, Object> paramMap, 
			Model model){
		//조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null && paramMap.get("startPage").toString().length()!=0 ?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null && paramMap.get("visiblePages").toString().length()!=0?Integer.parseInt(paramMap.get("visiblePages").toString()):13);
        
		// 전체 게시물 수를 가져옴
		int totalCnt = customerService.getSelectPFAQContentCnt(paramMap);
		
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
        
        //jsp에서 보여줄 정보 추출
        model.addAttribute("startPage", startPage+"");//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물 수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
        model.addAttribute("selectPFAQList", customerService.selectPFAQList(paramMap));//검색
        
        return "admin/customercenter/faq_parents";
	}
	
	@RequestMapping(value="/faq_parents_write.sms")
	public String faqParentsWrite(@RequestParam String title, @RequestParam String content, HttpServletRequest request, Model model) {
		System.out.println(title+content);
		int result = customerService.insertParentsFAQWrite(title,content);
		
		if(result>0) {
			model.addAttribute("msg","작성이 완료되었습니다.");
		} else {
			model.addAttribute("msg","작성이 정상적으로 처리되지 않았습니다.(지속적인 문제 발생 시 문의바랍니다.)");
		}
		model.addAttribute("location","/faq_parents_list.sms");
		return "/admin/result";
	}
	
	@RequestMapping(value="/faq_parents_modify.sms") 
	public String faqParentsModify(@RequestParam String title, @RequestParam String content, @RequestParam int postNo, Model model) {
		System.out.println(postNo+":"+title+content);
		int result = customerService.updateParentsFAQModify(title,content,postNo);
		
		if(result>0) {
			model.addAttribute("msg","수정이 완료되었습니다.");
		} else {
			model.addAttribute("msg","수정이 정상적으로 처리되지 않았습니다.(지속적인 문제 발생 시 문의바랍니다.)");
		}
		model.addAttribute("location","/faq_parents_list.sms");
		return "/admin/result";		
	}
	
	
	@RequestMapping(value="/faq_sitter_list.sms")
	public String selectSFAQList(
			@RequestParam Map<String, Object> paramMap, 
			Model model){
		//조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null && paramMap.get("startPage").toString().length()!=0 ?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null && paramMap.get("visiblePages").toString().length()!=0?Integer.parseInt(paramMap.get("visiblePages").toString()):13);
	
		// 전체 게시물 수를 가져옴
		int totalCnt = customerService.getSelectSFAQContentCnt(paramMap);
		
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
        
        //jsp에서 보여줄 정보 추출
        model.addAttribute("startPage", startPage+"");//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물 수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
        model.addAttribute("selectSFAQList", customerService.selectSFAQList(paramMap));//검색
        
        return "admin/customercenter/faq_sitter";
	}
	
	@RequestMapping(value="/faq_sitter_write.sms")
	public String faqSitterWrite(@RequestParam String title, @RequestParam String content, HttpServletRequest request, Model model) {
		System.out.println(title+content);
		int result = customerService.insertSitterFAQWrite(title,content);
		
		if(result>0) {
			model.addAttribute("msg","작성이 완료되었습니다.");
		} else {
			model.addAttribute("msg","작성이 정상적으로 처리되지 않았습니다.(지속적인 문제 발생 시 문의바랍니다.)");
		}
		model.addAttribute("location","/faq_sitter_list.sms");
		return "/admin/result";
	}
	
	@RequestMapping(value="/faq_sitter_modify.sms") 
	public String faqSitterModify(@RequestParam String title, @RequestParam String content, @RequestParam int postNo, Model model) {
		System.out.println(postNo+":"+title+content);
		int result = customerService.updateSitterFAQModify(title,content,postNo);
		
		if(result>0) {
			model.addAttribute("msg","수정이 완료되었습니다.");
		} else {
			model.addAttribute("msg","수정이 정상적으로 처리되지 않았습니다.(지속적인 문제 발생 시 문의바랍니다.)");
		}
		model.addAttribute("location","/faq_sitter_list.sms");
		return "/admin/result";		
	}

	
	@RequestMapping(value="/notice_list.sms")
	public String selectNoticeList(
			@RequestParam Map<String, Object> paramMap, 
			Model model){
		//조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null && paramMap.get("startPage").toString().length()!=0 ?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null && paramMap.get("visiblePages").toString().length()!=0?Integer.parseInt(paramMap.get("visiblePages").toString()):13);
        
		// 전체 게시물 수를 가져옴
		int totalCnt = customerService.getSelectNoticeContentCnt(paramMap);
		
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
        
        //jsp에서 보여줄 정보 추출
        model.addAttribute("startPage", startPage+"");//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물 수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
        model.addAttribute("selectNoticeList", customerService.selectNoticeList(paramMap));//검색
        
        return "admin/customercenter/notice";
	}
	
	@RequestMapping(value="/notice_write.sms")
	public String noticeWrite(@RequestParam String title, @RequestParam String content, HttpServletRequest request, Model model) {
		System.out.println(title+content);
		int result = customerService.insertNoticeWrite(title,content);
		
		if(result>0) {
			model.addAttribute("msg","작성이 완료되었습니다.");
		} else {
			model.addAttribute("msg","작성이 정상적으로 처리되지 않았습니다.(지속적인 문제 발생 시 문의바랍니다.)");
		}
		model.addAttribute("location","/notice_list.sms");
		return "/admin/result";
	}
	
	@RequestMapping(value="/notice_modify.sms") 
	public String noticeModify(@RequestParam String title, @RequestParam String content, @RequestParam int postNo, Model model) {
		System.out.println(postNo+":"+title+content);
		int result = customerService.updateNoticeModify(title,content,postNo);
		
		if(result>0) {
			model.addAttribute("msg","수정이 완료되었습니다.");
		} else {
			model.addAttribute("msg","수정이 정상적으로 처리되지 않았습니다.(지속적인 문제 발생 시 문의바랍니다.)");
		}
		model.addAttribute("location","/notice_list.sms");
		return "/admin/result";		
	}
	
	
	@RequestMapping(value="/inquiry_list.sms")
	public String selectInquiryList(
			@RequestParam Map<String, Object> paramMap, 
			Model model){
		//조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null && paramMap.get("startPage").toString().length()!=0 ?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null && paramMap.get("visiblePages").toString().length()!=0?Integer.parseInt(paramMap.get("visiblePages").toString()):13);
        
		// 전체 게시물 수를 가져옴
		int totalCnt = customerService.getSelectInquiryContentCnt(paramMap);
		
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
        
        //jsp에서 보여줄 정보 추출
        model.addAttribute("startPage", startPage+"");//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물 수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
        model.addAttribute("selectInquiryList", customerService.selectInquiryList(paramMap));//검색
        
        return "admin/customercenter/inquiry";
	}
	
	@RequestMapping(value="/inquiry_answer.sms")
	public String selectInquiryAnswer(@RequestParam int postNo, Model model) {
		Inquiry inquiry = customerService.selecetInquiryAnswer(postNo);	
		model.addAttribute("inquiry",inquiry);	
		return "admin/customercenter/inquiry_answer";
	}
	
	@RequestMapping(value="/inquiry_write.sms")
	public void insertInquiryAnswer(@RequestParam int postNo, @RequestParam String answer, HttpServletResponse response) throws IOException {
		int result = customerService.insertInquiryAnswer(postNo,answer);
		if(result>0) {
			System.out.println("문의 답변 작성 성공");
			response.getWriter().print("true");
		} else {
			System.out.println("문의 답변 작성 실패");
			response.getWriter().print("false");
		}
	}
	
	@RequestMapping(value="/inquiry_modify.sms")
	public void updateInquiryAnswer(@RequestParam int postNo, @RequestParam String answer, HttpServletResponse response) throws IOException {
		int result = customerService.updateInquiryAnswer(postNo,answer);
		if(result>0) {
			System.out.println("문의 답변 수정 성공");
			response.getWriter().print("true");
		} else {
			System.out.println("문의 답변 수정 실패");
			response.getWriter().print("false");
		}
	}
	
	@RequestMapping(value="/delChangeFAQ.sms")
	public void delChangeFAQ(@RequestParam int postNo, @RequestParam String delYn, HttpServletResponse response) throws IOException{
		if(delYn.equals("N")) delYn="Y";
		else delYn="N";
		
		FAQ faq = new FAQ();
		faq.setPostNo(postNo);
		faq.setDelYn(delYn);
		
		int result = customerService.delChagneFAQ(faq);
		
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	@RequestMapping(value="/delChangeNotice.sms")
	public void delChangeNotice(@RequestParam int postNo, @RequestParam String delYn, HttpServletResponse response) throws IOException{
		if(delYn.equals("N")) delYn="Y";
		else delYn="N";
		
		Notice n = new Notice();
		n.setPostNo(postNo);
		n.setDelYn(delYn);
		
		int result = customerService.delChagneNotice(n);
		
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
	@RequestMapping(value="/delChangeInquiry.sms")
	public void delChangeInquiry(@RequestParam int postNo, @RequestParam String delYn, HttpServletResponse response) throws IOException{
		if(delYn.equals("N")) delYn="Y";
		else delYn="N";
		
		QnA qna = new QnA();
		qna.setPostNo(postNo);
		qna.setDelYn(delYn);
		
		int result = customerService.delChangeInquiry(qna);
		
		if(result>0){
			response.getWriter().print(true);
		}else{
			response.getWriter().print(false);
		}
	}
	
}
