package kr.co.semosi.jobsearch.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.jobsearch.model.dao.JobsearchDAO;
import kr.co.semosi.jobsearch.model.vo.JobSearchApply;
import kr.co.semosi.jobsearch.model.vo.JobSearchList;
import kr.co.semosi.jobsearch.model.vo.JobSearchReview;

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

	public JobSearchList selectOneJobPost(int postNo) {
		System.out.println("[JobofferService : selectOneJobPost] 호출 성공");
		
		JobSearchList jsp=jDAO.selectOneJobPost(sqlSession, postNo);
		
		return jsp;
	}
	
	public int insertSearchApply(JobSearchApply jsa) {
		System.out.println("[JobsearchService : insertSearchApply] 호출 성공");
		
		int result=jDAO.insertSearchApply(sqlSession, jsa);
		
		return result;
	}

	//시터가 작성한 후기 불러오기
	public ArrayList<JobSearchReview> selectSearchReview(String memberpNo) {
		ArrayList<JobSearchReview> list = jDAO.selectSearchReview(sqlSession, memberpNo);
		return list;
	}

	
	//후기 작성하려고 하는데 작성자가 인터뷰 지원한 사람인지
	public int selectOfferApply(int postNo, String writerNo) {
		int result = jDAO.selectOfferApply(sqlSession, postNo, writerNo);
		return result;
	}

	//후기 작성
	public int insertParentReview(String writerNo, String reviewedMemberNo, int grade, String content) {
		int result = jDAO.insertParentReview(sqlSession, writerNo, reviewedMemberNo,grade, content);
		return result;
	}

}
