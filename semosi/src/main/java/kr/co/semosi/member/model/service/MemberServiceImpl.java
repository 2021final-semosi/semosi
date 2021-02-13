package kr.co.semosi.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.member.model.dao.MemberDAO;
import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	@Qualifier(value="memberDAO")
	private MemberDAO mDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ParentMember selectLoginParent(ParentMember pm) {
		
		System.out.println("[MemberServiceImpl] selectLoginParent 메소드 호출");
		ParentMember pMember = mDAO.selectLoginParent(sqlSession, pm);
		
		return pMember;
	}

	@Override
	public SitterMember selectLoginSitter(SitterMember sm) {
		System.out.println("[MemberServiceImpl] selectLoginSitter 메소드 호출");
		SitterMember sMember = mDAO.selectLoginSitter(sqlSession, sm);
		
		return sMember;
	}

	public int selectMemberIdCheck(String memberId) {
		System.out.println("[MemberServiceImpl] selectMemberIdCheck 메소드 호출");
		
		//parent 테이블과 sitter 테이블 두개 다 확인하여야 함 
		ParentMember pMember = mDAO.selectMemberParentIdCheck(sqlSession,memberId); //부모 회원 테이블 확인
		SitterMember sMember = mDAO.selectMemberSitterIdCheck(sqlSession,memberId); //시터 회원 테이블 확인
		
		
		//결과 전달을 위한 구문 
		int result = 0;
		
		//둘 중에 하나라도 일치하는 id가 있다면 result>0 이고
		//일치하는 아이디가 없다면 result==0
		if(pMember!=null){
			result++;
		}else if(sMember!=null){
			result++;
		}
		
		return result;
		
	}

}
