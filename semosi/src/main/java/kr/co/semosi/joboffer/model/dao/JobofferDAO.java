package kr.co.semosi.joboffer.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.joboffer.model.vo.JobOfferApply;
import kr.co.semosi.joboffer.model.vo.JobOfferList;
import kr.co.semosi.joboffer.model.vo.JobOfferPost;
import kr.co.semosi.joboffer.model.vo.JobOfferReview;

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
	
	//부모가 작성한 후기 불러오기
	public ArrayList<JobOfferReview> selectSearchReview(SqlSessionTemplate sqlSession, String memberSNo) {
		List list = sqlSession.selectList("joboffer.selectSearchReview", memberSNo);
		return (ArrayList<JobOfferReview>) list;
	}

	public int insertOfferApply(SqlSessionTemplate sqlSession, JobOfferApply joa) {
		System.out.println("[JobofferDAO : insertOfferApply] 호출 성공");
		
		int result=sqlSession.insert("joboffer.insertOfferApply", joa);
		
		return result;
	}

	//후기 작성
	public int insertSitterReview(SqlSessionTemplate sqlSession, String writerNo, String reviewedMemberNo, int grade, String content) {
		Map map = new HashMap();
		map.put("writerNo", writerNo);
		map.put("reviewedMemberNo", reviewedMemberNo);
		map.put("grade", grade);
		map.put("content", content);
		
		int result = sqlSession.insert("joboffer.insertSitterReview", map);
		return result;

	}

	public int selectSearchApply(SqlSessionTemplate sqlSession, int postNo, String writerNo) {
		Map map = new HashMap();
		map.put("postNo", postNo);
		map.put("writerNo", writerNo);
		
		int result = sqlSession.selectOne("joboffer.selectSearchApply", map);
		return result;
		
	}


}
