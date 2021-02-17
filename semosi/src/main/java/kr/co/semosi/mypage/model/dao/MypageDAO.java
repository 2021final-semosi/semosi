package kr.co.semosi.mypage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Repository("MypageDAO")
public class MypageDAO {

	public int updateParentFrofile(SqlSessionTemplate sqlSession, ParentMember pMember) {
		System.out.println("[MypageDAO] : 정상 호출");
		int result= sqlSession.update("parentMember.updateParentFrofile", pMember);
		
		System.out.println(result);
		return result;
	}

		public int updateSitterFrofile(SqlSessionTemplate sqlSession, SitterMember sMember) {
		System.out.println("[MypageDAO] : 정상 호출");
		int result= sqlSession.update("sitterMember.updateSitterFrofile", sMember);
		
		System.out.println(result);
		return result;
	}





}
