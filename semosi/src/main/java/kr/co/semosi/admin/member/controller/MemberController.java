package kr.co.semosi.admin.member.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.semosi.admin.member.model.service.MemberService;
import kr.co.semosi.admin.member.model.vo.CertifyView;
import kr.co.semosi.admin.member.model.vo.MemberP;
import kr.co.semosi.admin.member.model.vo.MemberS;

@Controller
public class MemberController {

    @Resource(name = "memberService")
    private MemberService mService;

    @RequestMapping(value = "/memberLogin.sms")
    public String memberLogin(@RequestParam String memberId, @RequestParam String memberPw, HttpSession session,
	    Model model) {
	System.out.println("[MemberLogin.sms]" + memberId + " / " + memberPw);

	MemberP mp = new MemberP();
	mp.setMemberId(memberId);
	mp.setMemberPw(memberPw);

	MemberP memberP = mService.loginMember(mp);

	if (memberP != null) {
	    session.setAttribute("member", memberP);
	    return "redirect:/main.sms";
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

    @RequestMapping(value = "/memberp_board.sms")
    public String memberPList(@RequestParam Map<String, Object> paramMap,
	    @RequestParam(defaultValue = "all") String category, @RequestParam(defaultValue = " ") String keyword, Model model) {

	// 조회 하려는 페이지
	int startPage = (paramMap.get("startPage") != null && paramMap.get("startPage").toString().length() != 0 ? Integer.parseInt(paramMap.get("startPage").toString()) : 1);
	// 한페이지에 보여줄 리스트 수
	int visiblePages = (paramMap.get("visiblePages") != null && paramMap.get("visiblePages").toString().length() != 0 ? Integer.parseInt(paramMap.get("visiblePages").toString()) : 13);
	//검색
	paramMap.put("category", category);
	paramMap.put("keyword", keyword);
	
	// 일단 전체 건수를 가져온다.
	int totalPCnt = mService.getMemberPCnt(paramMap);

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
	model.addAttribute("memberPList", mService.memberPList(paramMap));

	return "admin/member/memberp_board";
    }

    @RequestMapping(value = "/members_board.sms")
    public String memberSList(@RequestParam Map<String, Object> paramMap,
	    @RequestParam(defaultValue = "all") String category, @RequestParam(defaultValue = " ") String keyword,
	    Model model) {

	// 조회 하려는 페이지
	int startPage = (paramMap.get("startPage") != null && paramMap.get("startPage").toString().length() != 0 ? Integer.parseInt(paramMap.get("startPage").toString()) : 1);
	// 한페이지에 보여줄 리스트 수
	int visiblePages = (paramMap.get("visiblePages") != null && paramMap.get("visiblePages").toString().length() != 0 ? Integer.parseInt(paramMap.get("visiblePages").toString()) : 13);
	
	//검색
	paramMap.put("category", category);
	paramMap.put("keyword", keyword);
	
	// 일단 전체 건수를 가져온다.
	int totalSCnt = mService.getMemberSCnt(paramMap);

	BigDecimal decimal1 = new BigDecimal(totalSCnt);
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
	model.addAttribute("totalSCnt", totalSCnt);// 전체 게시물수
	model.addAttribute("totalPage", totalPage);// 페이지 네비게이션에 보여줄 리스트 수
	model.addAttribute("memberSList", mService.memberSList(paramMap));// 검색

	return "admin/member/members_board";
    }
    
    @RequestMapping(value = "/memberPEndYn.sms")
    public String memberPEndYn(@RequestParam String memberId, @RequestParam char endYn, HttpServletResponse response) throws IOException{
	MemberP mp = new MemberP();
	mp.setMemberId(memberId);
	mp.setEndYn(endYn);
	System.out.println(mp.getMemberId());
	System.out.println(mp.getEndYn());
	int result = mService.memberPEndYn(mp); 
	
	if(result>0){
	    System.out.println("정보 변경 성공");
	    response.getWriter().print(true);
	}else{
	    System.out.println("정보 변경 실패");
	    response.getWriter().print(false);
	}
	return null;
    }

    @RequestMapping(value = "/memberSEndYn.sms")
    public String memberSEndYn(@RequestParam String memberId, @RequestParam char endYn, HttpServletResponse response) throws IOException{
	MemberS ms = new MemberS();
	ms.setMemberId(memberId);
	ms.setEndYn(endYn);
	System.out.println(ms.getMemberId());
	System.out.println(ms.getEndYn());
	int result = mService.memberSEndYn(ms); 
	
	if(result>0){
	    System.out.println("정보 변경 성공");
	    response.getWriter().print(true);
	}else{
	    System.out.println("정보 변경 실패");
	    response.getWriter().print(false);
	}
	return null;
    }

    @RequestMapping(value = "/individual_certification.sms")
    public String individualCertification(@RequestParam("memberS_No") String membersNo, Model model) {
	System.out.println(membersNo);
	CertifyView certifyview = mService.inCertify(membersNo);
	model.addAttribute("certifyview", certifyview);
	return "admin/member/in_certification";
    }

    @RequestMapping(value = "/documentCretYN.sms")
    public String documentCretYN(@RequestParam String imageNo, HttpServletResponse response) throws IOException {

	// 잠시 코드 약간 수정해서 테스트만 해보겠습니다.

	int result = mService.documentCretYN(imageNo);
	System.out.println(imageNo); // 출력

	System.out.println(imageNo); // 출력

	if (result > 0) {
	    System.out.println("성공");
	    response.getWriter().print(true);
	} else {
	    System.out.println("실패");
	    response.getWriter().print(false);
	}

	return null;
    }
}
