<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.co.semosi.member.model.vo.ParentMember"%>
<%@page import="java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commons/footer.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commons/header.css">
</head>
<body>
<style>
@media(min-width:1500px){
	#mypage-wrap{
		margin: 0 auto;
		padding:0px;
		height: 100%;
		width: 70%;
	}
	#sideBar{
		margin: 0px;
		height: 100%;
		width: 22%;
	}
	#content{
		margin: 0px;
		padding: 30px;
		height: 100%;
		width: 78%;
	}
	}
@media(max-width:1500px){
		#mypage-wrap{
		margin: 0 auto;
		padding:0px;
		height: 100%;
		width: 80%;
	}
	#sideBar{
		height: 100%;
		width: 23%;
	}
	#content{
		padding: 30px;
		height: 100%;
		width: 77%;
	}
	}
@media(max-width:1220px){
		#mypage-wrap{
		margin: 0 auto;
		padding:0px;
		height: 100%;
		width: 90%;
	}
	#sideBar{
		height: 100%;
		width: 30%;
	}
	#content{
		padding: 30px;
		height: 100%;
		width: 70%;
	}
	}
@media(max-width:900px){
		#mypage-wrap{
		margin: 0 auto;
		padding:0px;
		height: 100%;
		width: 100%;
	}
	#sideBar{
		height: 100%;
		width: 30%;
	}
	#content{
		padding: 30px;
		height: 100%;
		width: 70%;
	}
	}
@media(max-width:760px){
		#mypage-wrap{
			margin: 0 auto;
			padding:0px;
			height: 100%;
			width: 100%;
		}
		#content{
		padding: 30px;
		height: 100%;
		width: 100%;
		}
		#sideBar{
		display: none;
		}
	}
	/*-----------------------------------*/

div{
	border: 0px solid black;
	}
section{
	width: 100%;
	height: 100%;
	clear: both;
	margin:0 auto;
	padding: 30px 0px 0px 0px;
}

#wrap{
	width: 100%;
	margin: 0 auto;
}

#info-table{
	width:100%;
	height:100%;

}

#info-table *{
	font-weight:600;
}

#content-title{
	margin-top:20px;
	font-size:28px;
	font-weight:600;
	display:block;
	
}

#profile_img_area {
	width: 120px;
	height: 120px;
	margin-top:30px;
	display:inline-block;
	position: relative;
}

#profile_img {
	border-radius: 50%;
	width: 67%;
	height: 67%;
	z-index: -1;
	border: 2px solid #ccc;
	display:inline-block;
}

/*
#profile_change_btn {
	width: 30px;
	height: 30px;
	position: absolute;
	transform: translate(80px, -15px);
	border-radius: 10px;
	background: url(/image/profile/picture_change.png) center center
		no-repeat;
	display: block;
	bottom: 0;
	cursor: pointer;
}
*/
#input_file {
	position:absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	opacity: 0;
	width: 100%;

}

.input_info{
	width:100%;
	text-align:left;
	margin-top:10px;
	margin-bottom:15px;
}
#inputEmail-first{
	width:25%;
	display:inline-block;
}
#inputEmail-second{
	width:25%;
	display:inline-block;
}
#inputEmail-type{
	width:15%;
	display:inline-block;
}
#address{
	width:40%;
	display: inline-block;
}

#inputPhone{
	width:60%;
	display:inline-block;
}

#checkPhone{
	width:60%;
	margin-right:40%;
}

#inputbirth{
	width:25%;
	display:inline-block;
}

#inputmonth{
	width:25%;
	display:inline-block;
}

#inputdate{
	width:25%;
	display:inline-block;
}

#search_btn{
	height:38px;
	width:100px;
	background-color:#f6d257;
	border:#ffc107;

}

#certify_btn{
	height:38px;
	width:120px;
	background-color:#f6d257;
	border:#ffc107;

}

#modify_btn{
	width:100%;
	height:50px;
	margin-top:40px;
	margin-bottom:40px;
	background-color:#f6d257;
	border:#ffc107;
	font-size:1rem;
	font-weight:700;
	
}
.form-control{
	margin: 5px;
	width: 99%;
}
.form-control-1{
	margin: 5px;
	width: 99%;
}
.hideText{
	display: none;
}

	
	/*-----------------------------------*/
	#kakao-talk-channel-chat-button{
	float:right;
	margin-right:50px;
}
</style>


<%--카카오톡 채팅 스크립트--%>
<script>
  window.kakaoAsyncInit = function() {
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button',
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://developers.kakao.com/sdk/js/kakao.channel.min.js';
    fjs.parentNode.insertBefore(js, fjs);
  })(document, 'script', 'kakao-js-sdk');
</script>

<header>
	<%@ include file="/WEB-INF/views/commons/header.jsp"%>
</header>
<div id="mypage-wrap" class="row">
	<div id="sideBar">
		<%@ include file="/WEB-INF/views/mypage/common/parentSidebar.jsp"%>
	</div>
	<div id="content">
<!-- 여기서 부터 적용 -->

<%
	ParentMember pMember = (ParentMember)session.getAttribute("pMember");

	//BirthDay 문자열 나누기
	String birthDay = String.valueOf(pMember.getBirthDay());
	String[] array = birthDay.split("-");
	
	//나이 계산하기
	//BirthDay 년도 형변환
	int birthYear = Integer.parseInt(array[0]);
	
	//현재 년도 가져오기
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	
	//현제나이 
	int memberAge = (year - birthYear);

%>
<script>
$(document).ready(function(){
	
	$('input').attr('readonly',true);
	
	var gender = $('#gender').text();
	if(gender == 'F'){
		$('#gender').text('여자');
	}else{
		$('#gender').text('남자');
	}
	
	$("#modify_btn").click(function(){
		var updateBtn = $(this).val();
		if(updateBtn == "수정하기")
		{
			var modify = window.confirm("프로필 정보를 수정하시겠습니까?");
			if(modify == true)
				{
				$(this).val("저장하기");
				$('input').attr('readonly',false);
				$('.hideText').css('display','block');
				$('#certify_btn').css('display','inline-block');
				$('#checkPhone').css('display','block');
				$('#search_btn').css('display','inline-block');
				$('#addrText_1').css('display','block');
				$('#addrText_2').css('display','block');
				$('#memberPw').val("");
				
				//비밀번호 유효성검사
				function pwCheck() {
					var memberPw = $('#memberPw').val();

					if ((/^[a-zA-Z0-9`~!@#$%^&*(),.?\[\]\'\"=+:;{}<>|_-]{8,16}$/
							.test(memberPw))) {
						//유효성 검사를 통과 하였을 때

						$('#pwCheckMessage').text("현재 비밀번호는 사용 가능합니다.");
						$('#pwCheckMessage').show();
						$('#pwCheckMessage').css('color', 'green');
					} else {
						//통과하지 못했을때
						$('#pwCheckMessage').text("8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요");
						$('#pwCheckMessage').show();
						$('#pwCheckMessage').css('color', 'red');
					}

				}

				//비밀번호 + 비밀번호 확인 일치 여부 
				function passwordCheckFunction() {

					var memberPw = $('#memberPw').val();
					var memberPwRe = $('#memberPwRe').val();

					if (memberPw != memberPwRe) {
						$('#pwReMessage').text("비밀번호가 일치하지 않습니다.");
						$('#pwReMessage').show();
						$('#pwReMessage').css('color', 'red');
					} else {
						$('#pwReMessage').hide();
					}
				}
				}
		}else{
			var update = window.confirm("프로필 정보를 저장하시겠습니까?")
			if(update == true)
				{
					$(this).val("수정하기");
					$('input').attr('readonly',true);
					$('.hideText').css('display','none');
					$('#certify_btn').css('display','none');
					$('#checkPhone').css('display','none');
					$('#search_btn').css('display','none');
					$('#addrText_1').css('display','none');
					$('#addrText_2').css('display','none');
					
				}else{
					location.href = "/parentProfile.sms";
				}
		}
		
	});
});
</script>
		<section id="section-wrap">
	<div id="wrap">
		<center>
			<span id="content-title">나의 프로필</span>
		<div id="profile_img_area">
			<form action="/profileUpload.rw" method="post" enctype="multipart/form-data" id="profile_form">
				<div id="image_box">
					<input type="hidden">
					<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" id="profile_img" />
				</div>
				<label id="profile_change_btn"> <input type="file" onChange="uploadImg();" id="input_file" name="profileImg" /></label>
			</form>
		</div>
		<form id="info-table">
			<div class="input_info row">
				<div class="col-md-2 col-sm-12"><label>아이디</label></div>
				<div class="col-md-10 col-sm-12">&nbsp; <%=pMember.getMemberId()%></div>
			</div>
			<div class="input_info row">
				<div class="col-md-2 col-sm-12"><label>비밀번호</label></div>
				<div class="col-md-10 col-sm-12">
					<input type="password" class="form-control" name="memberPw" id="memberPw"
					onblur="pwCheck();" placeholder="공백 없는 영문, 숫자, 특수문자  8~16자" value="<%=pMember.getMemberPw()%>">
				</div>
			</div>
			<div class="input_info row m-0 p-0">
				<label for="inputText" class="col-sm-2 message"></label> <span
					class="col-sm-10 message p-0" style="display: none;"
				id="pwCheckMessage"></span>
			</div>
			<div class="input_info row  m-0 p-0">
				<div class="hideText col-md-2 col-sm-12"><label>비밀번호 재확인</label></div>
				<div class="hideText col-md-10 col-sm-12">
					<input type="password" class="form-control" name="memberPwRe" id="memberPwRe"
					onblur="passwordCheckFunction();">
				</div>
			</div>
			<div class="form-message row m-0 p-0">
				<label for="inputText" class="col-sm-2 message"></label> <span
					class="col-sm-10 message p-0" style="display: none;"
					id="pwReMessage"></span>
			</div>
			<div class="input_info row">
				<div class="col-md-2 col-sm-12"><label>이름</label></div>
				<div class="col-md-10 col-sm-12">&nbsp; <%=pMember.getMemberName()%></div>
			</div>
			
			<div class="input_info row">
				<div class="col-md-2 col-sm-12"><label>생년월일</label></div>
				<div class="col-md-10 col-sm-12">
					&nbsp;&nbsp;<%=array[0] %>년&nbsp;
					&nbsp;<%=array[1] %>월&nbsp;
					&nbsp;<%=array[2] %>일&nbsp;
					&nbsp;(만 <%=memberAge %>세)
				</div>
			</div>
			<div class="input_info row">
				<div class="col-md-2 col-sm-12"><label style="display:block;">성별</label></div>
				<div class="col-md-10 col-sm-12">
					&nbsp; <span id="gender"><%=pMember.getGender() %></span>
				</div>
			</div>
			<div class="input_info row">
				<div class="col-md-2 col-sm-12"><label style="display: block;">핸드폰 번호</label></div>
				<div class="col-md-10 col-sm-12">
					<input type="text" class="form-control" id="inputPhone"  value="<%=pMember.getPhone()%>">
					<input type="button" id="certify_btn" class="btn btn-warning" style="display: none" value="핸드폰 인증" />
					<input type="text" class="form-control" placeholder="인증번호를 입력하세요" style="display: none" id="checkPhone">
				</div>
			</div>
			<div class="input_info row">
				<div class="col-md-2 col-sm-12"><label style="display:block;">주소</label></div>
				<div class="col-md-10 col-sm-12">
					<input type="text" class="form-control" id="address" name="address" value="<%=pMember.getAddress()%>">
					<input type="button" id="search_btn"  style="display: none" class="btn btn-warning" value="주소검색 " />
					<input type="text" class="form-control" style="display: none" id="addrText_1">
					<input type="text" class="form-control" style="display: none" id="addrText_2">
				</div>
			</div>
			<input type="button" id="modify_btn" class="btn btn-warning" value="수정하기" />
	</center>
</div>
</section>

<!-- 여기까지 적용 -->
	</div>
</div>


<%-- 카카오톡 채팅 아이콘 --%>
<div id="kakao-talk-channel-chat-button" data-channel-public-id="_xaExoNK" data-title="consult" data-size="small" data-color="yellow" data-shape="pc" data-support-multiple-densities="true"></div>
<footer>
	<%@ include file="/WEB-INF/views/commons/footer.jsp"%>
</footer>
</body>
</html>