package kr.co.semosi.admin.main.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.admin.customer.model.vo.QnA;
import kr.co.semosi.admin.job.model.vo.AdminOffer;
import kr.co.semosi.admin.job.model.vo.AdminSearch;

@Repository("adminMainDAO")
public class AdminMainDAO {

    public List<AdminOffer> selectOfferMainList(SqlSessionTemplate sqlSession) {
	return sqlSession.selectList("main.selectOfferMainList");
    }

    public List<AdminSearch> selectSearchMainList(SqlSessionTemplate sqlSession) {
	return sqlSession.selectList("main.selectSearchMainList");
    }

    public List<QnA> selectInquiryMainList(SqlSessionTemplate sqlSession) {
	return sqlSession.selectList("main.selectInquiryMainList");
    }
}
