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
import kr.co.semosi.joboffer.model.vo.JobOfferReview;

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
	
	//부모가 작성한 후기 불러오기
	public ArrayList<JobOfferReview> selectSearchReview(String memberSNo) {
		ArrayList<JobOfferReview> list = jDAO.selectSearchReview(sqlSession, memberSNo);
		return list;
		
	}
	

	public int insertOfferApply(JobOfferApply joa) {
		System.out.println("[JobofferService : insertOfferApply] 호출 성공");
		
		int result=jDAO.insertOfferApply(sqlSession, joa);
		
		return result;
	}


	//후기 작성
	public int insertSitterReview(String writerNo, String reviewedMemberNo, int grade, String content) {
		int result = jDAO.insertSitterReview(sqlSession, writerNo, reviewedMemberNo,grade, content);
		return result;
	}

	//후기 작성하려고 하는데 작성자가 인터뷰 지원한 사람인지
	public int selectSearchApply(int postNo, String writerNo) {
		int result = jDAO.selectSearchApply(sqlSession, postNo, writerNo);
		return result;
	}



}
