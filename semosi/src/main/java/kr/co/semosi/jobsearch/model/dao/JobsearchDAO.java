package kr.co.semosi.jobsearch.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.jobsearch.model.vo.JobSearchApply;
import kr.co.semosi.jobsearch.model.vo.JobSearchList;

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

}
