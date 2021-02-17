package kr.co.semosi.cs.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.semosi.cs.model.dao.CsDAO;
import kr.co.semosi.cs.model.vo.FAQ;
import kr.co.semosi.cs.model.vo.FAQPageData;
import kr.co.semosi.cs.model.vo.Guide;
import kr.co.semosi.cs.model.vo.GuidePageData;
import kr.co.semosi.cs.model.vo.Notice;
import kr.co.semosi.cs.model.vo.NoticePageData;
import kr.co.semosi.cs.model.vo.QnA;
import kr.co.semosi.cs.model.vo.QnAPageData;

@Service("csService")
public class CsService {
	
	@Autowired
	@Qualifier(value="csDAO")
	private CsDAO csDAO;
	
	
	@Autowired
	@Qualifier(value="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	
	//csMain에 공지사항 최근 5개 가져오기
	public ArrayList<Notice> selectCsMainNoticeList() {
		ArrayList<Notice> list = csDAO.selectCsMainNoticeList(sqlSession);
		return list;
		
	}

	//csMain에 이용가이드 최근 5개 가져오기
	public ArrayList<Guide> selectCsMainGuideList() {
		ArrayList<Guide> list = csDAO.selectCsMainGuideList(sqlSession);
		return list;
	}
	
	//csMain에 FAQ 최근 5개 가져오기
	public ArrayList<FAQ> selectCsMainFAQList() {
		ArrayList<FAQ> list = csDAO.selectCsMainFAQList(sqlSession);
		return list;
	}
	
	//csMain에 QnA 최근 5개 가져오기
	public ArrayList<QnA> selectCsMainQnAList() {
		ArrayList<QnA> list = csDAO.selectCsMainQnAList(sqlSession);
		return list;
	}
	
	//공지사항 게시글 한 개 가져오기
	public Notice selectNoticePost(int postNo) {
		Notice n = csDAO.selectNoticePost(sqlSession, postNo);
		return n;
		
	}

	public Guide selectGuidePost(int postNo) {
		Guide g = csDAO.selectGuidePost(sqlSession, postNo);
		return g;
	}

	public FAQ selectFAQPost(int postNo) {
		FAQ f = csDAO.selectFAQPost(sqlSession, postNo);
		return f;
		
	}

	public QnA selectQnAPost(int postNo) {
		QnA q = csDAO.selectQnAPost(sqlSession, postNo);
		return q;
	}

	//notice 글 리스트 가져오기
	public NoticePageData selectNoticeBoardPage(int currentPage) {
		int recordCountPerPage=10; //한페이지 당 몇 개의 게시물이 보이게 될 것인지
		
		ArrayList<Notice> list = csDAO.selectNoticeBoardPageList(sqlSession, currentPage, recordCountPerPage);
		
		int naviCountPerPage=5; //pageNavi값이 몇개씩 보여줄 것인지
		String pageNavi = csDAO.selectBoardPageNavi(sqlSession, currentPage, recordCountPerPage, naviCountPerPage, "Notice");
		
		NoticePageData bpd = new NoticePageData();
		bpd.setList(list);
		bpd.setPageNavi(pageNavi);
		
		return bpd;
	}

	
	//이용가이드 글 리스트 가져오기
	public GuidePageData selectGuideBoardPage(int currentPage) {
		int recordCountPerPage=10; //한페이지 당 몇 개의 게시물이 보이게 될 것인지
		
		ArrayList<Guide> list = csDAO.selectGuideBoardPageList(sqlSession, currentPage, recordCountPerPage);
		
		int naviCountPerPage=5; //pageNavi값이 몇개씩 보여줄 것인지
		String pageNavi = csDAO.selectBoardPageNavi(sqlSession, currentPage, recordCountPerPage, naviCountPerPage,"Guide");
		
		GuidePageData bpd = new GuidePageData();
		bpd.setList(list);
		bpd.setPageNavi(pageNavi);
		
		return bpd;
	}
	
	//FAQ 글 리스트 가져오기
	public FAQPageData selectFAQBoardPage(int currentPage) {
		int recordCountPerPage=10; //한페이지 당 몇 개의 게시물이 보이게 될 것인지
		
		ArrayList<FAQ> list = csDAO.selectFAQBoardPageList(sqlSession, currentPage, recordCountPerPage);
		
		int naviCountPerPage=5; //pageNavi값이 몇개씩 보여줄 것인지
		String pageNavi = csDAO.selectBoardPageNavi(sqlSession, currentPage, recordCountPerPage, naviCountPerPage,"FAQ");
		
		FAQPageData bpd = new FAQPageData();
		bpd.setList(list);
		bpd.setPageNavi(pageNavi);
		
		return bpd;
	}
	
	//1:1문의 글 리스트 가져오기
	public QnAPageData selectQnABoardPage(int currentPage) {
		int recordCountPerPage=10; //한페이지 당 몇 개의 게시물이 보이게 될 것인지
		
		ArrayList<QnA> list = csDAO.selectQnABoardPageList(sqlSession, currentPage, recordCountPerPage);
		
		int naviCountPerPage=5; //pageNavi값이 몇개씩 보여줄 것인지
		String pageNavi = csDAO.selectBoardPageNavi(sqlSession, currentPage, recordCountPerPage, naviCountPerPage,"QnA");
		
		QnAPageData qpd = new QnAPageData();
		qpd.setList(list);
		qpd.setPageNavi(pageNavi);
		
		return qpd;
	}
	
	
	//cs 게시글 수정
	public Notice updateCsPost(int postNo, String board) {
		
		//csDAO.updateCsPost(sqlSession, postNo.)
		
		return null;
	}





}
