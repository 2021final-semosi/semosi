package kr.co.semosi.mypage.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;
import kr.co.semosi.mypage.model.vo.PageMaker;
import kr.co.semosi.mypage.model.vo.ParentVoucher;
import kr.co.semosi.mypage.model.vo.QnA;
import kr.co.semosi.mypage.model.vo.SitterVoucher;

@Repository("mypageDAO")
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


	public void seletParentReviewReceive(SqlSessionTemplate sqlSession, String memberNo) {
		System.out.println("[MypageDAO]: 정상호출");
		sqlSession.selectList("ParentReceiveReview.seletParentReviewReceive", memberNo);
		
	}


	public int selectParentQnATotalCount(SqlSessionTemplate sqlSession, String memberNo) {
  		int result = sqlSession.selectOne("myPageQnA.selectParentQnATotalCount", memberNo);
  		return result;
	}

	public List<QnA> selectParentQnAList(SqlSessionTemplate sqlSession, PageMaker pageMaker) {
  		List<QnA> list = sqlSession.selectList("myPageQnA.selectParentQnAList", pageMaker);
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
	
	
}