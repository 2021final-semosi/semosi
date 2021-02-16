package kr.co.semosi.admin.review.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.admin.review.model.vo.JobOfferReviewView;
import kr.co.semosi.admin.review.model.vo.JobSearchReviewView;
import kr.co.semosi.admin.review.model.vo.ReviewAnswer;

@Repository("adminReviewDAO")
public class AdminReviewDAO {

    public int getReviewCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectOne("review.getReviewCnt", paramMap);
    }

    public List<JobOfferReviewView> offerReviewList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	List<JobOfferReviewView> list =sqlSession.selectList("review.OfferReviewList", paramMap); 
	return list;
    }

    public int getReviewCount(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
	return sqlSession.selectOne("review.getReviewCount", paramMap);
    }

    public List<JobSearchReviewView> searchReviewList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
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

    public int offerDelYN(SqlSessionTemplate sqlSession, JobOfferReviewView jo) {
	return sqlSession.update("review.offerDelYN", jo);
    }

    public int searchDelYN(SqlSessionTemplate sqlSession, JobSearchReviewView js) {
	return sqlSession.update("review.searchDelYN", js);
    }

	public int OReviewcheckDelete(SqlSessionTemplate sqlSession, String[] orList) {
		return sqlSession.update("review.OReviewcheckDelete", orList);
	}

	public int SReviewcheckDelete(SqlSessionTemplate sqlSession, String[] srList) {
		return sqlSession.update("review.SReviewcheckDelete", srList);
	}

	public int reviewAcheckDelete(SqlSessionTemplate sqlSession, String[] raList) {
		return sqlSession.update("review.reviewAcheckDelete", raList);
	}

}
