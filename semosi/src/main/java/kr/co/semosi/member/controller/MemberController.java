package kr.co.semosi.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.semosi.member.model.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping(value="/memberLogin.do")
	public String memberLogin()
	{
		System.out.println("[/memberLogin.do] 정상적으로 호출되었습니다.");
		return "member/MemberLogin";
	}
	
}
