package kr.co.semosi.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Repository(value="memberDAO")
public class MemberDAO {

	public ParentMember selectLoginParent(SqlSessionTemplate sqlSession, ParentMember pm) {
		ParentMember pMember = sqlSession.selectOne("parentMember.selectLogin",pm);
		return pMember;
		
	}

	public SitterMember selectLoginSitter(SqlSessionTemplate sqlSession, SitterMember sm) {
		SitterMember sMember = sqlSession.selectOne("sitterMember.selectLogin",sm);
		return sMember;
	}

	public ParentMember selectMemberParentIdCheck(SqlSessionTemplate sqlSession, String memberId) {
		ParentMember pMember = sqlSession.selectOne("parentMember.selectIdCheck",memberId);
		return pMember;
	}

	public SitterMember selectMemberSitterIdCheck(SqlSessionTemplate sqlSession, String memberId) {
		SitterMember sMember = sqlSession.selectOne("sitterMember.selectIdCheck",memberId);
		return sMember;
	}

	public int insertAuthenticationNum(SqlSessionTemplate sqlSession, int random) {
		int result = sqlSession.insert("authentication.insertNumber",random);
		return result;
	}

	public int selectAuthenticationNum(SqlSessionTemplate sqlSession, int checkNumber) {
		
		int result = sqlSession.insert("authentication.selectNumber",checkNumber);
		System.out.println("result ::::" +result);
		return result;
	}

}
