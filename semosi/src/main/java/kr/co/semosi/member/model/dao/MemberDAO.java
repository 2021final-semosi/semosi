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

}
