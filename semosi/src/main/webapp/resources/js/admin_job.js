$(function(){
	$(".delChangeOffer").click(function(){
		var postNo = $(this).attr('id');
		var delYN = $(this).attr('name');
			
		$.ajax({
			url:"/delChangeOffer.sms",
			type:"post",
			data:{"postNo":postNo,"delYN":delYN},
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
	
	$(".delChangeSearch").click(function(){
		var postNo = $(this).attr('id');
		var delYN = $(this).attr('name');
		
		$.ajax({
			url:"/delChangeSearch.sms",
			type:"post",
			data:{"postNo":postNo,"delYN":delYN},
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
	
	$("#close").click(function(){
		location.replace("/post_report_list.sms");
	});
	
	$('.delete-page').click(function(){
		var postNo = $(this).attr('id');
		
		$.ajax({
			url:"/report_post_delete.sms",
			type:"get",
			data:{"postNo":postNo},
			success:function(result){
				if(result=="true") {
					alert("게시글을 삭제했습니다.");
				} else {
					alert("게시글 삭제를 정상적으로 처리하지 못했습니다.");
				}
				location.reload();
			},
			error:function(){
				console.log("ajax 통신 실패");
			}
		});
	});
});