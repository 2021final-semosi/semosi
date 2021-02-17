package kr.co.semosi.cs.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.semosi.cs.model.service.CsService;
import kr.co.semosi.cs.model.vo.FAQ;
import kr.co.semosi.cs.model.vo.FAQPageData;
import kr.co.semosi.cs.model.vo.Guide;
import kr.co.semosi.cs.model.vo.GuidePageData;
import kr.co.semosi.cs.model.vo.Notice;
import kr.co.semosi.cs.model.vo.NoticePageData;
import kr.co.semosi.cs.model.vo.QnA;
import kr.co.semosi.cs.model.vo.QnAPageData;
import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Controller
public class CsController {

	@Autowired
	@Qualifier(value = "csService")
	private CsService csService;

	// csMain으로 이동
	@RequestMapping(value = "/csMain.sms")
	public String moveCsMain(Model model) {
		ArrayList<Notice> noticeList = csService.selectCsMainNoticeList();
		ArrayList<Guide> guideList = csService.selectCsMainGuideList();
		ArrayList<FAQ> FAQList = csService.selectCsMainFAQList();
		ArrayList<QnA> QnAList = csService.selectCsMainQnAList();

		model.addAttribute("noticeList", noticeList);
		model.addAttribute("guideList", guideList);
		model.addAttribute("FAQList", FAQList);
		//model.addAttribute("QnAList", QnAList);

		return "cs/csMain";
	}

	// notice로 이동 (페이징 처리)
	@RequestMapping(value = "/csNotice.sms")
	public String moveNotice(HttpServletRequest request, Model model) {
		// 게시판을 처음 접근하게 되면 그게 바로 1page라는 생각을 가지고 있어야 합니다.
		int currentPage; // 현재 페이지값을 가지고 있는 변수
		// 이 변수는 페이지가 변경되면 변경된 페이지값을 가지고 있어야 하는 변수

		// 게시판을 처음 접근하면 현재 페이지(currentPage 값)를 보내주지 않기 때문에 자동으로 1page라고
		// 처리하겠다 라는 의미이고, 추후에는 특정 페이지를 이동할 때 값을 보내주게 되므로 그 값을 page로 처리하겠다는 의미
		if (request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		// 페이지를 가져올 수 있는 비즈니스 로직 처리
		NoticePageData npd = csService.selectNoticeBoardPage(currentPage);

		model.addAttribute("pageData", npd);

		return "cs/noticeBoard";
	}

	// 해당 글번호를 갖고 noticePost로 이동
	@RequestMapping(value = "/csNoticePost.sms")
	public String moveCsNoticePost(@RequestParam int postNo, Model model) {
		Notice n = csService.selectNoticePost(postNo);

		model.addAttribute("noticePost", n);

		return "cs/noticePost";
	}

	// guide로 이동 (페이징 처리)
	@RequestMapping(value = "/csGuide.sms")
	public String moveGuide(HttpServletRequest request, Model model) {
		// 게시판을 처음 접근하게 되면 그게 바로 1page라는 생각을 가지고 있어야 합니다.
		int currentPage; // 현재 페이지값을 가지고 있는 변수
		// 이 변수는 페이지가 변경되면 변경된 페이지값을 가지고 있어야 하는 변수

		// 게시판을 처음 접근하면 현재 페이지(currentPage 값)를 보내주지 않기 때문에 자동으로 1page라고
		// 처리하겠다 라는 의미이고, 추후에는 특정 페이지를 이동할 때 값을 보내주게 되므로 그 값을 page로 처리하겠다는 의미
		if (request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		// 페이지를 가져올 수 있는 비즈니스 로직 처리
		GuidePageData gpd = csService.selectGuideBoardPage(currentPage);

		model.addAttribute("pageData", gpd);

		return "cs/guideBoard";
	}

	// 해당 글번호를 갖고 guidePost로 이동
	@RequestMapping(value = "/csGuidePost.sms")
	public String moveCsGuidePost(@RequestParam int postNo, Model model) {
		Guide g = csService.selectGuidePost(postNo);

		model.addAttribute("guidePost", g);

		return "cs/guidePost";
	}

	// FAQ로 이동
	@RequestMapping(value = "/csFAQ.sms")
	public String moveFaq(HttpServletRequest request, Model model) {
		// 게시판을 처음 접근하게 되면 그게 바로 1page라는 생각을 가지고 있어야 합니다.
		int currentPage; // 현재 페이지값을 가지고 있는 변수
		// 이 변수는 페이지가 변경되면 변경된 페이지값을 가지고 있어야 하는 변수

		// 게시판을 처음 접근하면 현재 페이지(currentPage 값)를 보내주지 않기 때문에 자동으로 1page라고
		// 처리하겠다 라는 의미이고, 추후에는 특정 페이지를 이동할 때 값을 보내주게 되므로 그 값을 page로 처리하겠다는 의미
		if (request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		// 페이지를 가져올 수 있는 비즈니스 로직 처리
		FAQPageData fpd = csService.selectFAQBoardPage(currentPage);

		model.addAttribute("pageData", fpd);

		return "cs/FAQBoard";
	}

	// 해당 글번호를 갖고 FAQPost로 이동
	@RequestMapping(value = "/csFAQPost.sms")
	public String moveCsFAQPost(@RequestParam int postNo, Model model) {
		FAQ f = csService.selectFAQPost(postNo);

		model.addAttribute("FAQPost", f);

		return "cs/FAQPost";
	}

	// QnA로 이동
	@RequestMapping(value = "/csQnA.sms")
	public String moveQna(HttpServletRequest request, Model model) {
		// 게시판을 처음 접근하게 되면 그게 바로 1page라는 생각을 가지고 있어야 합니다.
		int currentPage; // 현재 페이지값을 가지고 있는 변수
		// 이 변수는 페이지가 변경되면 변경된 페이지값을 가지고 있어야 하는 변수

		// 게시판을 처음 접근하면 현재 페이지(currentPage 값)를 보내주지 않기 때문에 자동으로 1page라고
		// 처리하겠다 라는 의미이고, 추후에는 특정 페이지를 이동할 때 값을 보내주게 되므로 그 값을 page로 처리하겠다는 의미
		if (request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		// 페이지를 가져올 수 있는 비즈니스 로직 처리
		QnAPageData qpd = csService.selectQnABoardPage(currentPage);

		model.addAttribute("pageData", qpd);

		return "cs/QnABoard";
	}

	// 해당 글번호를 갖고 QnAPost로 이동
	@RequestMapping(value = "/csQnAPost.sms")
	public String moveCsQnAPost(@RequestParam int postNo, Model model) {
		QnA q = csService.selectQnAPost(postNo);

		model.addAttribute("QnAPost", q);

		return "cs/QnAPost";
	}
	
	//cs 게시글 쓰기 폼 불러오기
	@RequestMapping(value = "/csPostWrite.sms")
	public String csPostWrite(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		SitterMember sitterSession = (SitterMember) session.getAttribute("sMember");
		ParentMember parentSession = (ParentMember) session.getAttribute("pMember");
		
		if(sitterSession!=null){ //시터회원이면
			model.addAttribute("sMember", sitterSession);
		}
		else if(parentSession!=null){ //부모회원이면
			model.addAttribute("pMember", parentSession);
		}
		else {
			model.addAttribute("msg","로그인 후 이용바랍니다.");
			model.addAttribute("location","/csQnA.sms");
			return "cs/result";
		}
		
		return "cs/postWrite";
	}
	
	
	
	//cs 게시글 쓰기
	@RequestMapping(value = "/insertCsPost.sms")
	public String insertCsPost(@RequestParam String title, @RequestParam String content, @RequestParam String writerP, @RequestParam String writerS, Model model) {
		
		QnA q = new QnA();
		int result = 0;
		
		if(writerP!=null){
			q.setTitle(title);
			q.setContent(content);
			q.setWriterPNo(writerP);
			System.out.println("[csController] 부모 회원으로 글을 작성합니다!");
			
			result = csService.insertCsPost(q, "parent");
			
		}
		
		else if(writerS!=null){
			q.setTitle(title);
			q.setContent(content);
			q.setWriterPNo(writerS);
			
			result = csService.insertCsPost(q, "sitter");
			
		}

        if(result>0){
        	model.addAttribute("location","/csQnA.sms");	
        }
        else {
            model.addAttribute("msg","게시글 작성이 실패했습니다.");
            model.addAttribute("location","/csQnA.sms");
        }
		
		return "cs/result";
	}
	
	//cs 게시글 삭제 (부모회원)
	@RequestMapping(value = "/csPostDelete.sms")
	public String csPostDelete(@RequestParam int postNo, Model model){
		int result = csService.updateCsPostDelYN(postNo);
		
        if(result>0){
        	model.addAttribute("location","/csQnA.sms");	
        }
        else {
            model.addAttribute("msg","게시글 삭제를 실패했습니다.");
            model.addAttribute("location","/csQnA.sms");
        }
		
		return "cs/result";
	}

	
	// 게시글 수정하기 위해 게시글 불러오기
	@RequestMapping(value = "/csPostInfo.sms")
	public String csPostInfo(@RequestParam int postNo, @RequestParam String board, Model model) {

		
		if (board.equals("notice")) {
			Notice n = csService.selectNoticePost(postNo);
			model.addAttribute("noticePost", n);
		}
		else if (board.equals("QnA")) {
			QnA q = csService.selectQnAPost(postNo);
			model.addAttribute("QnAPost", q);
		}
		else if (board.equals("FAQ")) {
			FAQ f = csService.selectFAQPost(postNo);
			model.addAttribute("FAQPost", f);
		}
		else if (board.equals("guide")) {
			Guide g = csService.selectGuidePost(postNo);
			model.addAttribute("guidePost",g);
		}

		model.addAttribute("board", board);
		return "cs/postModify";
	}

	
	// cs게시글 수정
	@RequestMapping(value = "/csPostModify.sms")
	public String csPostModify(@RequestParam String title,@RequestParam String content, @RequestParam int postNo, @RequestParam String board, Model model) {
		
		System.out.println("[csController] 게시판 이름 : "+board);
		
		if (board.equals("notice")) {
			System.out.println("[csController - notice] 게시글 수정에서 넘어온 값  - 제목 : "+title+" / 내용 : "+content+" / 게시글번호 : "+postNo);
			Notice n = new Notice();
			n.setTitle(title);
			n.setContent(content);
			n.setPostNo(postNo);
			
			int result = csService.updateNoticePost(n);
			
			if(result>0){
				model.addAttribute("location","/csNotice.sms");
			}
			else {
				model.addAttribute("msg", "게시글 수정을 실패했습니다.");
				model.addAttribute("location","/csNotice.sms");
			}
			
		}
		else if (board.equals("QnA")) {
			System.out.println("[csController - QnA] 게시글 수정에서 넘어온 값  - 제목 : "+title+" / 내용 : "+content+" / 게시글번호 : "+postNo);
			QnA q = new QnA();
			q.setTitle(title);
			q.setContent(content);
			q.setPostNo(postNo);
			int result = csService.updateQnAPost(q);
			
			if(result>0){
				model.addAttribute("location","/csQnA.sms");
			}
			else {
				model.addAttribute("msg", "게시글 수정을 실패했습니다.");
				model.addAttribute("location","/csQnA.sms");
			}
		}
		else if (board.equals("FAQ")) {
			System.out.println("[csController - FAQ] 게시글 수정에서 넘어온 값  - 제목 : "+title+" / 내용 : "+content+" / 게시글번호 : "+postNo);
			FAQ f = new FAQ();
			f.setTitle(title);
			f.setContent(content);
			f.setPostNo(postNo);
			
			int result = csService.updateFAQPost(f);
			
			if(result>0){
				model.addAttribute("location","/csFAQ.sms");
			}
			else {
				model.addAttribute("msg", "게시글 수정을 실패했습니다.");
				model.addAttribute("location","/csFAQ.sms");
			}
		}
		else if (board.equals("guide")) {
			Guide g = new Guide();
			System.out.println("[csController - guide] 게시글 수정에서 넘어온 값  - 제목 : "+title+" / 내용 : "+content+" / 게시글번호 : "+postNo);
			g.setTitle(title);
			g.setContent(content);
			g.setPostNo(postNo);
			
			int result = csService.updateGuidePost(g);
			
			if(result>0){
				model.addAttribute("location","/csGuide.sms");
			}
			else {
				model.addAttribute("msg", "게시글 수정을 실패했습니다.");
				model.addAttribute("location","/csGuide.sms");
			}

		}

		return "cs/result";
	}
	
	
	
	@RequestMapping(value = "/csSearch.sms")
	public String moveCsSearch(@RequestParam String keyword, Model model) {
		
		ArrayList<Notice> noticeList = csService.selectNoticeSearch(keyword);
		ArrayList<FAQ> FAQList = csService.selectFAQSearch(keyword);
		ArrayList<Guide> guideList = csService.selectGuideSearch(keyword);
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("guideList", guideList);
		model.addAttribute("FAQList", FAQList);
		model.addAttribute("keyword", keyword);
		
		return "cs/csSearch";
	}



	@RequestMapping(value = "/moveOnePost.sms")
	public String moveOnePost() {
		return "cs/post";
	}


}
