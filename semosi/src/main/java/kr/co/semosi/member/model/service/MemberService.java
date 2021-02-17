package kr.co.semosi.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.member.model.dao.MemberDAO;
import kr.co.semosi.member.model.vo.Authentication;
import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Service("memberService")
public class MemberService implements MemberServiceInterface {

	@Autowired
	@Qualifier(value = "memberDAO")
	private MemberDAO mDAO;

	@Autowired
	@Qualifier(value = "sqlSessionTemplate")
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

		// parent 테이블과 sitter 테이블 두개 다 확인하여야 함
		ParentMember pMember = mDAO.selectMemberParentIdCheck(sqlSession, memberId); // 부모
																						// 회원
																						// 테이블확인
		SitterMember sMember = mDAO.selectMemberSitterIdCheck(sqlSession, memberId); // 시터
																						// 회원
																						// 테이블
																						// 확인

		// 결과 전달을 위한 구문
		int result = 0;

		// 둘 중에 하나라도 일치하는 id가 있다면 result>0 이고
		// 일치하는 아이디가 없다면 result==0
		if (pMember != null) {
			result++;
		} else if (sMember != null) {
			result++;
		}

		return result;

	}

	public int insertAuthenticationNum(int random) {
		System.out.println("[MemberServiceImpl] insertAuthenticationNum 메소드 호출");

		int result = mDAO.insertAuthenticationNum(sqlSession, random);

		return result;
	}

	public boolean selectAuthenticationNum(int checkNumber) {
		System.out.println("[MemberServiceImpl] selectAuthenticationNum 메소드 호출");

		boolean result = mDAO.selectAuthenticationNum(sqlSession, checkNumber);
		return result;
	}

	public int deleteAuthenticationNum(int checkNumber) {

		System.out.println("[MemberServiceImpl] deleteAuthenticationNum 메소드 호출");
		int result = mDAO.deleteAuthenticationNum(sqlSession, checkNumber);
		return result;

	}

	public int insertParentMemberSignup(ParentMember pMember) {
		System.out.println("[MemberServiceImpl] insertParentMemberSignup 메소드 호출");
		int parentResult = mDAO.insertParentMemberSignup(sqlSession, pMember);
		return parentResult;
	}

	public int insertSitterMemberSignup(SitterMember sMember) {
		System.out.println("[MemberServiceImpl] insertParentMemberSignup 메소드 호출");
		int sitterResult = mDAO.insertSitterMemberSignup(sqlSession, sMember);
		return sitterResult;
	}

	public int insertParentVoucher7Days(String memberNo) {

		System.out.println("[MemberServiceImpl] insertParentVoucher7Days 메소드 호출");
		int result = mDAO.insertParentVoucher7Days(sqlSession, memberNo);
		return result;

	}

	public int insertParentVoucher14Days(String memberNo) {
		System.out.println("[MemberServiceImpl] insertParentVoucher14Days 메소드 호출");
		int result = mDAO.insertParentVoucher14Days(sqlSession, memberNo);
		return result;
	}

	public int insertParentVoucher30Days(String memberNo) {
		System.out.println("[MemberServiceImpl] insertParentVoucher30Days 메소드 호출");
		int result = mDAO.insertParentVoucher30Days(sqlSession, memberNo);
		return result;
	}

	public int insertSitterVoucher7Days(String memberNo) {

		System.out.println("[MemberServiceImpl] insertSitterVoucher7Days 메소드 호출");
		int result = mDAO.insertSitterVoucher7Days(sqlSession, memberNo);
		return result;

	}

	public int insertSitterVoucher14Days(String memberNo) {
		System.out.println("[MemberServiceImpl] insertSitterVoucher14Days 메소드 호출");
		int result = mDAO.insertSitterVoucher14Days(sqlSession, memberNo);
		return result;
	}

	public int insertSitterVoucher30Days(String memberNo) {
		System.out.println("[MemberServiceImpl] insertSitterVoucher30Days 메소드 호출");
		int result = mDAO.insertSitterVoucher30Days(sqlSession, memberNo);
		return result;
	}

}
