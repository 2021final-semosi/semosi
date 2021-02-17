package kr.co.semosi.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;
import kr.co.semosi.mypage.model.service.MypageService;
import kr.co.semosi.mypage.model.vo.Criteria;
import kr.co.semosi.mypage.model.vo.FamilyDocu;
import kr.co.semosi.mypage.model.vo.HealthDocu;
import kr.co.semosi.mypage.model.vo.PageMaker;
import kr.co.semosi.mypage.model.vo.ParentVoucher;
import kr.co.semosi.mypage.model.vo.QnA;
import kr.co.semosi.mypage.model.vo.ResidentDocu;
import kr.co.semosi.mypage.model.vo.SitterVoucher;
import kr.co.semosi.mypage.model.vo.TeacherDocu;

@Controller
public class MypageController {

	@Autowired
	ServletContext context;

	@Autowired
	@Qualifier(value = "mypageService")
	private MypageService myService;
	// 부모

	// 마이페이지 메인
	@RequestMapping(value = "/parentProfile.sms")
	public String parentProfile() {

		System.out.println("[/parentProfile.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/memberProfile";
	}

	// 마이페이지 프로필 수정
	@RequestMapping(value = "/parentProfileUpdate.sms")
	public void updateParentFrofile(@RequestParam String phone, @RequestParam String address,
			@RequestParam String memberId, HttpServletResponse response, HttpSession session,
			@SessionAttribute("pMember") ParentMember pMember) throws IOException {
		System.out.println("[/parentProfileUpdate.sms] : 정상호출" + phone + " / " + address + " / " + memberId);

		pMember.setPhone(phone);
		pMember.setAddress(address);
		pMember.setMemberId(memberId);

		int result = myService.updateParentFrofile(pMember);

		if (result > 0) {
			// 회원 정보 변경 성공
			response.getWriter().print(true);
			session.removeAttribute("pMember");
			session.setAttribute("pMember", pMember);

		} else {
			// 변경 실패
			response.getWriter().print(false);
		}

		return;

	}

	// 내가 신청한 구인현황
	@RequestMapping(value = "/parentApplicationSent.sms")
	public String parentApplicationSent() {

		System.out.println("[/parentApplicationSent.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/applicationSent";
	}

	// 내게 지원한 구인 현황
	@RequestMapping(value = "/parentApplicationReceive.sms")
	public String parentApplicationReceive() {

		System.out.println("[/parentApplicationReceive.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/applicationReceive";
	}

	// 찜한 맘시터
	@RequestMapping(value = "/parentApplicationScrap.sms")
	public String parentApplicaionScrap() {

		System.out.println("[/parentApplicationScrap.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/applicationScrap";
	}

	// 내 신청서 조회
	@RequestMapping(value = "/parentApplication.sms")
	public String parentApplication() {

		System.out.println("[/parentApplication.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/application";
	}

	// 작성한 후기
	@RequestMapping(value = "/parentReviewReceive.sms")
	public String seletParentReviewReceive(@SessionAttribute("pMember") ParentMember pMember) {
		System.out.println("[/parentReviewReceive.sms] 정상적으로 호출 되었습니다.");

		String memberNo = pMember.getMemberNo();
		System.out.println(memberNo);

		myService.seletParentReviewReceive(memberNo);

		return "mypage/parent/reviewReceive";
	}

	// 받은 후기
	@RequestMapping(value = "/parentReviewWrite.sms")
	public String parentReviewWrite() {

		System.out.println("[/parentReviewWrite.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/reviewWrite";
	}

	// 내 채용내역
	@RequestMapping(value = "/parentMyRecruitment.sms")
	public String parentsHire() {
		System.out.println("[/parentMyRecruitment.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/recruitmentDetails";
	}

	/*
	 * //신고내역
	 * 
	 * @RequestMapping(value="/parentReport.sms") public String parentReport(){
	 * 
	 * System.out.println("[/parentReport.sms] 정상적으로 호출 되었습니다."); return
	 * "mypage/parent/memberReport"; }
	 */

	// 나의 문의 내역
	@RequestMapping(value = "/parentQnA.sms")
	public ModelAndView parentQnA(@ModelAttribute("cri") Criteria cri, ModelAndView mav,
			@SessionAttribute("pMember") ParentMember sessionMember) {

		System.out.println("[/parentQnA.sms] 정상적으로 호출 되었습니다.");
		// 세션에서 조회할 회원 번호를 꺼내줌
		String memberNo = sessionMember.getMemberNo();

		System.out.println("조회할 회원 번호" + memberNo);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri); // page와 perPageNum 셋팅
		// 기본값은 현재 페이지 번호 1 / 한 페이지당 보여줄 게시글 수 10 개

		cri.setMemberNo(memberNo); // 조회할 회원의 번호
		pageMaker.setTotalCount(myService.selectParentQnATotalCount(memberNo));

		pageMaker.setMemberNo(memberNo);
		List<QnA> list = myService.selectParentQnAList(pageMaker);
		mav.addObject("list", list);
		mav.addObject("pageMaker", pageMaker);

		mav.setViewName("mypage/parent/memberQnA"); // ViewResolver에 의해서 경로가 최종
													// 완성됨

		return mav;
	}

	// 이용권 구매
	@RequestMapping(value = "/parentVoucherBuy.sms")
	public String parentvoucherBuy() {

		System.out.println("[/parentVoucherBuy.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/voucherBuy";
	}

	// 이용권 결제 내역 - 부모
	@RequestMapping(value = "/parentVoucherPayView.sms")
	public ModelAndView parentvoucherPayView(@ModelAttribute("cri") Criteria cri, ModelAndView mav,
			@SessionAttribute("pMember") ParentMember sessionMember) {

		System.out.println("[/parentVoucherPayView.sms] 정상적으로 호출 되었습니다.");

		// 세션에서 조회할 회원 번호를 꺼내줌
		String memberNo = sessionMember.getMemberNo();

		System.out.println("조회할 회원 번호" + memberNo);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri); // page와 perPageNum 셋팅
		// 기본값은 현재 페이지 번호 1 / 한 페이지당 보여줄 게시글 수 10 개

		cri.setMemberNo(memberNo); // 조회할 회원의 번호
		pageMaker.setTotalCount(myService.selectParentVoucherTotalCount(memberNo));

		pageMaker.setMemberNo(memberNo);
		List<ParentVoucher> list = myService.selectParentVoucherList(pageMaker);
		mav.addObject("list", list);
		mav.addObject("pageMaker", pageMaker);

		mav.setViewName("mypage/parent/voucherPayView"); // ViewResolver에 의해서
															// 경로가 최종 완성됨

		return mav;
	}

	// ---------------------------------------------------------------

	// 시터
	// 마이페이지 메인
	@RequestMapping(value = "/sitterProfile.sms")
	public String sitterProfile() {

		System.out.println("[/sitterProfile.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/memberProfile";
	}

	// 마이페이지 프로필 수정
	@RequestMapping(value = "/sitterProfileUpdate.sms")
	public void updateSitterFrofile(@RequestParam String phone, @RequestParam String address,
			@RequestParam String memberId, HttpServletResponse response, HttpSession session,
			@SessionAttribute("sMember") SitterMember sMember) throws IOException {
		System.out.println("[/sitterProfileUpdate.sms] : 정상호출" + phone + " / " + address + " / " + memberId);

		sMember.setPhone(phone);
		sMember.setAddress(address);
		sMember.setMemberId(memberId);

		int result = myService.updateSitterFrofile(sMember);

		if (result > 0) {
			// 회원 정보 변경 성공
			response.getWriter().print(true);
			session.removeAttribute("sMember");
			session.setAttribute("sMember", sMember);
		} else {
			// 변경 실패
			response.getWriter().print(false);
		}

		return;

	}

	// 내가 신청한 구직현황
	@RequestMapping(value = "/sitterApplicationSent.sms")
	public String sitterApplicationSent() {

		System.out.println("[/sitterApplicationSent.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/applicationSent";
	}

	// 내게 지원한 구직 현황
	@RequestMapping(value = "/sitterApplicationReceive.sms")
	public String sitterApplicationReceive() {

		System.out.println("[/sitterApplicationReceive.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/applicationReceive";
	}

	// 스크랩한 일자리 (찜한 일자리)
	@RequestMapping(value = "/sitterApplicationScrap.sms")
	public String sitterApplicaionScrap() {

		System.out.println("[/sitterApplicationScrap.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/applicationScrap";
	}

	// 내 신청서 조회
	@RequestMapping(value = "/sitterApplication.sms")
	public String sitterApplication() {

		System.out.println("[/sitterApplication.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/application";
	}

	// 작성한 후기
	@RequestMapping(value = "/sitterReviewReceive.sms")
	public String sitterReviewReceive() {

		System.out.println("[/sitterReviewReceive.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/reviewReceive";
	}

	// 받은 후기
	@RequestMapping(value = "/sitterReviewWrite.sms")
	public String sitterReviewWrite() {

		System.out.println("[/sitterReviewWrite.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/reviewWrite";
	}

	// 인증 관리
	@RequestMapping(value = "/sitterCertification.sms")
	public ModelAndView sitterCertification(@SessionAttribute("sMember") SitterMember sMember, ModelAndView mav) {

		System.out.println("[/sitterCertification.sms] 정상적으로 호출 되었습니다.");

		String memberNo = sMember.getMemberNo();

		// 등초본 인증
		ResidentDocu resiDocu = myService.selectResiDocu(memberNo);

		// 건강 인증
		HealthDocu healthDocu = myService.selectHealthDocu(memberNo);

		// 부모 인증
		FamilyDocu familyDocu = myService.selectFamilyDocu(memberNo);

		// 선생님 인증
		TeacherDocu teacherDocu = myService.selectTeacherDocu(memberNo);

		if (resiDocu != null) {
			// 등초본 인증이 있다면 -> 등초본 인증 신청을 한 사람
			mav.addObject("resiDocu", resiDocu);

		} else if (healthDocu != null) { // 신청자
			mav.addObject("healthDocu", healthDocu);

		} else if (familyDocu != null) { // 신청자
			mav.addObject("familyDocu", familyDocu);

		} else if (teacherDocu != null) { // 신청자
			mav.addObject("teacherDocu", teacherDocu);

		}
		// 없는 경우는 null인 상태로 넘어감

		mav.setViewName("mypage/sitter/memberCertification"); // ViewResolver에
																// 의해서 경로가 최종
																// 완성됨

		return mav;
	}


	// 파일 업로드
	@RequestMapping(value = "/resiDocuUpload.sms")
	public ModelAndView resiDocuUpload(HttpServletRequest request, @SessionAttribute("sMember") SitterMember sMember,ModelAndView mav)
			throws IOException {

		System.out.println("[/resiDocuUpload.sms] 정상적으로 호출 되었습니다.");

		String uploadPath = "/resources/file/resiDocu";

		int uploadFileSizeLimit = 10 * 1024 * 1024;

		// 파일 이름 인코딩 값
		String encType = "UTF-8";

		String realUploadPath = context.getRealPath(uploadPath);

		MultipartRequest multi = new MultipartRequest(request, realUploadPath, uploadFileSizeLimit, encType,
				new DefaultFileRenamePolicy());

		String originalName = multi.getFilesystemName("file");

		String membersNo = sMember.getMemberNo();

		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS"); // 포맷
																						// 만들기
		long currentTime = Calendar.getInstance().getTimeInMillis(); // 시간값 가져오기
		Timestamp uploadTime = Timestamp.valueOf(formatter.format(currentTime));

		File file = new File(realUploadPath + "\\" + originalName);

		file.renameTo(new File(realUploadPath + "\\" + currentTime + "_semosi"));
		String changedName = currentTime + "_semosi";

		File reNameFile = new File(realUploadPath + "\\" + changedName);
		String imagePath = reNameFile.getPath();

		ResidentDocu resiDocu = new ResidentDocu();
		resiDocu.setMembersNo(membersNo);
		resiDocu.setOriginalName(originalName);
		resiDocu.setChangedName(changedName);
		resiDocu.setImagePath(imagePath);
		resiDocu.setUploadTime(uploadTime);
		
		//비즈니스 로직 진행 
		int result = myService.insertResiDocu(resiDocu);
		if(result>0){
		mav.addObject("msg", "파일이 정상적으로 등록되었습니다. 인증 승인을 기다려주세요.");
		}else{
			mav.addObject("msg", "파일 등록을 실패하였습니다. 지속적으로 문제 발생시 관리자에게 문의해주세요.");	
		}

		mav.setViewName("mypage/certiResult");
		
		return mav;

	}
	// 파일 업로드
		@RequestMapping(value = "/healthDocuUpload.sms")
		public ModelAndView healthDocuUpload(HttpServletRequest request, @SessionAttribute("sMember") SitterMember sMember,ModelAndView mav)
				throws IOException {

			System.out.println("[/healthDocuUpload.sms] 정상적으로 호출 되었습니다.");

			String uploadPath = "/resources/file/healthDocu";

			int uploadFileSizeLimit = 10 * 1024 * 1024;

			// 파일 이름 인코딩 값
			String encType = "UTF-8";

			String realUploadPath = context.getRealPath(uploadPath);

			MultipartRequest multi = new MultipartRequest(request, realUploadPath, uploadFileSizeLimit, encType,
					new DefaultFileRenamePolicy());

			String originalName = multi.getFilesystemName("file");

			String membersNo = sMember.getMemberNo();

			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS"); // 포맷
																							// 만들기
			long currentTime = Calendar.getInstance().getTimeInMillis(); // 시간값 가져오기
			Timestamp uploadTime = Timestamp.valueOf(formatter.format(currentTime));

			File file = new File(realUploadPath + "\\" + originalName);

			file.renameTo(new File(realUploadPath + "\\" + currentTime + "_semosi"));
			String changedName = currentTime + "_semosi";

			File reNameFile = new File(realUploadPath + "\\" + changedName);
			String imagePath = reNameFile.getPath();

			HealthDocu healthDocu = new HealthDocu();
			healthDocu.setMembersNo(membersNo);
			healthDocu.setOriginalName(originalName);
			healthDocu.setChangedName(changedName);
			healthDocu.setImagePath(imagePath);
			healthDocu.setUploadTime(uploadTime);
			
			//비즈니스 로직 진행 
			int result = myService.insertHealthDocu(healthDocu);
			
			if(result>0){
			mav.addObject("msg", "파일이 정상적으로 등록되었습니다. 인증 승인을 기다려주세요.");
			}else{
				mav.addObject("msg", "파일 등록을 실패하였습니다. 지속적으로 문제 발생시 관리자에게 문의해주세요.");	
			}

			mav.setViewName("mypage/certiResult");
			
			return mav;

		}
		// 파일 업로드
		@RequestMapping(value = "/familyDocuUpload.sms")
		public ModelAndView familyDocuUpload(HttpServletRequest request, @SessionAttribute("sMember") SitterMember sMember,ModelAndView mav)
				throws IOException {

			System.out.println("[/familyDocuUpload.sms] 정상적으로 호출 되었습니다.");

			String uploadPath = "/resources/file/familyDocu";

			int uploadFileSizeLimit = 10 * 1024 * 1024;

			// 파일 이름 인코딩 값
			String encType = "UTF-8";

			String realUploadPath = context.getRealPath(uploadPath);

			MultipartRequest multi = new MultipartRequest(request, realUploadPath, uploadFileSizeLimit, encType,
					new DefaultFileRenamePolicy());

			String originalName = multi.getFilesystemName("file");

			String membersNo = sMember.getMemberNo();

			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS"); // 포맷
																							// 만들기
			long currentTime = Calendar.getInstance().getTimeInMillis(); // 시간값 가져오기
			Timestamp uploadTime = Timestamp.valueOf(formatter.format(currentTime));

			File file = new File(realUploadPath + "\\" + originalName);

			file.renameTo(new File(realUploadPath + "\\" + currentTime + "_semosi"));
			String changedName = currentTime + "_semosi";

			File reNameFile = new File(realUploadPath + "\\" + changedName);
			String imagePath = reNameFile.getPath();

			FamilyDocu familyDocu = new FamilyDocu();
			familyDocu.setMembersNo(membersNo);
			familyDocu.setOriginalName(originalName);
			familyDocu.setChangedName(changedName);
			familyDocu.setImagePath(imagePath);
			familyDocu.setUploadTime(uploadTime);
			
			//비즈니스 로직 진행 
			int result = myService.insertFamilyDocu(familyDocu);
			if(result>0){
			mav.addObject("msg", "파일이 정상적으로 등록되었습니다. 인증 승인을 기다려주세요.");
			}else{
				mav.addObject("msg", "파일 등록을 실패하였습니다. 지속적으로 문제 발생시 관리자에게 문의해주세요.");	
			}

			mav.setViewName("mypage/certiResult");
			
			return mav;

		}
		// 파일 업로드
		@RequestMapping(value = "/teacherDocuUpload.sms")
		public ModelAndView teacherDocuUpload(HttpServletRequest request, @SessionAttribute("sMember") SitterMember sMember,ModelAndView mav)
				throws IOException {

			System.out.println("[/teacherDocuUpload.sms] 정상적으로 호출 되었습니다.");

			String uploadPath = "/resources/file/teacherDocu";

			int uploadFileSizeLimit = 10 * 1024 * 1024;

			// 파일 이름 인코딩 값
			String encType = "UTF-8";

			String realUploadPath = context.getRealPath(uploadPath);

			MultipartRequest multi = new MultipartRequest(request, realUploadPath, uploadFileSizeLimit, encType,
					new DefaultFileRenamePolicy());

			String originalName = multi.getFilesystemName("file");

			String membersNo = sMember.getMemberNo();

			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS"); // 포맷
																							// 만들기
			long currentTime = Calendar.getInstance().getTimeInMillis(); // 시간값 가져오기
			Timestamp uploadTime = Timestamp.valueOf(formatter.format(currentTime));

			File file = new File(realUploadPath + "\\" + originalName);

			file.renameTo(new File(realUploadPath + "\\" + currentTime + "_semosi"));
			String changedName = currentTime + "_semosi";

			File reNameFile = new File(realUploadPath + "\\" + changedName);
			String imagePath = reNameFile.getPath();

			TeacherDocu teacherDocu = new TeacherDocu();
			teacherDocu.setMembersNo(membersNo);
			teacherDocu.setOriginalName(originalName);
			teacherDocu.setChangedName(changedName);
			teacherDocu.setImagePath(imagePath);
			teacherDocu.setUploadTime(uploadTime);
			
			//비즈니스 로직 진행 
			int result = myService.insertTeacherDocu(teacherDocu);
			if(result>0){
			mav.addObject("msg", "파일이 정상적으로 등록되었습니다. 인증 승인을 기다려주세요.");
			}else{
				mav.addObject("msg", "파일 등록을 실패하였습니다. 지속적으로 문제 발생시 관리자에게 문의해주세요.");	
			}

			mav.setViewName("mypage/certiResult");
			
			return mav;

		}

		//팝업창
		@RequestMapping(value = "/resiDocuUploadPage.sms")
		public String resiDocuUploadPage() {

			return "mypage/resiDocuUploadPage";
		}

		//팝업창
		@RequestMapping(value = "/healthDocuUploadPage.sms")
		public String healthDocuUploadPage() {

			return "mypage/healthDocuUploadPage";
		}

		//팝업창
		@RequestMapping(value = "/familyDocuUploadPage.sms")
		public String familyDocuUploadPage() {

			return "mypage/familyDocuUploadPage";
		}

		//팝업창
		@RequestMapping(value = "/teacherDocuUploadPage.sms")
		public String teacherDocuUploadPage() {

			return "mypage/teacherDocuUploadPage";
		}


	// 내 채용내역
	@RequestMapping(value = "/sitterMyRecruitment.sms")
	public String sitterHired() {

		System.out.println("[/sitterMyRecruitment.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/recruitmentDetails";
	}

	/*
	 * //신고내역
	 * 
	 * @RequestMapping(value="/sitterReport.sms") public String sitterReport(){
	 * 
	 * System.out.println("[/sitterReport.sms] 정상적으로 호출 되었습니다."); return
	 * "mypage/sitter/memberReport"; }
	 */

	// 나의 문의 내역
	@RequestMapping(value = "/sitterQnA.sms")
	public ModelAndView sitterQnA(@ModelAttribute("cri") Criteria cri, ModelAndView mav,
			@SessionAttribute("sMember") SitterMember sessionMember) {

		System.out.println("[/sitterQnA.sms] 정상적으로 호출 되었습니다.");
		// 세션에서 조회할 회원 번호를 꺼내줌
		String memberNo = sessionMember.getMemberNo();

		System.out.println("조회할 회원 번호" + memberNo);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri); // page와 perPageNum 셋팅
		// 기본값은 현재 페이지 번호 1 / 한 페이지당 보여줄 게시글 수 10 개

		cri.setMemberNo(memberNo); // 조회할 회원의 번호
		pageMaker.setTotalCount(myService.selectSitterQnATotalCount(memberNo));

		pageMaker.setMemberNo(memberNo);
		List<QnA> list = myService.selectSitterQnAList(pageMaker);
		mav.addObject("list", list);
		mav.addObject("pageMaker", pageMaker);

		mav.setViewName("mypage/parent/memberQnA"); // ViewResolver에 의해서 경로가 최종
													// 완성됨

		return mav;
	}

	// 이용권 구매
	@RequestMapping(value = "/sitterVoucherBuy.sms")
	public String sitterVoucherBuy() {

		System.out.println("[/sitterVoucherBuy.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/voucherBuy";
	}

	// 이용권 결제 내역 - 시터
	@RequestMapping(value = "/sitterVoucherPayView.sms")
	public ModelAndView sitterVoucherPayView(@ModelAttribute("cri") Criteria cri, ModelAndView mav,
			@SessionAttribute("sMember") SitterMember sessionMember) {

		System.out.println("[/sitterVoucherPayView.sms] 정상적으로 호출 되었습니다.");

		// 세션에서 조회할 회원 번호를 꺼내줌
		String memberNo = sessionMember.getMemberNo();

		System.out.println("조회할 회원 번호" + memberNo);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri); // page와 perPageNum 셋팅
		// 기본값은 현재 페이지 번호 1 / 한 페이지당 보여줄 게시글 수 10 개

		cri.setMemberNo(memberNo); // 조회할 회원의 번호
		pageMaker.setTotalCount(myService.selectSitterVoucherTotalCount(memberNo));

		pageMaker.setMemberNo(memberNo);
		List<SitterVoucher> list = myService.selectSitterVoucherList(pageMaker);
		mav.addObject("list", list);
		mav.addObject("pageMaker", pageMaker);

		mav.setViewName("mypage/sitter/voucherPayView"); // ViewResolver에 의해서
															// 경로가 최종 완성됨

		return mav;
	}

}