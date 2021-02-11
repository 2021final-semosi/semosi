$(function(){
	$(".delChangeFAQ").click(function(){
		var postNo = $(this).attr('id');
		var delYn = $(this).attr('name');
			
		$.ajax({
			url:"/delChangeFAQ.sms",
			type:"post",
			data:{"postNo":postNo,"delYn":delYn},
			success:function(result){
				if(result=="true") {
					alert("상태를 변경하였습니다.");
				} else {
					alert("상태를 변경하지 못했습니다.");
				}
				location.reload();
			},
			error:function(){
				console.log("ajax 통신 실패");
			}
		});	
	});
	
	$(".delChangeNotice").click(function(){
		var postNo = $(this).attr('id');
		var delYn = $(this).attr('name');
		
		$.ajax({
			url:"/delChangeNotice.sms",
			type:"post",
			data:{"postNo":postNo,"delYn":delYn},
			success:function(result){
				if(result=="true") {
					alert("상태를 변경하였습니다.");
				} else {
					alert("상태를 변경하지 못했습니다.");
				}
				location.reload();
			},
			error:function(){
				console.log("ajax 통신 실패");
			}
		});
	});
	
	$(".delChangeInquiry").click(function(){
		var postNo = $(this).attr('id');
		var delYn = $(this).attr('name');
		
		$.ajax({
			url:"/delChangeInquiry.sms",
			type:"post",
			data:{"postNo":postNo,"delYn":delYn},
			success:function(result){
				if(result=="true") {
					alert("상태를 변경하였습니다.");
				} else {
					alert("상태를 변경하지 못했습니다.");
				}
				location.reload();
			},
			error:function(){
				console.log("ajax 통신 실패");
			}
		});
	});
});