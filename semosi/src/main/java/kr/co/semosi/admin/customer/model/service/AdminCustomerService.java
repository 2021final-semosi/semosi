package kr.co.semosi.admin.customer.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.co.semosi.admin.customer.model.dao.AdminCustomerDAO;
import kr.co.semosi.admin.customer.model.vo.FAQ;
import kr.co.semosi.admin.customer.model.vo.Inquiry;
import kr.co.semosi.admin.customer.model.vo.Notice;
import kr.co.semosi.admin.customer.model.vo.QnA;

@Service("customerService")
public class AdminCustomerService {
	
	@Resource(name="customerDAO")
	private AdminCustomerDAO customerDAO;

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	

	public List<FAQ> selectPFAQList(Map<String, Object> paramMap) {
		return customerDAO.selectPFAQList(sqlSession,paramMap);
	}
	
	public int getSelectPFAQContentCnt(Map<String, Object> paramMap) {
		return customerDAO.getSelectPFAQContentCnt(sqlSession, paramMap);
	}
	
	public int insertParentsFAQWrite(String title, String content) {
		System.out.println("[insertParentsWrite] Service 메소드 호출");
		return customerDAO.insertParentFAQWrite(title,content,sqlSession);
	}
	
	public int updateParentsFAQModify(String title, String content, int postNo) {
		return customerDAO.updateParentsFAQModify(title,content,postNo,sqlSession);			
	}
	


	public List<FAQ> selectSFAQList(Map<String, Object> paramMap) {
		return customerDAO.selectSFAQList(sqlSession,paramMap);
	}
	
	public int getSelectSFAQContentCnt(Map<String, Object> paramMap) {
		return customerDAO.getSelectSFAQContentCnt(sqlSession, paramMap);
	}
	
	public int insertSitterFAQWrite(String title, String content) {
		return customerDAO.insertSitterFAQWrite(title,content,sqlSession);
	}

	public int updateSitterFAQModify(String title, String content, int postNo) {
		return customerDAO.updateSitterFAQModify(title,content,postNo,sqlSession);
	}
	
	
	public List<Notice> selectNoticeList(Map<String, Object> paramMap) {
		return customerDAO.selectNoticeList(sqlSession,paramMap);
	}
	
	public int getSelectNoticeContentCnt(Map<String, Object> paramMap) {
		return customerDAO.getSelectNoticeContentCnt(sqlSession, paramMap);
	}
	
	public int insertNoticeWrite(String title, String content) {
		return customerDAO.insertNoticeWrite(title,content,sqlSession);
	}

	public int updateNoticeModify(String title, String content, int postNo) {
		return customerDAO.updateNoticeModify(title,content,postNo,sqlSession);
	}
	
	
	public Object selectInquiryList(Map<String, Object> paramMap) {
		return customerDAO.selectInquiryList(sqlSession,paramMap);
	}
	
	public int getSelectInquiryContentCnt(Map<String, Object> paramMap) {
		return customerDAO.getSelectInquiryContentCnt(paramMap,sqlSession);
	}

	public Inquiry selecetInquiryAnswer(int postNo) {
		return customerDAO.selectInquiryAnswer(sqlSession,postNo);	
	}

	public int insertInquiryAnswer(int postNo, String answer) {
		return customerDAO.insertInquiryAnswer(sqlSession,postNo,answer);
		
	}

	public int updateInquiryAnswer(int postNo, String answer) {
		return customerDAO.updateInquiryAnswer(sqlSession,postNo,answer);
	}
	
	public int delChagneFAQ(FAQ faq) {
		return customerDAO.delChangeFAQ(sqlSession,faq);
	}
	
	public int delChagneNotice(Notice n) {
		return customerDAO.delChangeNotice(sqlSession,n);
	}

	public int delChangeInquiry(QnA qna) {
		return customerDAO.delChangeInquiry(sqlSession,qna);
	}
	
	public int FAQPcheckDelete(String[] FAQPList) {
		return customerDAO.FAQPcheckDelete(sqlSession,FAQPList);
	}

	public int FAQScheckDelete(String[] fAQSList) {
		return customerDAO.FAQScheckDelete(sqlSession,fAQSList);
	}

	public int noticeCheckDelete(String[] nList) {
		return customerDAO.noticeCheckDelete(sqlSession, nList);
	}

	public int inquiryCheckDelete(String[] iList) {
		return customerDAO.inquiryCheckDelete(sqlSession, iList);
	}
}
