package kr.co.semosi.mypage.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.mypage.model.dao.MypageDAO;
import kr.co.semosi.mypage.model.vo.PageMaker;
import kr.co.semosi.mypage.model.vo.ParentVoucher;
import kr.co.semosi.mypage.model.vo.SitterVoucher;

@Service("myPageService")
public class MypageService {
	
	@Autowired
	@Qualifier(value="myPageDAO")
	private MypageDAO myDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	//부모 이용권 조희 페이징 처리
	public int selectParentVoucherTotalCount(String memberNo) {
		int result = myDAO.selectParentVoucherTotalCount(sqlSession, memberNo);
		return result;
	}

	public List<ParentVoucher> selectParentVoucherList(PageMaker pageMaker) {
		List<ParentVoucher> list = myDAO.selectParentVoucherList(sqlSession, pageMaker);
		return list;
	}

	//시터 이용권 조회 페이징 처리
	public int selectSitterVoucherTotalCount(String memberNo) {
		int result = myDAO.selectSitterVoucherTotalCount(sqlSession, memberNo);
		return result;
	}

	public List<SitterVoucher> selectSitterVoucherList(PageMaker pageMaker) {
		List<SitterVoucher> list = myDAO.selectSitterVoucherList(sqlSession, pageMaker);
		return list;
	}


	
}
