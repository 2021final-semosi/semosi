package kr.co.semosi.admin.job.model.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.admin.job.model.vo.AdminOffer;
import kr.co.semosi.admin.job.model.vo.AdminReport;
import kr.co.semosi.admin.job.model.vo.AdminSearch;
import kr.co.semosi.admin.job.model.vo.JobOffer;
import kr.co.semosi.admin.job.model.vo.JobSearch;

@Repository("jobDAO")
public class AdminJobDAO {

	public int deletePost(SqlSessionTemplate sqlSession, int postNo) {
		int result = sqlSession.update("job.deletePost",postNo);
		return result;
	}

	public int restorePost(SqlSessionTemplate sqlSession, int postNo) {
		int result = sqlSession.update("job.restorePost",postNo);
		return result;
	}
	
	public List<JobOffer> jobOfferList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("job.jobOfferList",paramMap);
	}

	public int jobOfferContentCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("job.jobOfferContentCnt",paramMap);
	}
	
	public List<JobSearch> jobSearchList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("job.jobSearchList",paramMap);
	}

	public int jobSearchContentCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("job.jobSearchContentCnt",paramMap);
	}
	
	public List<AdminReport> postReportList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("job.postReportList",paramMap);
	}

	public int postReportContentCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("job.postReportContentCnt",paramMap);
	}

	public int delChangeOffer(SqlSessionTemplate sqlSession, AdminOffer ao) {
		return sqlSession.update("job.delChangeOffer",ao);
	}
	
	public int delChangeSearch(SqlSessionTemplate sqlSession, AdminSearch as) {
		return sqlSession.update("job.delChangeSearch",as);
	}
	
	public AdminOffer jobOfferPage(SqlSessionTemplate sqlSession, String postNo, String title) {
		AdminOffer ao = new AdminOffer();
		ao.setPostNo(postNo);
		ao.setTitle(title);
		return sqlSession.selectOne("job.jobOfferPage",ao);
	}

	public AdminSearch jobSearchPage(SqlSessionTemplate sqlSession, String postNo, String title) {
		AdminSearch as = new AdminSearch();
		as.setPostNo(postNo);
		as.setTitle(title);
		return sqlSession.selectOne("job.jobSearchPage",as);
	}

	public AdminReport postReportPage(SqlSessionTemplate sqlSession, String reportNo) {
		return sqlSession.selectOne("job.postReportPage",reportNo);
	}

	public int postReportDelete(SqlSessionTemplate sqlSession, String postNo) {
		return sqlSession.update("job.postReportDelete",postNo);
	}

	public int jocheckDelete(SqlSessionTemplate sqlSession, String[] joList) {
		return sqlSession.update("job.jocheckDelete", joList);
	}

	public int jscheckDelete(SqlSessionTemplate sqlSession, String[] jsList) {
		return sqlSession.update("job.jscheckDelete", jsList);
	}
}
