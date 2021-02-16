package kr.co.semosi.mypage.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.admin.member.model.vo.MemberP;
import kr.co.semosi.mypage.model.dao.MypageDAO;
import kr.co.semosi.mypage.model.vo.Criteria;
import kr.co.semosi.mypage.model.vo.Voucher;

@Service("myPageService")
public class MypageService {
	
	@Autowired
	@Qualifier(value="myPageDAO")
	private MypageDAO myDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	public Object listVoucherCriteria(Criteria cri, String memberNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int listVoucherCountCriteria(Criteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}
/*
	public List<Voucher> selectVoucherList(Criteria cri) {
		return myDAO.selectVoucherList(sqlSession, cri);
	}
*/

	
}
