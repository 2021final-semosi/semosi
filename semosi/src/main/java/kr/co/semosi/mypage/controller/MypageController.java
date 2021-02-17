package kr.co.semosi.mypage.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.co.semosi.member.model.vo.ParentMember;
import kr.co.semosi.member.model.vo.SitterMember;
import kr.co.semosi.mypage.model.service.MypageService;

@Controller
public class MypageController {
	
	@Autowired
	@Qualifier(value = "MypageService")
	private MypageService myService;
	//부모
	
	//마이페이지 메인
	@RequestMapping(value="/parentProfile.sms")
	public String parentProfile(){
		
		System.out.println("[/parentProfile.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/memberProfile";
	}
	
	//마이페이지 프로필 수정
	@RequestMapping(value="/parentProfileUpdate.sms")
	public void updateParentFrofile(@RequestParam String phone, @RequestParam String address, @RequestParam String memberId
			,HttpServletResponse response) throws IOException
	{
		System.out.println("[/parentProfileUpdate.sms] : 정상호출");
		System.out.println("[/parentProfileUpdate.sms] :" + phone);
		System.out.println("[/parentProfileUpdate.sms] :" + address);
		System.out.println("[/parentProfileUpdate.sms] :" + memberId);
		
		
		ParentMember pMember = new ParentMember();
		pMember.setPhone(phone);
		pMember.setAddress(address);
		pMember.setMemberId(memberId);
		
		int result = myService.updateParentFrofile(pMember);

		if (result >0) {
			// 회원 정보 변경 성공
			response.getWriter().print(true);
			
		} else {
			//변경 실패 
			response.getWriter().print(false);
		}
		
		return ;	
		
	}
	
	//내가 신청한 구인현황
	@RequestMapping(value="/parentApplicationSent.sms")
	public String parentApplicationSent(){
		
		System.out.println("[/parentApplicationSent.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/applicationSent";
	}
	
	//내게 지원한 구인 현황
	@RequestMapping(value="/parentApplicationReceive.sms")
	public String parentApplicationReceive(){
		
		System.out.println("[/parentApplicationReceive.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/applicationReceive";
	}
	
	//찜한 맘시터
	@RequestMapping(value="/parentApplicationScrap.sms")
	public String parentApplicaionScrap(){
		
		System.out.println("[/parentApplicationScrap.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/applicationScrap";
	}
	
	//내 신청서 조회
	@RequestMapping(value="/parentApplication.sms")
	public String parentApplication(){
		
		System.out.println("[/parentApplication.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/application";
	}
	
	//작성한 후기
	@RequestMapping(value="/parentReviewReceive.sms")
	public String parentReviewReceive(){
		
		System.out.println("[/parentReviewReceive.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/reviewReceive";
	}
	
	//받은 후기
	@RequestMapping(value="/parentReviewWrite.sms")
	public String parentReviewWrite(){
		
		System.out.println("[/parentReviewWrite.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/reviewWrite";
	}
	
	//내 채용내역
	@RequestMapping(value="/parentMyRecruitment.sms")
	public String parentsHire(){
		System.out.println("[/parentMyRecruitment.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/recruitmentDetails";
	}
	
	//신고내역
	@RequestMapping(value="/parentReport.sms")
	public String parentReport(){
		
		System.out.println("[/parentReport.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/memberReport";
	}
	
	//이용권 구매
	@RequestMapping(value="/parentVoucherBuy.sms")
	public String parentvoucherBuy(){
		
		System.out.println("[/parentVoucherBuy.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/voucherBuy";
	}
	
	//이용권 결제 내역 조회
	@RequestMapping(value="/parentVoucherPayView.sms")
	public String parentvoucherPayView(){
		
		System.out.println("[/parentVoucherPayView.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/voucherPayView";
	}	
	
	
	//---------------------------------------------------------------
	
	//시터
	//마이페이지 메인
	@RequestMapping(value="/sitterProfile.sms")
	public String sitterProfile(){
		
		System.out.println("[/sitterProfile.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/memberProfile";
	}
	

	//마이페이지 프로필 수정
	@RequestMapping(value="/sitterProfileUpdate.sms")
	public void updateSitterFrofile(@RequestParam String phone, @RequestParam String address, @RequestParam String memberId
			,HttpServletResponse response) throws IOException
	{
		System.out.println("[/sitterProfileUpdate.sms] : 정상호출");
		System.out.println("[/sitterProfileUpdate.sms] :" + phone);
		System.out.println("[/sitterProfileUpdate.sms] :" + address);
		System.out.println("[/sitterProfileUpdate.sms] :" + memberId);
		
		
		SitterMember sMember = new SitterMember();
		sMember.setPhone(phone);
		sMember.setAddress(address);
		sMember.setMemberId(memberId);
		
		int result = myService.updateSitterFrofile(sMember);

		if (result >0) {
			// 회원 정보 변경 성공
			response.getWriter().print(true);
			
		} else {
			//변경 실패 
			response.getWriter().print(false);
		}
		
		return ;	
		
	}
	
	
	//내가 신청한 구직현황
	@RequestMapping(value="/sitterApplicationSent.sms")
	public String sitterApplicationSent(){
		
		System.out.println("[/sitterApplicationSent.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/applicationSent";
	}
	
	//내게 지원한 구직 현황
	@RequestMapping(value="/sitterApplicationReceive.sms")
	public String sitterApplicationReceive(){
		
		System.out.println("[/sitterApplicationReceive.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/applicationReceive";
	}
	
	//스크랩한 일자리 (찜한 일자리)
	@RequestMapping(value="/sitterApplicationScrap.sms")
	public String sitterApplicaionScrap(){
		
		System.out.println("[/sitterApplicationScrap.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/applicationScrap";
	}
	
	//내 신청서 조회
	@RequestMapping(value="/sitterApplication.sms")
	public String sitterApplication(){
		
		System.out.println("[/sitterApplication.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/application";
	}
	
	//작성한 후기
	@RequestMapping(value="/sitterReviewReceive.sms")
	public String sitterReviewReceive(){
		
		System.out.println("[/sitterReviewReceive.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/reviewReceive";
	}
	
	//받은 후기
	@RequestMapping(value="/sitterReviewWrite.sms")
	public String sitterReviewWrite(){
		
		System.out.println("[/sitterReviewWrite.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/reviewWrite";
	}
	
	//인증 관리
	@RequestMapping(value="/sitterCertification.sms")
	public String sitterCertification(){
		
		System.out.println("[/sitterCertification.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/memberCertification";
	}
	
	//내 채용내역
	@RequestMapping(value="/sitterMyRecruitment.sms")
	public String sitterHired(){
		
		System.out.println("[/sitterMyRecruitment.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/recruitmentDetails";
	}
	
	//신고내역
	@RequestMapping(value="/sitterReport.sms")
	public String sitterReport(){
		
		System.out.println("[/sitterReport.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/memberReport";
	}
	
	//이용권 구매
	@RequestMapping(value="/sitterVoucherBuy.sms")
	public String sitterVoucherBuy(){
		
		System.out.println("[/sitterVoucherBuy.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/voucherBuy";
	}
	
	//이용권 결제 내역 조회
	@RequestMapping(value="/sitterVoucherPayView.sms")
	public String sitterVoucherPayView(){
		
		System.out.println("[/sitterVoucherPayView.sms] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/voucherPayView";
	}	
	
	
}
