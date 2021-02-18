package kr.co.semosi.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Service
@Aspect
public class MemberAOP {

	@Autowired
	@Qualifier("Sha256Util")
	private Sha256Util enc;

	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.insertParentMemberSignup(..))")
	public void parentPasswordEncryprion() {
	}

	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.insertSitterMemberSignup(..))")
	public void sitterPasswordEncryprion() {
	}

	// 로그인 할때
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.selectLoginParent(..))")
	public void parentLoginPointcut() {
	}

	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.selectLoginSitter(..))")
	public void sitterLoginPointcut() {
	}

	// 회원 비밀번호 수정
	
	//부모
	// 회원 비밀번호 변경전 비밀번호 확인
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.selectParentCurrentPwCheck(..))")
	public void parentPwChangeCheckPointcut() {
	}
	// 비밀번호 변경
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.updateParentPw(..))")
	public void parentPwUpdatePointcut() {
	}
	
	//시터
	// 회원 비밀번호 변경전 비밀번호 확인
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.selectSitterCurrentPwCheck(..))")
	public void sitterPwChangeCheckPointcut() {
	}
	// 비밀번호 변경
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.updateSitterPw(..))")
	public void sitterPwUpdatePointcut() {
	}


	//비밀번호 변경
	@Before("sitterPwUpdatePointcut()")
	public void sitterPwUpdatePointcut(JoinPoint jp) throws Exception {
		System.out.println("sitterPwUpdatePointcut [before]");
		this.parentSignupPointcut(jp);
	}

	// 회원 비밀번호 변경전 비밀번호 확인
	@Before("sitterPwChangeCheckPointcut()")
	public void sitterPwChangeCheckPointcut(JoinPoint jp) throws Exception {

		System.out.println("sitterPwChangeCheckPointcut [before]");
		this.parentSignupPointcut(jp);
	}
	
	
	
	
	
	//비밀번호 변경
	@Before("parentPwUpdatePointcut()")
	public void parentPwUpdatePointcut(JoinPoint jp) throws Exception {
		System.out.println("parentPwUpdatePointcut [before]");
		this.parentSignupPointcut(jp);
	}

	// 회원 비밀번호 변경전 비밀번호 확인
	@Before("parentPwChangeCheckPointcut()")
	public void parentPwChangeCheckPointcut(JoinPoint jp) throws Exception {

		System.out.println("parentPwChangeCheckPointcut [before]");
		this.parentSignupPointcut(jp);
	}

	// 회원 로그인
	@Before("parentLoginPointcut()")
	public void parentLoginPointcut(JoinPoint jp) throws Exception {

		System.out.println("parentLoginPointcut [before]");
		this.parentSignupPointcut(jp);
	}

	@Before("sitterLoginPointcut()")
	public void sitterLoginPointcut(JoinPoint jp) throws Exception {

		System.out.println("sitterLoginPointcut [before]");
		this.sitterSignupPointcut(jp);
	}

	@Before("parentPasswordEncryprion()")
	public void parentSignupPointcut(JoinPoint jp) throws Exception {
		// 비밀번호 암호화를 위해 Id/ PW를 추출
		ParentMember pm = ((ParentMember) jp.getArgs()[0]);
		String memberId = pm.getMemberId();
		String memberPw = pm.getMemberPw();

		System.out.println("비밀번호암호화");
		// System.out.println("ID:"+memberId);
		// System.out.println("PW"+memberPw);

		String encryUserPwd = enc.encryData(memberId, memberPw);

		pm.setMemberPw(encryUserPwd); // 암호화 된 데이터를 객체에 넣어줌
		return;

	}

	@Before("sitterPasswordEncryprion()")
	public void sitterSignupPointcut(JoinPoint jp) throws Exception {
		System.out.println("sitterSignupPointcut [before]");
		// 비밀번호 암호화를 위해 Id/ PW를 추출
		SitterMember sm = ((SitterMember) jp.getArgs()[0]);
		String memberId = sm.getMemberId();
		String memberPw = sm.getMemberPw();

		System.out.println("비밀번호암호화");
		// System.out.println("ID:"+memberId);
		// System.out.println("PW:"+memberPw);

		String encryUserPwd = enc.encryData(memberId, memberPw);

		sm.setMemberPw(encryUserPwd); // 암호화 된 데이터를 객체에 넣어줌

		return;

	}

}
