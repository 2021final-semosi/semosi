package kr.co.semosi.admin.main.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("mainDAO")
public class MainDAO {

    public void selectJobOfferList(SqlSessionTemplate sqlSession) {
	sqlSession.selectList("job.selectJobOfferList");
	
    }

    public void selectJobSearchList(SqlSessionTemplate sqlSession) {
	// TODO Auto-generated method stub
	
    }

    public void selectQnAList(SqlSessionTemplate sqlSession) {
	// TODO Auto-generated method stub
	
    }

}
