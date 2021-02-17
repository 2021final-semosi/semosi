package kr.co.semosi.joboffer.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.joboffer.model.dao.JobofferDAO;
import kr.co.semosi.joboffer.model.vo.JobOfferApply;
import kr.co.semosi.joboffer.model.vo.JobOfferList;
import kr.co.semosi.joboffer.model.vo.JobOfferPost;

@Service("jobofferService")
public class JobofferService {

	@Autowired
	@Qualifier(value="jobofferDAO")
	private JobofferDAO jDAO;
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	public ArrayList<JobOfferList> selectSearchAllList(int page) {
		System.out.println("[JobofferService : selectSearchAllList] 호출 성공");
		
		ArrayList<JobOfferList> list=jDAO.selectSearchAllList(sqlSession, page);
		
		return list;
	}

	public JobOfferPost selectOneSearchPost(String postNo) {
		System.out.println("[JobofferService : selectOneSearchPost] 호출 성공");
		
		JobOfferPost jop=jDAO.selectOneSearchPost(sqlSession, postNo);
		
		return jop;
	}

	public int insertOfferApply(JobOfferApply joa) {
		System.out.println("[JobofferService : insertOfferApply] 호출 성공");
		
		int result=jDAO.insertOfferApply(sqlSession, joa);
		
		return result;
	}
}
