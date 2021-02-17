package kr.co.semosi.mypage.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;
import kr.co.semosi.mypage.model.dao.MypageDAO;
import kr.co.semosi.mypage.model.vo.ApplicationReceived;
import kr.co.semosi.mypage.model.vo.FamilyDocu;
import kr.co.semosi.mypage.model.vo.HealthDocu;
import kr.co.semosi.mypage.model.vo.PageMaker;
import kr.co.semosi.mypage.model.vo.ParentVoucher;
import kr.co.semosi.mypage.model.vo.QnA;
import kr.co.semosi.mypage.model.vo.ResidentDocu;
import kr.co.semosi.mypage.model.vo.SitterVoucher;
import kr.co.semosi.mypage.model.vo.TeacherDocu;

@Service("mypageService")
public class MypageService {

	@Autowired
	@Qualifier(value = "mypageDAO")
	private MypageDAO myDAO;

	@Autowired
	@Qualifier(value = "sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	

	//////////////////////////////////////////////////////////////////////////
	// 승규

	public int updateParentFrofile(ParentMember pMember) {
		System.out.println("[MypageService]: 정상호출");
		int result = myDAO.updateParentFrofile(sqlSession, pMember);

		return result;

	}

	public int updateSitterFrofile(SitterMember sMember) {
		System.out.println("[MypageService]: 정상호출");
		int result = myDAO.updateSitterFrofile(sqlSession, sMember);

		return result;

	}

	// 부모 리뷰작성 조회
	public void seletParentReviewReceive(String memberNo) {
		System.out.println("[MypageService]: 정상호출");
		myDAO.seletParentReviewReceive(sqlSession, memberNo);

		return;

	}

	//////////////////////////////////////////////////////////////////////////
	// 혜린

	// 부모 이용권 조희 페이징 처리
	public int selectParentVoucherTotalCount(String memberNo) {
		int result = myDAO.selectParentVoucherTotalCount(sqlSession, memberNo);
		return result;
	}

	public List<ParentVoucher> selectParentVoucherList(PageMaker pageMaker) {
		List<ParentVoucher> list = myDAO.selectParentVoucherList(sqlSession, pageMaker);
		return list;
	}

	// 시터 이용권 조회 페이징 처리
	public int selectSitterVoucherTotalCount(String memberNo) {
		int result = myDAO.selectSitterVoucherTotalCount(sqlSession, memberNo);
		return result;
	}

	public List<SitterVoucher> selectSitterVoucherList(PageMaker pageMaker) {
		List<SitterVoucher> list = myDAO.selectSitterVoucherList(sqlSession, pageMaker);
		return list;
	}

	// 부모 문의 내역
	public int selectParentQnATotalCount(String memberNo) {
		int result = myDAO.selectParentQnATotalCount(sqlSession, memberNo);
		return result;
	}

	public List<QnA> selectParentQnAList(PageMaker pageMaker) {
		List<QnA> list = myDAO.selectParentQnAList(sqlSession, pageMaker);
		return list;
	}

	public int selectSitterQnATotalCount(String memberNo) {
		int result = myDAO.selectSitterQnATotalCount(sqlSession, memberNo);
		return result;
	}

	public List<QnA> selectSitterQnAList(PageMaker pageMaker) {
		List<QnA> list = myDAO.selectSitterQnAList(sqlSession, pageMaker);
		return list;
	}

	public ResidentDocu selectResiDocu(String memberNo) {
		System.out.println("[MyPageService] selectResiDocu 메소드 호출");
		ResidentDocu resiDocu = myDAO.selectResiDocu(sqlSession, memberNo);

		return resiDocu;
	}

	public HealthDocu selectHealthDocu(String memberNo) {
		System.out.println("[MyPageService] selectHealthDocu 메소드 호출");
		HealthDocu healthDocu = myDAO.selectHealthDocu(sqlSession, memberNo);

		return healthDocu;
	}

	public FamilyDocu selectFamilyDocu(String memberNo) {
		System.out.println("[MyPageService] selectFamilyDocu 메소드 호출");
		FamilyDocu familyDocu = myDAO.selectFamilyDocu(sqlSession, memberNo);

		return familyDocu;
	}

	public TeacherDocu selectTeacherDocu(String memberNo) {
		System.out.println("[MyPageService] selectTeacherDocu 메소드 호출");
		TeacherDocu teacherDocu = myDAO.selectTeacherDocu(sqlSession, memberNo);

		return teacherDocu;
	}
	
	public ArrayList<ApplicationReceived> selectApplicationReceive(String membersNo) {
		ArrayList<ApplicationReceived> list=myDAO.selectApplicationReceive(sqlSession, membersNo);
		
		return list;
	}
}