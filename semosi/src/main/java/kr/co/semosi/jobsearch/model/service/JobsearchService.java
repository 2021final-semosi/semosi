package kr.co.semosi.jobsearch.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.joboffer.model.vo.JobOfferPost;
import kr.co.semosi.jobsearch.model.dao.JobsearchDAO;
import kr.co.semosi.jobsearch.model.vo.JobSearchList;

@Service("jobsearchService")
public class JobsearchService {

	@Autowired
	@Qualifier(value="jobsearchDAO")
	private JobsearchDAO jDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	public ArrayList<JobSearchList> selectOfferAllList(int page) {
		System.out.println("[JobsearchService : selectOfferAllList] 호출 성공");
		
		ArrayList<JobSearchList> list=jDAO.selectOfferAllList(sqlSession, page);
		
		return list;
	}

	public JobSearchList selectOneJobPost(String memberPNo) {
		System.out.println("[JobofferService : selectOneJobPost] 호출 성공");
		
		JobSearchList jsp=jDAO.selectOneJobPost(sqlSession, memberPNo);
		
		return jsp;
	}

}
