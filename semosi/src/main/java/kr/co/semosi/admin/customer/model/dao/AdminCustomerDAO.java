package kr.co.semosi.admin.customer.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.admin.customer.model.vo.FAQ;
import kr.co.semosi.admin.customer.model.vo.Inquiry;
import kr.co.semosi.admin.customer.model.vo.Notice;
import kr.co.semosi.admin.customer.model.vo.QnA;
import kr.co.semosi.admin.customer.model.vo.QnAComment;

@Repository("customerDAO")
public class AdminCustomerDAO {

	public List<FAQ> selectPFAQList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("customer.selectPFAQList",paramMap);
	}
	
	public int insertParentFAQWrite(String title, String content, SqlSessionTemplate sqlSession) {
		System.out.println("[insertParentWrite] DAO 메소드 호출");
		FAQ faq = new FAQ();
		faq.setTitle(title);
		faq.setContent(content);
		int result = sqlSession.insert("customer.insertParentsFAQWrite",faq);
		return result;		
	}
	
	public int getSelectPFAQContentCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("customer.selectPFAQContentCnt",paramMap);
	}
	
	public int updateParentsFAQModify(String title, String content, int postNo, SqlSessionTemplate sqlSession) {
		FAQ faq = new FAQ();
		faq.setPostNo(postNo);
		faq.setTitle(title);
		faq.setContent(content);
		int result = sqlSession.update("customer.updateParentsFAQModify",faq);
		return result;
	}
	
	
	public List<FAQ> selectSFAQList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("customer.selectSFAQList",paramMap);
	}
	
	public int getSelectSFAQContentCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("customer.selectSFAQContentCnt",paramMap);
	}
	
	public int insertSitterFAQWrite(String title, String content, SqlSessionTemplate sqlSession) {
		FAQ faq = new FAQ();
		faq.setTitle(title);
		faq.setContent(content);
		int result = sqlSession.insert("customer.insertSitterFAQWrite",faq);
		return result;		
	}

	public int updateSitterFAQModify(String title, String content, int postNo, SqlSessionTemplate sqlSession) {
		FAQ faq = new FAQ();
		faq.setPostNo(postNo);
		faq.setTitle(title);
		faq.setContent(content);
		int result = sqlSession.update("customer.updateSitterFAQModify",faq);
		return result;
	}
	
	
	public List<Notice> selectNoticeList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("customer.selectNoticeList",paramMap);
	}
	
	public int getSelectNoticeContentCnt(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectOne("customer.selectNoticeContentCnt",paramMap);
	}
	
	public int insertNoticeWrite(String title, String content, SqlSessionTemplate sqlSession) {
		FAQ faq = new FAQ();
		faq.setTitle(title);
		faq.setContent(content);
		int result = sqlSession.insert("customer.insertNoticeWrite",faq);
		return result;	
	}

	public int updateNoticeModify(String title, String content, int postNo, SqlSessionTemplate sqlSession) {
		FAQ faq = new FAQ();
		faq.setPostNo(postNo);
		faq.setTitle(title);
		faq.setContent(content);
		int result = sqlSession.update("customer.updateNoticeModify",faq);
		return result;
	}

	
	public List<QnA> selectInquiryList(SqlSessionTemplate sqlSession, Map<String, Object> paramMap) {
		return sqlSession.selectList("customer.selectInquiryList",paramMap);
	}
	
	public int getSelectInquiryContentCnt(Map<String, Object> paramMap, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("customer.selectInquiryContentCnt",paramMap);
	}


	public Inquiry selectInquiryAnswer(SqlSessionTemplate sqlSession, int postNo) {
		return sqlSession.selectOne("customer.selectInquiryAnswer",postNo);
	}

	public int insertInquiryAnswer(SqlSessionTemplate sqlSession, int postNo, String answer) {
		QnAComment qc = new QnAComment();
		qc.setPostNo(postNo);
		qc.setAnswer(answer);
		int result = sqlSession.insert("customer.insertInquiryAnswer",qc);		
		return result;
	}

	public int updateInquiryAnswer(SqlSessionTemplate sqlSession, int postNo, String answer) {
		QnAComment qc = new QnAComment();
		qc.setPostNo(postNo);
		qc.setAnswer(answer);
		int result = sqlSession.update("customer.updateInquiryAnswer",qc);		
		return result;
	}

	public int delChangeFAQ(SqlSessionTemplate sqlSession, FAQ faq) {
		return sqlSession.update("customer.delChangeFAQ",faq);
	}
	
	public int delChangeNotice(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.update("customer.delChangeNotice",n);
	}

	public int delChangeInquiry(SqlSessionTemplate sqlSession, QnA qna) {
		return sqlSession.update("customer.delChangeInquiry",qna);
	}
	
	public int FAQPcheckDelete(SqlSessionTemplate sqlSession, String[] fAQPList) {
		return sqlSession.update("customer.FAQPcheckDelete", fAQPList);
	}
	
	public int FAQScheckDelete(SqlSessionTemplate sqlSession, String[] fAQSList) {
		return sqlSession.update("customer.FAQScheckDelete", fAQSList);
	}

	public int noticeCheckDelete(SqlSessionTemplate sqlSession, String[] nList) {
		return sqlSession.update("customer.noticeCheckDelete", nList);
	}

	public int inquiryCheckDelete(SqlSessionTemplate sqlSession, String[] iList) {
		return sqlSession.update("customer.inquiryCheckDelete", iList);
	}


}
