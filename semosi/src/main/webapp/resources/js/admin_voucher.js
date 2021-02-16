$(function(){
	$('.refund-request').click(function(){
		var voucherNo = $(this).attr('id');
		
		$.ajax({
			url:"/https://www.iamport.kr/",
			type:"post",
			data:{"voucherNo":voucherNo},
			success:function(result){
				
			},
			error:function(){
				console.log("ajax 통신 실패");
			}
		});
	});
});