package kr.co.semosi.admin.main.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.co.semosi.admin.customer.model.vo.QnA;
import kr.co.semosi.admin.job.model.vo.AdminOffer;
import kr.co.semosi.admin.job.model.vo.AdminSearch;
import kr.co.semosi.admin.main.model.dao.AdminMainDAO;

@Service("adminMainService")
public class AdminMainService {
    
    @Resource(name="adminMainDAO")
    private AdminMainDAO maDAO;
    
    @Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSession;

    public List<AdminOffer> selectOfferMainList() {
	return maDAO.selectOfferMainList(sqlSession);

    }

    public List<AdminSearch> selectSearchMainList() {
	return maDAO.selectSearchMainList(sqlSession);
	
    }

    public List<QnA> selectInquiryMainList() {
	return maDAO.selectInquiryMainList(sqlSession);
    }

}
