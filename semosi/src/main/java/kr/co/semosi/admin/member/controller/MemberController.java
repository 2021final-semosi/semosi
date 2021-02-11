package kr.co.semosi.admin.member.controller;

import java.math.BigDecimal;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.semosi.admin.member.model.service.MemberService;
import kr.co.semosi.admin.member.model.vo.MemberP;
import kr.co.semosi.admin.member.model.vo.MemberS;

@Controller
public class MemberController {

    @Resource(name = "memberService")
    private MemberService mService;

    @RequestMapping(value = "/memberLogin.sms")
    public String memberLogin(@RequestParam String memberId, @RequestParam String memberPw, HttpSession session, Model model) {
	System.out.println("[MemberLogin.sms]" + memberId + " / " + memberPw);

	MemberP mp = new MemberP();
	mp.setMemberId(memberId);
	mp.setMemberPw(memberPw);

	MemberP memberP = mService.loginMember(mp);

	if (memberP != null) {
	    session.setAttribute("member", memberP);
	    return "admin/admin_main";
	} else {
	    model.addAttribute("msg", "로그인에 실패했습니다. 아이디와 비밀번호를 확인해주세요.");
	    model.addAttribute("location", "/index.jsp");
	    return "admin/result";
	}
    }

    @RequestMapping(value = "/memberLogout.sms")
    public String memberLogout(HttpSession session) {
	session.invalidate();

	return "redirect:/index.jsp";
    }

    @RequestMapping(value = "/main.sms")
    public String main() {
	return "admin/admin_main";
    }
    
    @RequestMapping(value="/member_board.sms")
    public String memberAllList(@RequestParam Map<String, Object> paramMap, Model model){
    
	 //조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null?Integer.parseInt(paramMap.get("visiblePages").toString()):13);
        //일단 전체 건수를 가져온다.
       	int totalPCnt = mService.getMemberPCnt(paramMap);
       	int totalSCnt = mService.getMemberSCnt(paramMap);
        
        BigDecimal decimal1 = new BigDecimal(totalPCnt);
        BigDecimal decimal2 = new BigDecimal(totalSCnt);
        BigDecimal decimal3 = new BigDecimal(visiblePages);
        BigDecimal totalPage = decimal1.divide(decimal3, 0, BigDecimal.ROUND_UP);
        
        int startLimitPage = 0;
        if(startPage==1){
		startLimitPage = 0;
	}else{
		startLimitPage = (startPage-1)+visiblePages;
	}
        
        paramMap.put("start", startLimitPage);
        paramMap.put("end", startLimitPage+visiblePages);
        
        //jsp 에서 보여줄 정보 추출
        model.addAttribute("startPage", startPage+"");//현재 페이지      
        model.addAttribute("totalPCnt", totalPCnt);//전체 게시물수
        model.addAttribute("totalSCnt", totalSCnt);//전체 게시물수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
        model.addAttribute("memberPList", mService.memberPList(paramMap));//검색
        model.addAttribute("memberSList", mService.memberSList(paramMap));//검색
        
        return "admin/member/member_board";
    }
    
    
    
    
    
    
  /*
    @RequestMapping(value = "/individual_certification.do")
    public String individualCertification() {
	return "member/in_certification";
    }

    @RequestMapping(value = "/faq_parent.do")
    public String faqp_board() {
	return "customercenter/faq_parent";
    }

    @RequestMapping(value = "/faq_sitter.do")
    public String faqs_board() {
	return "customercenter/faq_sitter";
    }

    @RequestMapping(value = "/inquiry.do")
    public String inquiry() {
	return "customercenter/inquiry";
    }

    @RequestMapping(value = "/notice.do")
    public String notice() {
	return "customercenter/notice";
    }

    @RequestMapping(value = "/job_offer.do")
    public String offer_board() {
	return "job/job_offer";
    }

    @RequestMapping(value = "/job_offer_page.do")
    public String job_offer_page() {
	return "job/job_offer_page";
    }

    @RequestMapping(value = "/job_search.do")
    public String search_board() {
	return "job/job_search";
    }

    @RequestMapping(value = "/job_search_page.do")
    public String job_search_page() {
	return "job/job_search_page";
    }

    @RequestMapping(value = "/report_board.do")
    public String report_board() {
	return "job/report_board";
    }

    @RequestMapping(value = "/report_board_page.do")
    public String report_board_page() {
	return "job/report_board_page";
    }

    @RequestMapping(value = "/voucher_parent.do")
    public String voucher_parent() {
	return "voucher/voucher_parent";
    }

    @RequestMapping(value = "/voucher_sitter.do")
    public String voucher_sitter() {
	return "voucher/voucher_sitter";
    }

    @RequestMapping(value = "/review.do")
    public String review() {
	return "review/review";
    }

    @RequestMapping(value = "/profile.do")
    public String profile() {
	return "profile";
    }
*/
}
