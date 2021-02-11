package kr.co.semosi.admin.review.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.admin.review.model.vo.JobOfferReview;
import kr.co.semosi.admin.review.model.vo.JobSearchReview;
import kr.co.semosi.admin.review.model.vo.ReviewAnswer;

@Repository("adminReviewDAO")
public class AdminReviewDAO {

    public int getReviewCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectOne("review.getReviewCnt", paramMap);
    }

    public List<JobOfferReview> offerReviewList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	List<JobOfferReview> list =sqlSession.selectList("review.OfferReviewList", paramMap); 
	return list;
    }

    public int getReviewCount(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectOne("review.getReviewCount", paramMap);
    }

    public List<JobSearchReview> searchReviewList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectList("review.SearchReviewList", paramMap);
    }

    public List<Object> reviewAnswerList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectList("review.reviewAnswerList", paramMap);
    }

    public int getReAnswerCount(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectOne("review.getReAnswerCount", paramMap);
    }
    
    public int answerRestore(SqlSessionTemplate sqlSession, String ReviewNo){
	return sqlSession.update("review.answerRestore", ReviewNo);
    }


    public int answerDelYN(SqlSessionTemplate sqlSession, ReviewAnswer ra) {
	return sqlSession.update("review.answerDelYN", ra);
    }

    public int offerDelYN(SqlSessionTemplate sqlSession, JobOfferReview jo) {
	return sqlSession.update("review.offerDelYN", jo);
    }

    public int searchDelYN(SqlSessionTemplate sqlSession, JobSearchReview js) {
	return sqlSession.update("review.searchDelYN", js);
    }

}
