$(function(){
	$('.refund-request').click(function(){
		var refundYN = confirm("정말 환불하시겠습니까?");

		if(refundYN==true) {
			var voucherNo = $(this).attr('id');
			var phone = $(this).attr('name');
			
			$.ajax({
				url:"/refundRequestP.sms",
				type:"get",
				data:{"voucherNo":voucherNo,"phone":phone},
				success:function(result){
					if(result=="true") {
						alert("환불 신청 페이지로 이동합니다.");
						console.log("전화번호 :"+phone);
						window.open("http://admin.iamport.kr/users/login");
					} else {
						alert("환불 신청 페이지 이동에 오류가 발생했습니다. 아임포트 사이트로 이동해주시길 바랍니다.");
					}
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			});
		}
	});
	
	$('.refund-requestS').click(function(){
		var refundYN = confirm("정말 환불하시겠습니까?");

		if(refundYN==true) {
			var voucherNo = $(this).attr('id');
			var phone = $(this).attr('name');
			
			$.ajax({
				url:"/refundRequestS.sms",
				type:"post",
				data:{"voucherNo":voucherNo,"phone":phone},
				success:function(result){
					if(result=="true") {
						alert("환불 신청 페이지로 이동합니다.");
						window.open("http://admin.iamport.kr/users/login");
					} else {
						alert("환불 신청 페이지 이동에 오류가 발생했습니다. 아임포트 사이트로 이동해주시길 바랍니다.");
					}
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			});
		}
	});
});