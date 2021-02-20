package kr.co.semosi.jobsearch.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.jobsearch.model.vo.JobSearchApply;
import kr.co.semosi.jobsearch.model.vo.JobSearchList;
import kr.co.semosi.jobsearch.model.vo.JobSearchReview;

@Repository("jobsearchDAO")
public class JobsearchDAO {

	public ArrayList<JobSearchList> selectOfferAllList(SqlSessionTemplate sqlSession, int page) {
		System.out.println("[JobsearchDAO : selectOfferAllList] 호출 성공");

		List list = sqlSession.selectList("jobsearch.selectOfferAllList", page);

		return (ArrayList<JobSearchList>) list;
	}

	public JobSearchList selectOneJobPost(SqlSessionTemplate sqlSession, int postNo) {
		System.out.println("[JobofferDAO : selectOneJobPost] 호출 성공");

		JobSearchList jsl = sqlSession.selectOne("jobsearch.selectOneJobPost", postNo);
		int result=sqlSession.update("jobsearch.updatePostHitCount", postNo);

		return jsl;
	}
	
	public int insertSearchApply(SqlSessionTemplate sqlSession, JobSearchApply jsa) {
		System.out.println("[JobsearchDAO : insertSearchApply] 호출 성공");
		
		int result=sqlSession.insert("jobsearch.insertSearchApply", jsa);
		
		return result;
	}

	//시터가 작성한 후기 불러오기
	public ArrayList<JobSearchReview> selectSearchReview(SqlSessionTemplate sqlSession, String memberpNo) {
		List list = sqlSession.selectList("jobsearch.selectSearchReview", memberpNo);
		return (ArrayList<JobSearchReview>) list;
	}

	public int selectOfferApply(SqlSessionTemplate sqlSession, int postNo, String writerNo) {
		Map map = new HashMap();
		map.put("postNo", postNo);
		map.put("writerNo", writerNo);
		
		int result = sqlSession.selectOne("jobsearch.selectSearchApply", map);
		return result;
	}
	

	public int insertParentReview(SqlSessionTemplate sqlSession, String writerNo, String reviewedMemberNo, int grade,
			String content) {
		Map map = new HashMap();
		map.put("writerNo", writerNo);
		map.put("reviewedMemberNo", reviewedMemberNo);
		map.put("grade", grade);
		map.put("content", content);
		
		int result = sqlSession.insert("jobsearch.insertParentReview", map);
		return result;
	}
	

}
