package kr.co.semosi.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	//부모
	
	//마이페이지 메인
	@RequestMapping(value="/parentProfile.do")
	public String parentProfile(){
		
		System.out.println("[/parentProfile.do] 정상적으로 호출 되었습니다.");
		return "mypage/parent/memberProfile";
	}
	
	//내가 신청한 구인현황
	@RequestMapping(value="/parentApplicationSent.do")
	public String parentApplicationSent(){
		
		System.out.println("[/parentApplicationSent.do] 정상적으로 호출 되었습니다.");
		return "mypage/parent/applicationSent";
	}
	
	//내게 지원한 구인 현황
	@RequestMapping(value="/parentApplicationReceive.do")
	public String parentApplicationReceive(){
		
		System.out.println("[/parentApplicationReceive.do] 정상적으로 호출 되었습니다.");
		return "mypage/parent/applicationReceive";
	}
	
	//찜한 맘시터
	@RequestMapping(value="/parentApplicationScrap.do")
	public String parentApplicaionScrap(){
		
		System.out.println("[/parentApplicationScrap.do] 정상적으로 호출 되었습니다.");
		return "mypage/parent/applicationScrap";
	}
	
	//내 신청서 조회
	@RequestMapping(value="/parentApplication.do")
	public String parentApplication(){
		
		System.out.println("[/parentApplication.do] 정상적으로 호출 되었습니다.");
		return "mypage/parent/application";
	}
	
	//작성한 후기
	@RequestMapping(value="/parentReviewWrite.do")
	public String parentReviewWrite(){
		
		System.out.println("[/parentReviewWrite.do] 정상적으로 호출 되었습니다.");
		return "mypage/parent/reviewWrite";
	}
	
	//받은 후기
		@RequestMapping(value="/parentReviewReceive.do")
		public String parentReviewReceive(){
			
			System.out.println("[/parentReviewReceive.do] 정상적으로 호출 되었습니다.");
			return "mypage/parent/reviewReceive";
		}
	
	//내 채용내역
	@RequestMapping(value="/parentRecruitmentDetails.do")
	public String parentRecruitmentDetails(){
		
		System.out.println("[/parentRecruitmentDetails.do] 정상적으로 호출 되었습니다.");
		return "mypage/parent/recruitmentDetails";
	}
	
	//신고내역
	@RequestMapping(value="/parentReport.do")
	public String parentReport(){
		
		System.out.println("[/parentReport.do] 정상적으로 호출 되었습니다.");
		return "mypage/parent/memberReport";
	}
	
	//이용권 구매
	@RequestMapping(value="/parentVoucherBuy.do")
	public String parentvoucherBuy(){
		
		System.out.println("[/parentVoucherBuy.do] 정상적으로 호출 되었습니다.");
		return "mypage/parent/voucherBuy";
	}
	
	//이용권 결제 내역 조회
	@RequestMapping(value="/parentVoucherPayView.do")
	public String parentvoucherPayView(){
		
		System.out.println("[/parentVoucherPayView.do] 정상적으로 호출 되었습니다.");
		return "mypage/parent/voucherPayView";
	}	
	
	
	//---------------------------------------------------------------
	
	//시터
	//마이페이지 메인
	@RequestMapping(value="/sitterProfile.do")
	public String sitterProfile(){
		
		System.out.println("[/sitterProfile.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/memberProfile";
	}
	
	//내가 신청한 구직현황
	@RequestMapping(value="/sitterApplicationSent.do")
	public String sitterApplicationSent(){
		
		System.out.println("[/sitterApplicationSent.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/applicationSent";
	}
	
	//내게 지원한 구직 현황
	@RequestMapping(value="/sitterApplicationReceive.do")
	public String sitterApplicationReceive(){
		
		System.out.println("[/sitterApplicationReceive.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/applicationReceive";
	}
	
	//스크랩한 일자리 (찜한 일자리)
	@RequestMapping(value="/sitterApplicationScrap.do")
	public String sitterApplicaionScrap(){
		
		System.out.println("[/sitterApplicationScrap.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/applicationScrap";
	}
	
	//내 신청서 조회
	@RequestMapping(value="/sitterApplication.do")
	public String sitterApplication(){
		
		System.out.println("[/sitterApplication.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/application";
	}
	
	//작성한 후기
		@RequestMapping(value="/sitterReviewWrite.do")
		public String sitterReviewWrite(){
			
			System.out.println("[/sitterReviewWrite.do] 정상적으로 호출 되었습니다.");
			return "mypage/sitter/reviewWrite";
		}
		
	//받은 후기
	@RequestMapping(value="/sitterReviewReceive.do")
	public String sitterReviewReceive(){
		
		System.out.println("[/sitterReviewReceive.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/reviewReceive";
	}
	
	//인증 관리
	@RequestMapping(value="/sitterCertification.do")
	public String sitterCertification(){
		
		System.out.println("[/sitterCertification.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/memberCertification";
	}
	
	//내 채용내역
	@RequestMapping(value="/sitterRecruitmentDetails.do")
	public String sitterRecruitmentDetails(){
		
		System.out.println("[/sitterRecruitmentDetails.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/recruitmentDetails";
	}
	
	//신고내역
	@RequestMapping(value="/sitterReport.do")
	public String sitterReport(){
		
		System.out.println("[/sitterReport.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/memberReport";
	}
	
	//이용권 구매
	@RequestMapping(value="/sitterVoucherBuy.do")
	public String sitterVoucherBuy(){
		
		System.out.println("[/sitterVoucherBuy.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/voucherBuy";
	}
	
	//이용권 결제 내역 조회
	@RequestMapping(value="/sitterVoucherPayView.do")
	public String sitterVoucherPayView(){
		
		System.out.println("[/sitterVoucherPayView.do] 정상적으로 호출 되었습니다.");
		return "mypage/sitter/voucherPayView";
	}	
	
	
}