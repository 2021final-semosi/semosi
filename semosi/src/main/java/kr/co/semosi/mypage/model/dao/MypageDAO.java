package kr.co.semosi.mypage.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;
import kr.co.semosi.mypage.model.vo.ApplicationReceived;
import kr.co.semosi.mypage.model.vo.FamilyDocu;
import kr.co.semosi.mypage.model.vo.HealthDocu;
import kr.co.semosi.mypage.model.vo.PageMaker;
import kr.co.semosi.mypage.model.vo.ParentVoucher;
import kr.co.semosi.mypage.model.vo.QnA;
import kr.co.semosi.mypage.model.vo.ResidentDocu;
import kr.co.semosi.mypage.model.vo.SitterVoucher;
import kr.co.semosi.mypage.model.vo.TeacherDocu;

@Repository("mypageDAO")
public class MypageDAO {
	
	///////////////////////
	//승규
	
	public int updateParentFrofile(SqlSessionTemplate sqlSession, ParentMember pMember) {
		System.out.println("[MypageDAO] : 정상 호출");
		int result = sqlSession.update("parentMember.updateParentFrofile", pMember);

		System.out.println(result);
		return result;
	}

	public int updateSitterFrofile(SqlSessionTemplate sqlSession, SitterMember sMember) {
		System.out.println("[MypageDAO] : 정상 호출");
		int result = sqlSession.update("sitterMember.updateSitterFrofile", sMember);

		System.out.println(result);
		return result;
	}

	public void seletParentReviewReceive(SqlSessionTemplate sqlSession, String memberNo) {
		System.out.println("[MypageDAO]: 정상호출");
		sqlSession.selectList("ParentReceiveReview.seletParentReviewReceive", memberNo);

	}
	
	
	
	
	//////////////////////////////////////////////////////////////////////////
	//혜린
	
	public int selectParentVoucherTotalCount(SqlSessionTemplate sqlSession, String memberNo) {
		int result = sqlSession.selectOne("parentVoucher.selectVoucherTotalCount", memberNo);
		return result;
	}

	public List<ParentVoucher> selectParentVoucherList(SqlSession sqlSession, PageMaker pageMaker) {
		List<ParentVoucher> list = sqlSession.selectList("parentVoucher.selectVoucherList", pageMaker);
		return list;

	}

	public int selectSitterVoucherTotalCount(SqlSessionTemplate sqlSession, String memberNo) {
		int result = sqlSession.selectOne("sitterVoucher.selectVoucherTotalCount", memberNo);
		return result;
	}

	public List<SitterVoucher> selectSitterVoucherList(SqlSessionTemplate sqlSession, PageMaker pageMaker) {
		List<SitterVoucher> list = sqlSession.selectList("sitterVoucher.selectVoucherList", pageMaker);
		return list;
	}

	public int selectParentQnATotalCount(SqlSessionTemplate sqlSession, String memberNo) {
		int result = sqlSession.selectOne("myPageQnA.selectParentQnATotalCount", memberNo);
		return result;
	}

	public List<QnA> selectParentQnAList(SqlSessionTemplate sqlSession, PageMaker pageMaker) {
		List<QnA> list = sqlSession.selectList("myPageQnA.selectParentQnAList", pageMaker);
		System.out.println("[mypageDAO] qna 값 - 번호 : "+list.get(0).getPostNo()+" / 제목 : "+list.get(0).getTitle()+" / 작성자 : "+list.get(0).getWriterPNo()+" / 작성일  : "+list.get(0).getWriteDate());

		return list;
	}

	public int selectSitterQnATotalCount(SqlSessionTemplate sqlSession, String memberNo) {
		int result = sqlSession.selectOne("myPageQnA.selectSitterQnATotalCount", memberNo);
		return result;
	}

	public List<QnA> selectSitterQnAList(SqlSessionTemplate sqlSession, PageMaker pageMaker) {
		List<QnA> list = sqlSession.selectList("myPageQnA.selectSitterQnAList", pageMaker);
		return list;
	}

	public ResidentDocu selectResiDocu(SqlSessionTemplate sqlSession, String memberNo) {
		ResidentDocu resiDocu = sqlSession.selectOne("certification.selectResiDocu", memberNo);
		return resiDocu;
	}

	public HealthDocu selectHealthDocu(SqlSessionTemplate sqlSession, String memberNo) {
		HealthDocu healthDocu = sqlSession.selectOne("certification.selectHealthDocu", memberNo);
		return healthDocu;
	}

	public FamilyDocu selectFamilyDocu(SqlSessionTemplate sqlSession, String memberNo) {
		FamilyDocu familyDocu = sqlSession.selectOne("certification.selectFamilyDocu", memberNo);
		return familyDocu;
	}

	public TeacherDocu selectTeacherDocu(SqlSessionTemplate sqlSession, String memberNo) {
		TeacherDocu teacherDocu = sqlSession.selectOne("certification.selectTeacherDocu", memberNo);
		return teacherDocu;
	}

	public ArrayList<ApplicationReceived> selectApplicationReceive(SqlSessionTemplate sqlSession, String membersNo) {
		List list=sqlSession.selectList("sitterMember.selectApplicationReceived", membersNo);
		
		return (ArrayList<ApplicationReceived>)list;
	}
	
	
	
}