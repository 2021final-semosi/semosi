package kr.or.semosi.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.member.model.vo.ParentMember;

@Service
@Aspect
public class MemberAOP {

	@Autowired
	@Qualifier("Sha26Util")
	private Sha256Util enc;

	
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberServiceImpl.selectLoginParent(..))")
	public void ParentLoginPointcut(){}
	
	@Pointcut("execution(* kr.co.semosi.member.model.service.MemberServiceImpl.selectLoginSitter(..))")
	public void SitterLoginPointcut(){}
	
	
	@Before("ParentLoginPointcut()")
	public void ParentLoginPasswordEncryprion(JoinPoint jp) throws Exception 
	{
		
		System.out.println("되니?????????????????");
		
		//비밀번호 암호화를 위해 Id/ PW를 추출
		ParentMember pm = ((ParentMember)jp.getArgs()[0]);
		String memberId = pm.getMemberId();
		String memberPw = pm.getMemberPw();

		System.out.println("비밀번호암호화");
		System.out.println(jp);
		System.out.println(pm);
		System.out.println(memberId);
		System.out.println(memberPw);
		
	}
	
	@Before("SitterLoginPointcut()")
	public void SitterLoginPasswordEncryprion(JoinPoint jp) throws Exception 
	{
		
		
	}
	
}
