package kr.co.semosi.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.member.model.vo.Authentication;
import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Repository(value = "memberDAO")
public class MemberDAO {

	public ParentMember selectLoginParent(SqlSessionTemplate sqlSession, ParentMember pm) {
		ParentMember pMember = sqlSession.selectOne("parentMember.selectLogin", pm);
		return pMember;

	}

	public SitterMember selectLoginSitter(SqlSessionTemplate sqlSession, SitterMember sm) {
		SitterMember sMember = sqlSession.selectOne("sitterMember.selectLogin", sm);
		return sMember;
	}

	public ParentMember selectMemberParentIdCheck(SqlSessionTemplate sqlSession, String memberId) {
		ParentMember pMember = sqlSession.selectOne("parentMember.selectIdCheck", memberId);
		return pMember;
	}

	public SitterMember selectMemberSitterIdCheck(SqlSessionTemplate sqlSession, String memberId) {
		SitterMember sMember = sqlSession.selectOne("sitterMember.selectIdCheck", memberId);
		return sMember;
	}

	public int insertAuthenticationNum(SqlSessionTemplate sqlSession, int random) {
		int result = sqlSession.insert("authentication.insertNumber", random);
		return result;
	}

	public boolean selectAuthenticationNum(SqlSessionTemplate sqlSession, int checkNumber) {
		System.out.println(checkNumber);
		Authentication authen = sqlSession.selectOne("authentication.selectNumber", checkNumber);

		boolean result = false;

		if (authen != null) { // 일치한다면
			result = true;
		}
		return result;
	}

	public int deleteAuthenticationNum(SqlSessionTemplate sqlSession, int checkNumber) {

		int result = sqlSession.delete("authentication.deleteNumber", checkNumber);
		System.out.println(result);
		return result;
	}

	public ParentMember selectParentMemberPhoneCheck(SqlSessionTemplate sqlSession, String phone) {
		ParentMember pMember = sqlSession.selectOne("parentMember.selectPhoneCheck", phone);
		return pMember;
	}
	public SitterMember selectSitterMemberPhoneCheck(SqlSessionTemplate sqlSession, String phone) {
		SitterMember sMember = sqlSession.selectOne("sitterMember.selectPhoneCheck", phone);
		return sMember;
	}
	
	public int insertParentMemberSignup(SqlSessionTemplate sqlSession, ParentMember pMember) {
		int result = sqlSession.insert("parentMember.memberSignup", pMember);
		return result;
	}

	public int insertSitterMemberSignup(SqlSessionTemplate sqlSession, SitterMember sMember) {
		int result = sqlSession.insert("sitterMember.memberSignup", sMember);
		return result;
	}

	public int insertParentVoucher7Days(SqlSessionTemplate sqlSession, String memberNo) {
		int result = sqlSession.insert("parentMember.7daysVoucher", memberNo);
		return result;
	}

	public int insertParentVoucher14Days(SqlSessionTemplate sqlSession, String memberNo) {
		int result = sqlSession.insert("parentMember.14daysVoucher", memberNo);
		return result;
	}

	public int insertParentVoucher30Days(SqlSessionTemplate sqlSession, String memberNo) {
		int result = sqlSession.insert("parentMember.30daysVoucher", memberNo);
		return result;
	}

	public int insertSitterVoucher7Days(SqlSessionTemplate sqlSession, String memberNo) {
		int result = sqlSession.insert("sitterMember.7daysVoucher", memberNo);
		return result;
	}

	public int insertSitterVoucher14Days(SqlSessionTemplate sqlSession, String memberNo) {
		int result = sqlSession.insert("sitterMember.14daysVoucher", memberNo);
		return result;
	}

	public int insertSitterVoucher30Days(SqlSessionTemplate sqlSession, String memberNo) {
		int result = sqlSession.insert("sitterMember.30daysVoucher", memberNo);
		return result;
	}

	public ParentMember selectParentCurrentPwCheck(SqlSessionTemplate sqlSession, ParentMember sessionMember) {
		ParentMember pMember = sqlSession.selectOne("parentMember.selectCurrentPwCheck", sessionMember);
		return pMember;
	}

	public int updateParentPw(SqlSessionTemplate sqlSession, ParentMember sessionMember) {
		int result = sqlSession.update("parentMember.updatePw",sessionMember);
		return result;
	}

	public SitterMember selectSitterCurrentPwCheck(SqlSessionTemplate sqlSession, SitterMember sessionMember) {
		SitterMember sMember = sqlSession.selectOne("sitterMember.selectCurrentPwCheck", sessionMember);
		return sMember;
	}

	public int updateSitterPw(SqlSessionTemplate sqlSession, SitterMember sessionMember) {
		int result = sqlSession.update("sitterMember.updatePw",sessionMember);
		return result;
	}

	public ParentMember selectParentMemberIdFind(SqlSessionTemplate sqlSession, String phone) {
		ParentMember pMember = sqlSession.selectOne("parentMember.selectMemberIdFind", phone);
		return pMember;
		
	}

	public SitterMember selectSitterMemberIdFind(SqlSessionTemplate sqlSession, String phone) {
		SitterMember sMember = sqlSession.selectOne("sitterMember.selectMemberIdFind", phone);
		return sMember;
	}




}
