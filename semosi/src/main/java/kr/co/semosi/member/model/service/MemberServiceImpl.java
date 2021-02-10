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

}
