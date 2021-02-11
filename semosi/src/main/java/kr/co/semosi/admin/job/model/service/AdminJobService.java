package kr.co.semosi.admin.job.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.co.semosi.admin.job.model.dao.JobDAO;
import kr.co.semosi.admin.job.model.vo.AdminOffer;
import kr.co.semosi.admin.job.model.vo.AdminReport;
import kr.co.semosi.admin.job.model.vo.AdminSearch;
import kr.co.semosi.admin.job.model.vo.JobOffer;
import kr.co.semosi.admin.job.model.vo.JobSearch;

@Service("jobService")
public class JobService {
	
	@Resource(name="jobDAO")
	private JobDAO jobDAO;

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	public List<JobOffer> jobOfferList(Map<String, Object> paramMap) {
		return jobDAO.jobOfferList(sqlSession,paramMap);
	}

	public int jobOfferContentCnt(Map<String, Object> paramMap) {
		return jobDAO.jobOfferContentCnt(sqlSession,paramMap);
	}
	
	public List<JobSearch> jobSearchList(Map<String, Object> paramMap) {
		return jobDAO.jobSearchList(sqlSession,paramMap);
	}

	public int jobSearchContentCnt(Map<String, Object> paramMap) {
		return jobDAO.jobSearchContentCnt(sqlSession,paramMap);
	}

	public List<AdminReport> postReportList(Map<String, Object> paramMap) {
		return jobDAO.postReportList(sqlSession,paramMap);
	}

	public int postReportContentCnt(Map<String, Object> paramMap) {
		return jobDAO.postReportContentCnt(sqlSession,paramMap);
	}
	
	public int delChangeOffer(AdminOffer ao) {
		return jobDAO.delChangeOffer(sqlSession,ao);
	}
	
	public int delChangeSearch(AdminSearch as) {
		return jobDAO.delChangeSearch(sqlSession,as);
	}
	
	public AdminOffer jobOfferPage(String postNo, String title) {
		return jobDAO.jobOfferPage(sqlSession,postNo,title);
	}

	public AdminSearch jobSearchPage(String postNo, String title) {
		return jobDAO.jobSearchPage(sqlSession,postNo,title);
	}

	public AdminReport postReportPage(String reportNo) {
		return jobDAO.postReportPage(sqlSession,reportNo);
		
	}

	public int postReportDelete(String postNo) {
		return jobDAO.postReportDelete(sqlSession,postNo);
	}
	
	
}
