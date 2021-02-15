package kr.co.semosi.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	//부모
	
	//마이페이지 메인
	@RequestMapping(value="/parentProfile.sms")
	public String parentProfile(){
		
		System.out.println("[/parentProfile.sms] 정상적으로 호출 되었습니다.");
		return "mypage/parent/memberProfile";
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
