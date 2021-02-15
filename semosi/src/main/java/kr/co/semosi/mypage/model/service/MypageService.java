package kr.co.semosi.mypage.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.jobsearch.model.dao.JobsearchDAO;
import kr.co.semosi.mypage.model.dao.MypageDAO;

@Service("MypageService")
public class MypageService {
	
	@Autowired
	@Qualifier(value="MypageDAO")
	private MypageDAO myDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	

	
}
