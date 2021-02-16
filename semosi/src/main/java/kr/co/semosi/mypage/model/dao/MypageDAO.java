package kr.co.semosi.mypage.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.mypage.model.vo.Criteria;
import kr.co.semosi.mypage.model.vo.PageMaker;
import kr.co.semosi.mypage.model.vo.ParentVoucher;
import kr.co.semosi.mypage.model.vo.SitterVoucher;

@Repository(value = "myPageDAO")
public class MypageDAO {

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





}
