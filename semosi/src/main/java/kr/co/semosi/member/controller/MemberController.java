package kr.co.semosi.member.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.BasicAuthCache;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.co.semosi.member.model.service.MemberService;
import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;

@Controller
public class MemberController {

	@Autowired
	@Qualifier(value = "memberService")
	private MemberService mService;

	@RequestMapping(value = "/loginPage.sms")
	public String memberLogin() {
		System.out.println("[/loginPage.sms] 정상적으로 호출되었습니다.");
		return "member/memberLogin";
	}

	@RequestMapping(value = "/userMemberLogin.sms")
	public String selectParentLogin(@RequestParam String memberType, @RequestParam String memberId,
			@RequestParam String memberPw, HttpServletRequest request) {

		System.out.println("[/memberLogin.sms] 정상적으로 호출되었습니다.");

		// 부모 회원일 때 로그인
		if (memberType.equals("parent")) {
			System.out.println("부모회원 로그인");
			ParentMember pm = new ParentMember();
			pm.setMemberId(memberId);
			pm.setMemberPw(memberPw);

			ParentMember pMember = mService.selectLoginParent(pm);

			if (pMember != null) {

				HttpSession session = request.getSession();
				session.setAttribute("pMember", pMember);
				System.out.println("로그인 성공[ 부모 회원 : " + pMember.getMemberId() + "]");
				return "redirect:/";
			} else {
				System.out.println("로그인 실패");
				return "member/loginFail";
			}

			// 시터 회원일 때 로그인
		} else {
			System.out.println("시터회원 로그인");
			SitterMember sm = new SitterMember();
			sm.setMemberId(memberId);
			sm.setMemberPw(memberPw);

			SitterMember sMember = mService.selectLoginSitter(sm);

			if (sMember != null) {

				HttpSession session = request.getSession();
				session.setAttribute("sMember", sMember);
				System.out.println("로그인 성공[ 시터 회원 : " + sMember.getMemberId() + "]");
				return "redirect:/";
			} else {
				System.out.println("로그인 실패");
				return "member/loginFail";
			}
		}

	}

	@RequestMapping(value = "/logout.sms")
	public String memberLogout(HttpSession session) {
		// spring에선 session객체를 바로 가져올 수 있음!

		System.out.println("[/logout.sms] 정상적으로 호출되었습니다.");
		session.invalidate();
		return "redirect:/";

	}

	@RequestMapping(value = "/memberIdCheck.sms")
	public void memberIdCheck(@RequestParam String memberId, HttpServletResponse response) throws IOException {

		System.out.println("[/memberIdCheck.sms] 정상적으로 호출되었습니다.");

		System.out.println(memberId);

		int result = mService.selectMemberIdCheck(memberId);

		if (result == 0) {
			// Id 사용 가능
			response.getWriter().print(true);
		} else {
			// result>0 이면 사용 불가
			response.getWriter().print(false);
		}
		return;
		// ajax는 비동기 방식이기 때문에 리턴값 X
	}

	@RequestMapping(value = "/memberJoinPageIndex.sms")
	public String memberJoinPageIndex() {
		return "member/memberJoinPageIndex";
	}

	@RequestMapping(value = "/parentJoinPage.sms")
	public String parentJoinPage(Model model) {
		// 부모 테이블에 들어갈 수 있게끔 임시 값을 같이 넘겨준다
		model.addAttribute("member", "parent");
		return "member/memberJoinPage";
	}

	@RequestMapping(value = "/sitterJoinPage.sms")
	public String sitterJoinPage(Model model) {
		// 시터 테이블에 들어갈 수 있게끔 임시 값을 같이 넘겨준다
		model.addAttribute("member", "sitter");
		return "member/memberJoinPage";
	}

	// 본인인증 api
	@RequestMapping(value = "/sendSMS.sms")
	public void sendSMS(@RequestParam String receiver, HttpServletResponse response) throws IOException {

		// 인증 번호를 받을 전화번호
		System.out.println(receiver);

		// 본인 인증을 위한 임의의 수 (6자리)
		int random = (int) (Math.random() * 899999) + 100000;

		// 문자 보내기
		String hostname = "api.bluehouselab.com";
		String url = "https://" + hostname + "/smscenter/v1.0/sendsms";

		CredentialsProvider credsProvider = new BasicCredentialsProvider();
		credsProvider.setCredentials(new AuthScope(hostname, 443, AuthScope.ANY_REALM),

				// 청기와랩에 등록한 Applicaion Id와 API key 입력
				new UsernamePasswordCredentials(Config.appid, Config.apikey));

		// Create AuthCache instance
		AuthCache authCache = new BasicAuthCache();
		authCache.put(new HttpHost(hostname, 443, "https"), new BasicScheme());

		// Add AuthCache to the execution context
		HttpClientContext context = HttpClientContext.create();
		context.setCredentialsProvider(credsProvider);
		context.setAuthCache(authCache);

		DefaultHttpClient client = new DefaultHttpClient();

		try {
			HttpPost httpPost = new HttpPost(url);
			httpPost.setHeader("Content-type", "application/json; charset=utf-8");

			// 문자에 대한 정보
			String json = "{\"sender\":\"" + Config.sender + "\",\"receivers\":[\"" + receiver + "\"],\"content\":\""
					+ Config.content + random + "\"}";

			StringEntity se = new StringEntity(json, "UTF-8");
			httpPost.setEntity(se);

			HttpResponse httpResponse = client.execute(httpPost, context);
			System.out.println(httpResponse.getStatusLine().getStatusCode());

			InputStream inputStream = httpResponse.getEntity().getContent();
			if (inputStream != null) {
				BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
				String line = "";
				while ((line = bufferedReader.readLine()) != null)
					System.out.println(line);
				inputStream.close();
			}

			// 본인 인증 번호 DB 저장
			int result = mService.insertAuthenticationNum(random);
			// 이러면 발신 실패해도 DB에 데이터 저장이 이루어짐
			response.getWriter().print(true);
		} catch (Exception e) {
			System.err.println("Error: " + e.getLocalizedMessage());
			response.getWriter().print(false);

		} finally {
			client.getConnectionManager().shutdown();
		}

		return;

	}

	// 본인 인증 번호 DB 확인 -ajax
	@RequestMapping(value = "/checkSMS.sms")
	public void selectAuthenticationNum(@RequestParam int checkNumber, HttpServletResponse response)
			throws IOException {
		System.out.println("check Controller 호출");
		boolean result = mService.selectAuthenticationNum(checkNumber);
		if (result == true) {
			// 디비에 일치된 정보가 있다면
			response.getWriter().print(true);
			deleteAuthenticationNum(checkNumber);
		} else {
			response.getWriter().print(false);
		}
		return;
	}

	// 본인 인증 번호 DB 삭제
	public void deleteAuthenticationNum(int checkNumber) {

		int result = mService.deleteAuthenticationNum(checkNumber);
		return;
	}

	// 핸드폰 번호 DB에 중복저장된게 있는지 확인 -ajax
	@RequestMapping(value = "/memberPhoneCheck.sms")
	public void memberPhoneCheck(@RequestParam String phone, HttpServletResponse response) throws IOException {

		System.out.println("[/memberPhoneCheck.sms] 정상적으로 호출되었습니다.");

		System.out.println(phone);

		int result = mService.selectMemberPhoneCheck(phone);

		if (result == 0) {
			// phone 사용 가능
			response.getWriter().print(true);
		} else {
			// result>0 이면 사용 불가
			response.getWriter().print(false);
		}
		return;
		// ajax는 비동기 방식이기 때문에 리턴값 X
	}

	// 회원가입 로직 진행
	@RequestMapping(value = "/memberSignup.sms")
	public ModelAndView memberSignup(@RequestParam String memberType, ParentMember pMember, SitterMember sMember,
			@RequestParam String yyyy, @RequestParam String mm, @RequestParam String dd, ModelAndView mav) {
		System.out.println("[/memberSignup.sms] 정상적으로 호출되었습니다.");
		// System.out.println(memberType);
		// System.out.println("부모"+pMember.getMemberId());
		// System.out.println("시터"+sMember.getMemberId());

		// 쪼개서 받아온 생년월일 정보를 합쳐서 Date형으로 변환
		DateFormat dateFormat = new SimpleDateFormat("yy-MM-dd");
		// String yy = yyyy.substring(0, 1);
		String birthDate = yyyy + "-" + mm + "-" + dd;

		java.sql.Date formattedDate = java.sql.Date.valueOf(birthDate);

		pMember.setBirthDay(formattedDate);
		sMember.setBirthDay(formattedDate);

		if (memberType.equals("parent")) {
			int parentResult = mService.insertParentMemberSignup(pMember);
			if (parentResult > 0) { // 회원 가입 성공
				mav.addObject("msg", "회원 가입이 완료되었습니다.");
			} else { // 회원 가입 실패
				mav.addObject("msg", "회원 가입에 실패하였습니다. 다시 시도해 주세요.");
			}

		} else if (memberType.equals("sitter")) {
			int sitterResult = mService.insertSitterMemberSignup(sMember);
			if (sitterResult > 0) { // 회원 가입 성공
				mav.addObject("msg", "회원 가입이 완료되었습니다.");
			} else { // 회원 가입 실패
				mav.addObject("msg", "회원 가입에 실패하였습니다. 다시 시도해 주세요.");
			}
		}

		mav.addObject("location", "/");

		mav.setViewName("member/result");
		return mav;
	}

	// ID 찾기
	@RequestMapping(value = "/memberIdFind.sms")
	public String memberIdFind() {
		return "member/memberIdFind";
	}

	// ID 조회 SELECT
	@RequestMapping(value = "/memberIdSearch.sms")
	public String selectMemberIdFind(@RequestParam String phone, Model model) {

		String findResultId = mService.selectMemberIdFind(phone);

		model.addAttribute("searchId", findResultId);

		return "member/memberIdFindResult";

	}

	// PW 찾기
	@RequestMapping(value = "/memberPwFind.sms")
	public String memberPwFind() {
		return "member/memberPwFind";
	}
	
	// PW 찾기
	@RequestMapping(value = "/memberPwChangeToPhone.sms")
	public ModelAndView memberPwChangeToPhone(@RequestParam String phone, @RequestParam String memberPw,ModelAndView mav) {
		
		//일단 핸드폰으로 멤버 테이블들을 조회한 뒤 
		// 수정할 멤버 객체를 가져와줘야함 
		ParentMember pm = mService.selectParentMemberPhone(phone);
		SitterMember sm = mService.selectSitterMemberPhone(phone);
		int result=0;
		if(pm!=null){
			pm.setMemberPw(memberPw);
			result = mService.updateParentPw(pm);
			mav.addObject("msg", "비밀번호 변경이 완료되었습니다.");
		}else if(sm!=null){
			sm.setMemberPw(memberPw);
			result = mService.updateSitterPw(sm);
			mav.addObject("msg", "비밀번호 변경이 완료되었습니다.");
		}else{//회원가입하지않은 사람 
			mav.addObject("msg", "핸드폰 번호로 가입한 회원이 존재하지 않습니다. 회원가입을 하고 세모시를 이용해보세요.");
		}
		
		mav.addObject("location", "/");
		mav.setViewName("member/result");

		return mav;
	}

	// 부모 - 비밀번호 수정 페이지 이동
	@RequestMapping(value = "/parentPwChangePage.sms")
	public String parentMemberPwChange() {
		return "member/parentMemberPwChangePage";
	}

	// 부모 - 비밀번호 수정 - 현재 비밀번호화 일치하는지 확인 -ajax
	@RequestMapping(value = "/parentCurrentPwCheck.sms")
	public void selectParentCurrentPwCheck(@SessionAttribute("pMember") ParentMember sessionMember,
			@RequestParam String memberPw, HttpServletResponse response) throws IOException {

		System.out.println("[/parentCurrentPwCheck.sms] 정상적으로 호출되었습니다.");

		sessionMember.setMemberPw(memberPw);// 세션 멤버에 회원이 입력한 PW 넣어주고 디비에서 ID/PW
											// 확인
		ParentMember pMember = mService.selectParentCurrentPwCheck(sessionMember);

		if (pMember != null) {
			// 디비에 ID/PW 일치하는 객체가 있다면
			response.getWriter().print(true);
		} else {
			response.getWriter().print(false);
		}
		return;
	}

	// 비밀번호 수정 - DB
	@RequestMapping(value = "/parentPwChange.sms")
	public ModelAndView parentMemberPwChange(@RequestParam String changePw,
			@SessionAttribute("pMember") ParentMember sessionMember, ModelAndView mav, HttpSession session) {
		System.out.println("[/parentPwChange.sms] 정상적으로 호출되었습니다.");

		sessionMember.setMemberPw(changePw);// 세션 멤버에 회원이 입력한 PW 넣어주고 디비에서 ID/PW
											// 확인
		int result = mService.updateParentPw(sessionMember);

		// 결과처리
		if (result > 0) {
			// session 갱신
			// 기존 session에 저장된 member 객체 정보 삭제
			session.removeAttribute("pMember");
			session.setAttribute("pMember", sessionMember);

			mav.addObject("msg", "비밀번호 변경이 완료되었습니다.");

		} else {
			mav.addObject("msg", "비밀번호 변경에 실패하였습니다. 재시도해주십시오.");
		}
		mav.addObject("location", "/");
		mav.setViewName("member/result");

		return mav;

	}

	// 시터 - 비밀번호 수정 페이지 이동
	@RequestMapping(value = "/sitterPwChangePage.sms")
	public String sitterMemberPwChange() {
		return "member/sitterMemberPwChangePage";
	}

	// 시터 - 비밀번호 수정 - 현재 비밀번호화 일치하는지 확인 -ajax
	@RequestMapping(value = "/sitterCurrentPwCheck.sms")
	public void selectSitterCurrentPwCheck(@SessionAttribute("sMember") SitterMember sessionMember,
			@RequestParam String memberPw, HttpServletResponse response) throws IOException {

		System.out.println("[/sitterCurrentPwCheck.sms] 정상적으로 호출되었습니다.");

		sessionMember.setMemberPw(memberPw);// 세션 멤버에 회원이 입력한 PW 넣어주고 디비에서 ID/PW
											// 확인
		SitterMember sMember = mService.selectSitterCurrentPwCheck(sessionMember);

		if (sMember != null) {
			// 디비에 ID/PW 일치하는 객체가 있다면
			response.getWriter().print(true);
		} else {
			response.getWriter().print(false);
		}
		return;
	}

	// 시터 - 비밀번호 수정 - DB
	@RequestMapping(value = "/sitterPwChange.sms")
	public ModelAndView sitterMemberPwChange(@RequestParam String changePw,
			@SessionAttribute("sMember") SitterMember sessionMember, ModelAndView mav, HttpSession session) {
		System.out.println("[/sitterPwChange.sms] 정상적으로 호출되었습니다.");

		sessionMember.setMemberPw(changePw);// 세션 멤버에 회원이 입력한 PW 넣어주고 디비에서 ID/PW
											// 확인
		int result = mService.updateSitterPw(sessionMember);

		// 결과처리
		if (result > 0) {
			// session 갱신
			// 기존 session에 저장된 member 객체 정보 삭제
			session.removeAttribute("sMember");
			session.setAttribute("sMember", sessionMember);

			mav.addObject("msg", "비밀번호 변경이 완료되었습니다.");

		} else {
			mav.addObject("msg", "비밀번호 변경에 실패하였습니다. 재시도해주십시오.");
		}
		mav.addObject("location", "/");
		mav.setViewName("member/result");

		return mav;

	}

	// 이용권 구매 - 부모
	// DB에 값 넣어주기 - ajax
	@RequestMapping(value = "/buyVoucherParent.sms")
	public void buyVoucherParent(@SessionAttribute("pMember") ParentMember sessionMember,
			@RequestParam String voucherType, HttpServletResponse response) throws IOException {
		// sessionMember는 session에 저장된 회원 정보

		// 만약 추가 구매를 한 회원이라면 어떻게?

		String memberNo = sessionMember.getMemberNo();
		int result = 0;
		if (voucherType.equals("7days")) { // 7일 이용권이라면
			result = mService.insertParentVoucher7Days(memberNo);
		} else if (voucherType.equals("14days")) {
			result = mService.insertParentVoucher14Days(memberNo);
		} else if (voucherType.equals("30days")) {
			result = mService.insertParentVoucher30Days(memberNo);
		}

		if (result > 0) {
			// 디비에 저장이 완료되었다면
			response.getWriter().print(true);
		} else { // 디비 저장 실패
			response.getWriter().print(false);
		}

		return;
	}

	// 이용권 구매 - 시터
	// DB에 값 넣어주기 - ajax
	@RequestMapping(value = "/buyVoucherSitter.sms")
	public void buyVoucherSitter(@SessionAttribute("sMember") SitterMember sessionMember,
			@RequestParam String voucherType, HttpServletResponse response) throws IOException {
		// sessionMember는 session에 저장된 회원 정보

		// 만약 추가 구매를 한 회원이라면 어떻게?

		String memberNo = sessionMember.getMemberNo();
		int result = 0;
		if (voucherType.equals("7days")) { // 7일 이용권이라면
			result = mService.insertSitterVoucher7Days(memberNo);
		} else if (voucherType.equals("14days")) {
			result = mService.insertSitterVoucher14Days(memberNo);
		} else if (voucherType.equals("30days")) {
			result = mService.insertSitterVoucher30Days(memberNo);
		}

		if (result > 0) {
			// 디비에 저장이 완료되었다면
			response.getWriter().print(true);
		} else { // 디비 저장 실패
			response.getWriter().print(false);
		}

		return;
	}

}
