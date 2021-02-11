package kr.co.semosi.admin.main.model.service;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.co.semosi.admin.main.model.dao.MainDAO;

@Service("mainService")
public class MainService {
    
    @Resource(name="mainDAO")
    private MainDAO maDAO;
    
    @Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSession;

    public void selectJobOfferList() {
	maDAO.selectJobOfferList(sqlSession);
	
    }

    public void selectJobSearchList() {
	maDAO.selectJobSearchList(sqlSession);
	
    }

    public void selectQnAList() {
	maDAO.selectQnAList(sqlSession);
	
    }

}
