$(function(){
		$('#write_cancle').click(function(){
			location.replace("/inquiry_list.sms");
		});
		
		$('#write_btn').click(function(){
			var postNo = $('input[name=postNo]').val();
			var answer = $('#answer_text').val();
			
			$.ajax({
				url:"/inquiry_write.sms",
				type:"post",
				data:{"postNo":postNo,"answer":answer},
				success:function(result){
					if(result=="true") {
						alert("답변 작성이 완료되었습니다.");
					} else {
						alert("답변 작성을 처리하지 못했습니다.(지속적인 문제 발생 시 문의해주세요.)");
					}
					location.replace("/inquiry_answer.sms?postNo="+postNo);
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			});
			
		});
		
		$('#modify_btn').click(function(){
			var postNo = $('input[name=postNo]').val();
			var answer = $('#answer_text').val();
			
			
			$.ajax({
				url:"/inquiry_modify.sms",
				type:"post",
				data:{"postNo":postNo,"answer":answer},
				success:function(result){
					if(result=="true") {
						alert("답변 수정이 완료되었습니다.");
					} else {
						alert("답변 수정을 처리하지 못했습니다.(지속적인 문제 발생 시 문의해주세요.)");
					}
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			});
			
		});
		
	});