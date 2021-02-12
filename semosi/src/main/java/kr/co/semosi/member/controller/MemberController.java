package kr.co.semosi.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.semosi.member.model.service.MemberServiceImpl;
import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Controller
public class MemberController {

	@Autowired
	@Qualifier(value = "memberService")
	private MemberServiceImpl mService;

	@RequestMapping(value = "/loginPage.sms")
	public String memberLogin() {
		System.out.println("[/loginPage.sms] 정상적으로 호출되었습니다.");
		return "member/memberLogin";
	}

	@RequestMapping(value = "/userMemberLogin.sms")
	public String selectParentLogin(@RequestParam String member, @RequestParam String memberId,
			@RequestParam String memberPw, HttpServletRequest request) {

		System.out.println("[/memberLogin.sms] 정상적으로 호출되었습니다.");
		
		//부모 회원일 때 로그인
		if (member.equals("parent")) {
			ParentMember pm = new ParentMember();
			pm.setMemberId(memberId);
			pm.setMemberPw(memberPw);

			ParentMember pMember = mService.selectLoginParent(pm);

			if (pMember != null) {

				HttpSession session = request.getSession();
				session.setAttribute("pMember", pMember);
				System.out.println("로그인 성공[ 부모 회원 : " + pMember.getMemberId() + "]");
				return "redirect:/index.jsp";
			} else {
				System.out.println("로그인 실패");
				return "member/loginFail";
			}
		

		//시터 회원일 때 로그인 
		} else {
			SitterMember sm = new SitterMember();
			sm.setMemberId(memberId);
			sm.setMemberPw(memberPw);

			SitterMember sMember = mService.selectLoginSitter(sm);

			if (sMember != null) {

				HttpSession session = request.getSession();
				session.setAttribute("sMember", sMember);
				System.out.println("로그인 성공[ 시터 회원 : " + sMember.getMemberId() + "]");
				return "redirect:/index.jsp";
			} else {
				System.out.println("로그인 실패");
				return "member/loginFail";
			}
		}

	}

	@RequestMapping(value = "/logout.sms")
	public String memberLogout(HttpSession session) {
		// spring에선 session객체를 바로 가져올 수 있음!
		session.invalidate();
		return "redirect:/index.jsp";

	}

}
