package kr.co.semosi.admin.voucher.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.semosi.admin.voucher.model.service.AdminVoucherService;

@Controller
public class AdminVoucherController {
	@Resource(name="voucherService")
	private AdminVoucherService voucherService;
	
	@RequestMapping(value="/parents_voucher_list.sms")
	public String parentsVoucher(@RequestParam Map<String, Object> paramMap, 
			Model model, @RequestParam(defaultValue = "all") String category, 
			@RequestParam(defaultValue = " ") String keyword) {
		//조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null && paramMap.get("startPage").toString().length()!=0 ?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null && paramMap.get("visiblePages").toString().length()!=0?Integer.parseInt(paramMap.get("visiblePages").toString()):13);
        
		// 전체 게시물 수를 가져옴
		int totalCnt = voucherService.parentsVoucherContentCnt(paramMap);
		
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
        model.addAttribute("parentsVoucher", voucherService.parentsVoucher(paramMap));//검색
        
        return "admin/voucher/voucher_parents";
	}
	
	@RequestMapping(value="/refundRequestP.sms")
	public void refundRequestP(@RequestParam int voucherNo, @RequestParam String phone, HttpServletResponse response) throws IOException {
		int result = voucherService.refundUpdate(voucherNo,phone);
		if(result>0) {
			response.getWriter().print("true");
		} else {
			response.getWriter().print("false");
		}
	}
	
	@RequestMapping(value="/refundRequestS.sms")
	public void refundRequestS(@RequestParam int voucherNo, @RequestParam String phone, HttpServletResponse response) throws IOException {
		int result = voucherService.refundUpdateS(voucherNo,phone);
		if(result>0) {
			response.getWriter().print("true");
		} else {
			response.getWriter().print("false");
		}
	}
	
	@RequestMapping(value="/sitter_voucher_list.sms")
	public String sitterVoucher(@RequestParam Map<String, Object> paramMap, 
			Model model, @RequestParam(defaultValue = "all") String category, 
			@RequestParam(defaultValue = " ") String keyword) {
		//조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null && paramMap.get("startPage").toString().length()!=0 ?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null && paramMap.get("visiblePages").toString().length()!=0?Integer.parseInt(paramMap.get("visiblePages").toString()):13);
        
		// 전체 게시물 수를 가져옴
		int totalCnt = voucherService.sitterVoucherContentCnt(paramMap);
		
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
        model.addAttribute("sitterVoucher", voucherService.sitterVoucher(paramMap));//검색
        
        return "admin/voucher/voucher_sitter";
	}
	
}
