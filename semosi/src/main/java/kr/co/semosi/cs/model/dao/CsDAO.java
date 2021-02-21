package kr.co.semosi.cs.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.semosi.cs.model.vo.FAQ;
import kr.co.semosi.cs.model.vo.Guide;
import kr.co.semosi.cs.model.vo.Notice;
import kr.co.semosi.cs.model.vo.QnA;
import kr.co.semosi.cs.model.vo.QnAComment;

@Repository("csDAO")
public class CsDAO {

	// csMain에 공지사항 최근 5개 가져오기
	public ArrayList<Notice> selectCsMainNoticeList(SqlSessionTemplate sqlSession) {
		List list = sqlSession.selectList("cs.selectCsMainNoticeList");
		return (ArrayList<Notice>) list;
	}

	// csMain에 이용가이드 최근 5개 가져오기
	public ArrayList<Guide> selectCsMainGuideList(SqlSessionTemplate sqlSession) {
		List list = sqlSession.selectList("cs.selectCsMainGuideList");
		return (ArrayList<Guide>) list;
	}

	// csMain에 FAQ 최근 5개 가져오기
	public ArrayList<FAQ> selectCsMainFAQList(SqlSessionTemplate sqlSession) {
		List list = sqlSession.selectList("cs.selectCsMainFAQList");
		return (ArrayList<FAQ>) list;
	}

	// csMain에 QnA 최근 5개 가져오기
	public ArrayList<QnA> selectCsMainQnAList(SqlSessionTemplate sqlSession) {
		List list = sqlSession.selectList("cs.selectCsMainQnAList");
		return (ArrayList<QnA>) list;
	}

	// 공지사항 게시글 한 개 가져오기
	public Notice selectNoticePost(SqlSessionTemplate sqlSession, int postNo) {
		Notice n = sqlSession.selectOne("cs.selectNoticePost", postNo);
		return n;
	}

	// 이용가이드 게시글 한 개 가져오기
	public Guide selectGuidePost(SqlSessionTemplate sqlSession, int postNo) {
		Guide g = sqlSession.selectOne("cs.selectGuidePost", postNo);
		return g;

	}

	// FAQ 게시글 한 개 가져오기
	public FAQ selectFAQPost(SqlSessionTemplate sqlSession, int postNo) {
		FAQ f = sqlSession.selectOne("cs.selectFAQPost", postNo);
		return f;

	}

	// QnA 게시글 한 개 가져오기
	public QnA selectQnAPost(SqlSessionTemplate sqlSession, int postNo) {
		QnA q = sqlSession.selectOne("cs.selectQnAPost", postNo);
		return q;
	}
	
	// QnA 게시글 한 개의 댓글(관리자답변) 가져오기
	public QnAComment selectQnAComment(SqlSessionTemplate sqlSession, int postNo) {
		QnAComment qc =  sqlSession.selectOne("cs.selectQnAComment",postNo);
		//System.out.println("[CSDAO] : "+qc.getPostNo()+" / "+qc.getContent());
		return qc;
	}

	// notice 글 리스트 가져오기
	public ArrayList<Notice> selectNoticeBoardPageList(SqlSessionTemplate sqlSession, int currentPage,
			int recordCountPerPage) {
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;

		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);

		List list = sqlSession.selectList("cs.selectNoticeBoardPageList", map);

		return (ArrayList<Notice>) list;

	}
	
	// Guide 글 리스트 가져오기
	public ArrayList<Guide> selectGuideBoardPageList(SqlSessionTemplate sqlSession, int currentPage,
			int recordCountPerPage) {
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;

		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);

		List list = sqlSession.selectList("cs.selectGuideBoardPageList", map);

		return (ArrayList<Guide>) list;
	}
	
	// FAQ 글 리스트 가져오기
	public ArrayList<FAQ> selectFAQBoardPageList(SqlSessionTemplate sqlSession, int currentPage,
			int recordCountPerPage) {
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;

		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);

		List list = sqlSession.selectList("cs.selectFAQBoardPageList", map);

		return (ArrayList<FAQ>) list;
	}
	
	// QnA 글 리스트 가져오기
	public ArrayList<QnA> selectQnABoardPageList(SqlSessionTemplate sqlSession, int currentPage,
			int recordCountPerPage) {
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;

		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);

		List list = sqlSession.selectList("cs.selectQnABoardPageList", map);

		return (ArrayList<QnA>) list;
	}

	//cs 게시판 페이징
	public String selectBoardPageNavi(SqlSessionTemplate sqlSession, int currentPage, int recordCountPerPage,
			int naviCountPerPage, String board) {
		
		int postTotalCount = sqlSession.selectOne("cs.postTotalCount", board); // 전체 게시물의  개수
		

		int pageTotalCount; // 전체페이지를 저장하는 변수
		if (postTotalCount % recordCountPerPage > 0) {
			pageTotalCount = postTotalCount / recordCountPerPage + 1;
		} else {
			pageTotalCount = postTotalCount / recordCountPerPage + 0;
		}

		// startNavi=((현재페이지-1/보여질navi개수)*보여질navi개수+1;
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;

		// endNavi=시작navi번호 + 보여질 navi 개수 -1;
		int endNavi = startNavi + naviCountPerPage - 1;

		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}

		StringBuilder sb = new StringBuilder();

		if (startNavi != 1) {
			sb.append("<a href='/cs"+board+".sms?currentPage=" + (startNavi - 1) + "'><li>&lt;</li></a> ");
		}

		for (int i = startNavi; i <= endNavi; i++) {
			if (i == currentPage) {
				sb.append("<a href='/cs"+board+".sms?currentPage=" + i + "'><li style=\"background-color: #F6D257;\"><b>"
						+ i + "</b></li></a> ");
			} else {
				sb.append("<a href='/cs"+board+".sms?currentPage=" + i + "'><li>" + i + "</li></a> ");
			}
		}

		if (endNavi != pageTotalCount) {
			sb.append("<a href='/cs"+board+".sms?currentPage=" + (endNavi + 1) + "'><li>&gt;</ii></a> ");
		}

		return sb.toString();

	}

	//cs 게시글 작성 (부모회원)
	public int insertCsPostp(SqlSessionTemplate sqlSession, QnA q) {
		int result = sqlSession.insert("cs.insertCsPostp", q);
		return result;
	}
	
	//cs 게시글 작성 (시터회원)
	public int insertCsPosts(SqlSessionTemplate sqlSession, QnA q) {
		int result = sqlSession.insert("cs.insertCsPosts", q);
		return result;
	}

	//cs 1:1문의 게시글 삭제
	public int updateCsPostDelYN(SqlSessionTemplate sqlSession, int postNo) {
		int result = sqlSession.update("cs.updateCsPostDelYN", postNo);
		return result;
	}

	//cs 공지사항 게시글 삭제
	public int updateNoticePost(SqlSessionTemplate sqlSession, Notice n) {
		int result = sqlSession.update("cs.updateNoticePost",n);
		return result;
		
	}

	//cs 1:1문의 게시글 수정
	public int updateQnAPost(SqlSessionTemplate sqlSession, QnA q) {
		int result = sqlSession.update("cs.updateQnAPost",q);
		return result;
	}

	//cs FAQ 게시글 수정
	public int updateFAQPost(SqlSessionTemplate sqlSession, FAQ f) {
		int result = sqlSession.update("cs.updateFAQPost",f);
		return result;
	}

	//cs 이용가이드 게시글 수정
	public int updateGuidePost(SqlSessionTemplate sqlSession, Guide g) {
		int result = sqlSession.update("cs.updateGuidePost",g);
		return result;
	}

	//cs메인에서 공지사항 게시판 키워드 검색
	public ArrayList<Notice> selectNoticeSearch(SqlSessionTemplate sqlSession, String keyword) {
		List list = sqlSession.selectList("cs.selectNoticeSearch",keyword);
		return (ArrayList<Notice>) list;
		
	}
	
	//cs메인에서 자주 묻는 질문 게시판 키워드 검색
	public ArrayList<FAQ> selectFAQSearch(SqlSessionTemplate sqlSession, String keyword) {
		List list = sqlSession.selectList("cs.selectFAQSearch",keyword);
		return (ArrayList<FAQ>) list;
		
	}
	
	//cs메인에서 이용 가이드 게시판 키워드 검색
	public ArrayList<Guide> selectGuideSearch(SqlSessionTemplate sqlSession, String keyword) {
		List list = sqlSession.selectList("cs.selectGuideSearch",keyword);
		return (ArrayList<Guide>) list;
		
	}







	


}
