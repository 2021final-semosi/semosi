package kr.co.semosi.joboffer.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.joboffer.model.vo.JobOfferList;
import kr.co.semosi.joboffer.model.vo.JobOfferPost;

@Repository("jobofferDAO")
public class JobofferDAO {

	public ArrayList<JobOfferList> selectSearchAllList(SqlSessionTemplate sqlSession, int page) {
		System.out.println("[JobofferDAO : selectSearchAllList] 호출 성공");
		
		List list=sqlSession.selectList("joboffer.selectSearchAllList", page);
		
		return (ArrayList<JobOfferList>)list;
	}

	public JobOfferPost selectOneSearchPost(SqlSessionTemplate sqlSession, String postNo) {
		System.out.println("[JobofferDAO : selectOneSearchPost] 호출 성공");
		
		JobOfferPost jop=sqlSession.selectOne("joboffer.selectOneSearchPost", postNo);
		int result=sqlSession.update("joboffer.updatePostHitCount", postNo);
		
		return jop;
	}
}
