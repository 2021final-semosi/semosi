package kr.co.semosi.admin.review.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.co.semosi.admin.review.model.dao.AdminReviewDAO;
import kr.co.semosi.admin.review.model.vo.JobOfferReviewView;
import kr.co.semosi.admin.review.model.vo.JobSearchReviewView;
import kr.co.semosi.admin.review.model.vo.ReviewAnswer;

@Service("adminReviewService")
public class AdminReviewService {
    
    @Resource(name="adminReviewDAO")
    private AdminReviewDAO rDAO;
    
    @Resource(name="sqlSessionTemplate")
    private SqlSessionTemplate sqlSession;

    public int getReviewCnt(Map<String, Object> paramMap) {
	return rDAO.getReviewCnt(sqlSession, paramMap);
    }

    public List<JobOfferReviewView> offerReviewList(Map<String, Object> paramMap) {
	return rDAO.offerReviewList(sqlSession, paramMap);
    }

    public int getReviewCount(Map<String, Object> paramMap) {
	return rDAO.getReviewCount(sqlSession, paramMap);
    }

    public List<JobSearchReviewView> searchReviewList(Map<String, Object> paramMap) {
	return rDAO.searchReviewList(sqlSession, paramMap);
    }

    public int getReAnswerCount(Map<String, Object> paramMap) {
	return rDAO.getReAnswerCount(sqlSession, paramMap);
    }

    public List<Object> reviewAnswerList(Map<String, Object> paramMap) {
	return rDAO.reviewAnswerList(sqlSession, paramMap);
    }

    public int answerDelYN(ReviewAnswer ra) {
	return rDAO.answerDelYN(sqlSession, ra);
    }

    public int offerDelYN(JobOfferReviewView jo) {
	return rDAO.offerDelYN(sqlSession, jo);
    }

    public int searchDelYN(JobSearchReviewView js) {
	return rDAO.searchDelYN(sqlSession, js);
    }

	public int OReviewcheckDelete(String[] orList) {
		return rDAO.OReviewcheckDelete(sqlSession, orList);
	}

	public int SReviewcheckDelete(String[] srList) {
		return rDAO.SReviewcheckDelete(sqlSession, srList);
	}

	public int reviewAcheckDelete(String[] raList) {
		return rDAO.reviewAcheckDelete(sqlSession, raList);
	}


}
