package kr.co.semosi.jobsearch.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.jobsearch.model.vo.JobSearchList;

@Repository("jobsearchDAO")
public class JobsearchDAO {

	public ArrayList<JobSearchList> selectOfferAllList(SqlSessionTemplate sqlSession, int page) {
		System.out.println("[JobsearchDAO : selectOfferAllList] 호출 성공");
		
		List list=sqlSession.selectList("jobsearch.selectOfferAllList", page);
		
		return (ArrayList<JobSearchList>)list;
	}

}
