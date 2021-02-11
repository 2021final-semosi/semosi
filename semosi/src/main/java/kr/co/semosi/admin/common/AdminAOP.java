package kr.co.semosi.admin.common;

import javax.annotation.Resource;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

import kr.co.semosi.admin.member.model.vo.MemberP;

@Service
@Aspect
public class AdminAOP {
    @Resource(name="sha256Util_salt")
    private Sha256Util_salt enc;
    
    @Pointcut("execution(* kr.co.semosi.admin.member.model.service.*Service.loginMember(..))")
    public void loginPointcut(){}
    
    @Before("loginPointcut()")
    public void memberEncryption(JoinPoint jp) throws Exception{
	this.passwordEncryption(jp);
    }
    
    public void passwordEncryption(JoinPoint jp) throws Exception{
  	MemberP mp = ((MemberP)jp.getArgs()[0]);
  	String memberId = mp.getMemberId();
  	String memberPw = mp.getMemberPw();
  	String encPw = enc.endcryData(memberPw, memberId);
  	mp.setMemberPw(encPw);
  	return;
  	
      }
    
    
    
}
