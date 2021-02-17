<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.co.semosi.member.model.vo.ParentMember"%>
<%@page import="java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
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
#sample6_address{
	width:70%;
	display: inline-block;
}

#phone{
	width:96%;
	margin-left:20px;
	display:inline-block;
}
.col-form-label {
	margin: 0px;
	padding: 0px;
	text-decoration: bold;
	height: 50px;
	text-align: left;
	line-height: 50px;
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

#checkSMSBtn{
	height:38px;
	width:120px;
	margin-left: 8px;
	background-color:#f6d257;
	border:#ffc107;
}
#sendSMSBtn{
	height:38px;
	width:120px;
	margin-left: 8px;
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

#passBtn{
	height:38px;
	width:120px;
	background-color:#f6d257;
	border:#ffc107;
}
#phoneMessage{
	text-align: left;
}
#confirmMessage{
	text-align: left;
}
#authenticationNumber{
	width: 67%;
	margin-left: 20px;
}
	/*-----------------------------------*/
	#kakao-talk-channel-chat-button{
	float:right;
	margin-right:50px;
}
</style>
<!-- 주소 api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
		<%@ include file="/WEB-INF/views/mypage/common/sitterSidebar.jsp"%>
	</div>
	<div id="content">
<!-- 여기서 부터 적용 -->

<%
	SitterMember sMember = (SitterMember)session.getAttribute("sMember");

	//BirthDay 문자열 나누기
	String birthDay = String.valueOf(sMember.getBirthDay());
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
				$('#sendSMSBtn').css('display','inline-block');
				$('#search_btn').css('display','inline-block');
				$('.form-message').css('display','block');
				$('#phone').attr('readonly',false);
				$('#authentication_1').css('display','inline-block');
				$('#authentication_2').css('display','inline-block');
				$('#modify_btn').attr('onclick','totalCheck();');
				}
		}else{
			var update = window.confirm("프로필 정보를 저장하시겠습니까?")
			if(update == true)
				{
				if(!totalCheck()){
					alert('정확한 정보를 입력해주세요.');
				}else{
		
				var memberId = $("#memberId").text();
				var phone = $('#phone').val();
				var address = $('#sample6_address').val();
				$.ajax({
					url : "/sitterProfileUpdate.sms",
					type : "post",
					data : {"phone":phone,"address":address, "memberId":memberId},
					success: function(result){
						if(result=="true"){ //ajax - 수정 성공
						alert('수정이 완료되었습니다.');
						location.href = "/sitterProfile.sms";
						}else{//ajax - 수정 실패
							alert('수정이 정상적으로 처리되지 않았습니다.(지속적인 문제 발생 시 문의바랍니다.)');
						}
					},
					error : function(){
						console.log("ajax 통신 실패");
					}
					
				});
				}
				}else{
					location.href = "/sitterProfile.sms";
				}
		}
		
	});
});
//전체 유효성 검사 진행
function totalCheck() {
	if (!phoneCheck()) {
		$('#phone').focus();
		return false;
	} else if (!authenticationNumberCheck()) {
		$('#authenticationNumber').focus();
		return false;
	} else if (!($('#confirmPhone').val()=="true")) {
		alert("휴대폰 본인인증을 완료해주세요.");
		return false;
	} else if ($('#sample6_address').val() == "") { //주소가 비어있다면 false
		
		alert("주소를 입력해주세요.");
		sample6_execDaumPostcode();
		return false;
	} else {
		console.log("유효성검사완료");
		return true;
	}
}
	//그리고 인증 제대로 확인 되었을때만 넘어가게끔 -> 임의 작성시에 넘어갈수도있을거같음 
//주소 api
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.

function sample6_execDaumPostcode() {
	new daum.Postcode(
			{
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수
					var extraAddr = ''; // 참고항목 변수

					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					if (data.userSelectedType === 'R') {
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== ''
								&& /[동|로|가]$/g.test(data.bname)) {
							extraAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== ''
								&& data.apartment === 'Y') {
							extraAddr += (extraAddr !== '' ? ', '
									+ data.buildingName
									: data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraAddr !== '') {
							extraAddr = ' (' + extraAddr + ')';
						}

					} else {
						document.getElementById("sample6_extraAddress").value = '';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample6_address').value = addr;
				}
			}).open();
}

//휴대폰번호 유효성 검사 
function phoneCheck() {
	var phone = $('#phone').val();

	if (!(/^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$/.test(phone))) {
		$('#phoneMessage').show();
		$('#phoneMessage').text("핸드폰 번호는 -를 제외한 숫자만 입력 가능합니다.");
		$('#phoneMessage').css('color', 'red');
		return false;

	} else if (!(/^[0][1][0][0-9]*$/
			.test(phone))) {
		$('#phoneMessage').show();
		$('#phoneMessage').text("정확한 핸드폰 번호를 입력해주세요.");
		$('#phoneMessage').css('color', 'red');
		return false;
	} else {
		$('#phoneMessage').hide();
		return true;
	}

}

//인증번호 유효성 검사

function authenticationNumberCheck() {
	var authenticationNumber = $('#authenticationNumber').val();

	if (!(/^[0-9]{1,6}$/.test(authenticationNumber))) {
		$('#confirmMessage').show();
		$('#confirmMessage').text("인증 번호는 숫자만 입력 가능합니다.");
		$('#confirmMessage').css('color', 'red');
		return false;

	} else if (!(/^[0-9]*$/
			.test(authenticationNumber))) {
		$('#confirmMessage').show();
		$('#confirmMessage').text("인증번호는 6자리로 입력해주세요.");
		$('#confirmMessage').css('color', 'red');
		return false;
	} else {
		$('#confirmMessage').hide();
		return true;
	}

}
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
				<div class="col-md-10 col-sm-12">&nbsp; <span id="memberId"><%=sMember.getMemberId()%></span></div>
			</div>
			<div class="input_info row">
				<div class="col-md-2 col-sm-12"><label>비밀번호</label></div>
				<div class="col-md-10 col-sm-12" >
					<input type="password" class="form-control" style="width:70%; display: inline-block;" name="memberPw" id="memberPw"
					onblur="pwCheck();" value="<%=sMember.getMemberPw()%>" readonly>
					<input type="button" id="passBtn" class="btn btn-warning" value="비밀번호 수정"/>
				</div>
				
			</div>
			
			<div class="input_info row">
				<div class="col-md-2 col-sm-12"><label>이름</label></div>
				<div class="col-md-10 col-sm-12">&nbsp; <%=sMember.getMemberName()%></div>
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
					&nbsp; <span id="gender"><%=sMember.getGender() %></span>
				</div>
			</div>
		
			<!--가져온 핸드폰 -->
			<div class="input_info row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">휴대폰번호</label>
						<div class="col-sm-7 m-0 p-0">
						<input type="text" class="form-control" id="phone" value="<%=sMember.getPhone()%>"
								onblur="phoneCheck();"  maxlength="11" name="phone" readonly>
						</div>
						<div class="col-sm-3 m-0 p-0 ">
							<span> 
								<input type="button" id="sendSMSBtn" onclick="checkPhoneNumberBeforeSMS();"
									class="btn btn-light phoneBtn"  value="인증번호 받기" style="display: none;"> 
								<input type="button" id="checkSMSBtn" class="btn btn-light phoneBtn"
									style="display: none;" onclick="checkSMS();" value="인증번호 확인">
								<input type="hidden" id="confirmPhone"/>
							</span>
						</div>
					</div>

					<div class="form-message row m-0" style="display: none" >
						<label for="inputText" class="message col-sm-2"></label>
						<span class="message col-sm-10 p-0" style="display: none;" id="phoneMessage"></span>
					</div>

					<div class="input_info row m-0">
						<div class="col-sm-2 col-form-label"  id="authentication_1" style="display: none;"></div>
						<div class="col-sm-10 m-0 p-0" id="authentication_2" style="display: none;">
							 <input type="text" class="form-control" id="authenticationNumber"
								placeholder="인증번호 입력" onblur="authenticationNumberCheck();"
								maxlength="6">
						</div>

					</div>


					<script>
						var sendSMSBtn = $('#sendSMSBtn');
						
						function checkPhoneNumberBeforeSMS(){
							if(!phoneCheck()){
								//유효성 검사를 통과하지 못했다면
							}else{
								//통과했다면
								
								//DB가서 확인하는 작업 추가 
								
								sendSMS();
							}
						}


						function sendSMS(result) {
							$.ajax({
								url : "/sendSMS.sms",
								data : {
									receiver : $('#phone').val()
								},
								type : "post",
								success : function(result) {
									if (result == "true") {

										$('#phone').attr("readonly", true);
										$('#phoneMessage').show();
										$('#phoneMessage').text(
												"인증 번호 전송 성공! 인증 번호를 입력해주세요.");
										$('#phoneMessage')
												.css('color', 'green');
										
										sendSMSBtn.hide();
										$('#checkSMSBtn').show();

									}
								},
								error : function() {
									$('#phoneMessage').show();
									$('#phoneMessage').text("인증 번호 전송 실패");
									$('#phoneMessage').css('color', 'red');
									console.log('send 에러');
								}
							});
						}

						function checkSMS() {
							$.ajax({
								url : "/checkSMS.sms",
								data : {
									checkNumber : $('#authenticationNumber')
											.val()
								},
								type : "post",
								success : function(result) {
									if (result == "true") {
										$('#authenticationNumber').attr(
												"readonly", true);
										$('#confirmMessage').show();
										$('#confirmMessage').text("인증 번호 일치!");
										$('#confirmMessage').css('color',
												'green');
										
										$('#confirmPhone').val("true");
										
									} else {
										$('#confirmMessage').show();
										$('#confirmMessage').text(
												"인증 번호가 일치하지않습니다.");
										$('#confirmMessage')
												.css('color', 'red');

									}
								},
								error : function() {
									console.log('check 에러');
								}
							});
						}
					</script>


					<div class="form-message row m-0" style="display: none">
						<label for="inputText" class="col-sm-2 message"></label>
						<span class="col-sm-10 message p-0" style="display: none;" id="confirmMessage"></span>
					</div>
			
			
			<!--가져온 핸드폰 -->
			<div class="input_info row">
				<div class="col-md-2 col-sm-12"><label style="display:block;">주소</label></div>
				<div class="col-md-10 col-sm-12">
					<input type="text" class="form-control" id="sample6_address" name="address" value="<%=sMember.getAddress()%>" readonly>
					<input type="button" id="search_btn" class="btn btn-warning" value="주소 찾기 " 
					onclick="sample6_execDaumPostcode()" style="display: none;"/>
				</div>
			</div>
			<input type="button" id="modify_btn" onclick="" class="btn btn-warning" value="수정하기" />
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