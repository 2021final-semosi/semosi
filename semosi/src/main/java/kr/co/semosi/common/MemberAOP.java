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

	public MemberAOP(){
		System.out.println("AOP 객체 만들어지는지 확인 테스트 코드");
	}
	
	@Autowired
	@Qualifier("Sha256Util")
	private Sha256Util enc;

	
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.insertParentMemberSignup(..))")
	public void parentPasswordEncryprion(){}
	
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.insertSitterMemberSignup(..))")
	public void sitterPasswordEncryprion(){}  
	
	//로그인 할때 
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.selectLoginParent(..))")
	public void parentLoginPointcut(){}
	
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberService.selectLoginSitter(..))")
	public void sitterLoginPointcut(){}
	
	
	//회원 비밀번호 수정 할 때 -> 추후 구현 
	
	
	
	@Before("parentLoginPointcut()")
	public void parentLoginPointcut(JoinPoint jp) throws Exception 
	{
		this.parentSignupPointcut(jp);
	}
	
	
	@Before("sitterLoginPointcut()")
	public void sitterLoginPointcut(JoinPoint jp) throws Exception 
	{
		this.sitterSignupPointcut(jp);
	}
	
	@Before("parentPasswordEncryprion()") 
	public void parentSignupPointcut(JoinPoint jp) throws Exception 
	{
		System.out.println("parentSignupPointcut [before]");
		//비밀번호 암호화를 위해 Id/ PW를 추출
		ParentMember pm = ((ParentMember)jp.getArgs()[0]);
		String memberId = pm.getMemberId();
		String memberPw = pm.getMemberPw();

		System.out.println("비밀번호암호화");
		//System.out.println("ID:"+memberId);
		//System.out.println("PW"+memberPw);
		
		String encryUserPwd = enc.encryData(memberId, memberPw);
		
		pm.setMemberPw(encryUserPwd); // 암호화 된 데이터를 객체에 넣어줌
		return ;
		
	}
	
	@Before("sitterPasswordEncryprion()")
	public void sitterSignupPointcut(JoinPoint jp) throws Exception 
	{
		System.out.println("sitterSignupPointcut [before]");
		//비밀번호 암호화를 위해 Id/ PW를 추출
		SitterMember sm = ((SitterMember)jp.getArgs()[0]);
		String memberId = sm.getMemberId();
		String memberPw = sm.getMemberPw();

		System.out.println("비밀번호암호화");
		//System.out.println("ID:"+memberId);
		//System.out.println("PW:"+memberPw);
		
		String encryUserPwd = enc.encryData(memberId, memberPw);
		
		
		sm.setMemberPw(encryUserPwd); // 암호화 된 데이터를 객체에 넣어줌

		return ;
		
	}
	
}
