<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commons/footer.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commons/header.css">
</head>
<body>
<!-- BootStrap 4.6.0 라이브러리 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<style>
* {
	box-sizing: border-box;
}

.formArea {
	width: 100%;
	height: 50px;
}

.form-group {
	padding: 5px 0px 5px 0px;
}

#wrapper {
	padding-top: 100px;
	padding-bottom: 200px;
	width: 50%;
	margin: 0 auto;
}

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

.spanArea {
	display: inline-block;
	border: 1px solid #dbdbda;
	border-radius: 10px;
	width: 100%;
	height: 100%;
}

.birthArea {
	display: inline-block;
	border: 1px solid #dbdbda;
	width: 33.3%;
	height: 100%;
}

#birthYY {
	border-right: 0px;
	border-radius: 10px 0px 0px 10px;
}

#birthDD {
	border-left: 0px;
	border-radius: 0px 10px 10px 0px;
}

.inputArea {
	border-radius: 10px;
	border: 0px;
	width: 100%;
	height: 100%;
	padding-left: 10px;
}

.inputArea:focus {
	outline: none;
}

.inputAreaEmail {
	border-radius: 10px;
	border: 0px;
	width: 95%;
	height: 100%;
	padding-left: 10px;
}

.inputAreaEmail:focus {
	outline: none;
}

.emailArea {
	display: inline-block;
	border: 1px solid #dbdbda;
	border-radius: 10px;
	width: 90%;
	height: 100%;
}

#loginText {
	margin-bottom: 70px;
}

.genderChoice {
	text-align: left;
}

.col-form-label {
	margin: 0px;
	padding: 0px;
	text-decoration: bold;
	height: 50px;
	text-align: left;
	line-height: 50px;
}

.phoneBtn {
	width: 90%;
	height: 100%;
}

#addressFindBtn {
	width: 90%;
	height: 100%;
}

#submitBtn {
	width: 100%;
	height: 50px;
}

.form-message {
	text-align: left;
}
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
	a{
		color: black;
	}
	div {
	border: 0px solid black;
	margin: 0px;
	padding: 0px;
	box-sizing: 0px;
}
#parentsApplication_contents{
	height: 100%;
	width: 100%;
	margin: 0 auto;
	padding-top: 30px;
}
#application_table{
	height: 100%;
	width: 100%;
}
#application_title{
	width: 100%;
	margin-top:20px;
	margin-bottom:20px;
	font-size:28px;
	font-weight:600;
}
.application_info{
	margin-bottom: 50px;
}
.application_img{
	margin-bottom: 10px;
}
#profile_img_area {
	width: 120px;
	height: 120px;
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
#input_file {
	position:absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	opacity: 0;
	width: 100%;
}
.info-title{
	width: 100%;
	height: 100%;
	text-align:left;
	margin-bottom:10px;
	font-size: 17px;
	font-weight: bold;
}
.info-input{
	width:100%;
	height: 100%;
	text-align:left;
	margin-top:10px;
	margin-bottom:15px;
	padding: 0px 20px 0px 20px;
}
.age_width{
	margin-left:8px;
}
.gender_width{
	margin-left:8px;
}
.days_width{
	margin-left:13px;
}
#inputZipcode{
	width: 50%;
	display:inline-block;
}

#inputyear-start{
	width: 20%;
} 
#inputmonth-start{
	width: 20%;
} 
#inputdate-start{
	width: 20%;
}
#inputyear-end{
	width: 20%;
} 
#inputmonth-end{
	width: 20%;
} 
#inputdate-end{
	width: 20%;
}
#inputbirth{
	width: 16%;
}
#inputmonth{
	width: 16%;
}

.text-control{
	width: 100%;
	height: 35px;
	margin-top: 5px;
	margin-bottom: 5px;
}
#search_btn{
	height:38px;
	width:100px;
	background-color:#f6d257;
	border:#ffc107;
}
.time{
	width: 150px;
	height: 35px;
	background-color: white;
	border: 1px solid black;
	margin-top: 5px;
	margin-bottom: 5px;
}
#add_btn{
	height:38px;
	width:100px;
	background-color:#f6d257;
	border:#ffc107;
	margin-left: 30px;
}
#pay{
	width: 64%;
}
.activity_width{
	margin-left: 25px;
}
textarea{
	width: 100%;
	height: 150px;
	border: 0px;
	background-color: #f3f1f1;
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
.input-subTitle{
	padding-top: 10px;
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

		<%--세미때 사용하던 js입니당. --%>
<script>
function uploadImg() {
	var fileInfo = document.getElementById("input_file").files[0];
	var reader = new FileReader();
		reader.onload = function() {
			document.getElementById("profile_img").src = reader.result;
			document.getElementById("profile_form").submit();
        	};         
    if( fileInfo ) {
    	reader.readAsDataURL( fileInfo );
    }
}
</script>

<div id="parentsApplication_contents">
	<center>
	<div id="application_title"><span>구직 신청서 조회</span></div>
	
	
	
	
		<div id="formArea">
				<form name="" action="" method="post">


					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">사진 등록</label>
						<div class="col-sm-10 m-0 p-0">
							<form action="/profileUpload.rw" method="post" enctype="multipart/form-data" id="profile_form">
								<div id="image_box">
									<input type="hidden">
									<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" id="profile_img" />
								</div>
								<label id="profile_change_btn"> <input type="file" onChange="uploadImg();" id="input_file" name="profileImg" /></label>
							</form>
						</div>
					</div>

					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-2 col-form-label">제목 입력</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" name="" id=""></span>
						</div>
					</div>


					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-2 col-form-label">원하는 시터 나이</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> 
					<input type='checkbox' name='age' value='20' class="age_width"/> 20대
					<input type='checkbox' name='age' value='30' class="age_width"/> 30대
					<input type='checkbox' name='age' value='40' class="age_width"/> 40대
					<input type='checkbox' name='age' value='50' class="age_width"/> 50대
					<input type='checkbox' name='age' value='60' class="age_width"/> 60대</span>
						</div>
					</div>
					

					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">원하는 시터 성별</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <select id="gender"
								class="inputArea" name="gender">
									<option name="gender" value="">성별</option>
									<option name="gender" value="M">남</option>
									<option name="gender" value="F">여</option>
									<option name="gender" value="G">무관</option>
							</select></span>
						</div>
					</div>
					
					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">돌봄 장소</label>

						<div class="col-sm-8 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" id="sample6_address" name="address" placeholder="주소" readonly></span>
						</div>
						<div class="col-sm-2 m-0 p-0">
							<span> <input type="button" class="btn btn-light"
								id="addressFindBtn" value="주소 찾기"
								onclick="sample6_execDaumPostcode()"></span>
						</div>

					</div>

					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">돌봄 유형</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <select id="gender"
								class="inputArea" name="gender">
									<option name="gender" value="">돌봄 유형</option>
									<option name="gender" value="M">정기적으로</option>
									<option name="gender" value="F">특정날에만</option>
							</select></span>
						</div>
					</div>

					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">희망 활동 시작일</label>
						<div class="col-sm-10 m-0 p-0">
							<!-- BIRTH_YY -->
							<span class="birthArea" id="birthYY"> <input type="text"
								id="yy" class="inputArea" maxlength="4" placeholder="년(4자)"
								onblur="birthYYCheck();" name="yyyy">
							</span><span class="birthArea" id="birthMM"> <select id="mm"
								class="inputArea" name="mm">
									<option value="">월</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select>
							</span><span class="birthArea" id="birthDD"> <input type="text"
								id="dd" class="inputArea" maxlength="2" placeholder="일"
								onblur="birthDDCheck();" name="dd">
							</span>

						</div>
					</div>
					
									<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">희망 활동 종료일</label>
						<div class="col-sm-10 m-0 p-0">
							<!-- BIRTH_YY -->
							<span class="birthArea" id="birthYY"> <input type="text"
								id="yy" class="inputArea" maxlength="4" placeholder="년(4자)"
								onblur="birthYYCheck();" name="yyyy">
							</span><span class="birthArea" id="birthMM"> <select id="mm"
								class="inputArea" name="mm">
									<option value="">월</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select>
							</span><span class="birthArea" id="birthDD"> <input type="text"
								id="dd" class="inputArea" maxlength="2" placeholder="일"
								onblur="birthDDCheck();" name="dd">
							</span>

						</div>
					</div>



					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">희망 활동 시작 시간</label>
						<div class="col-sm-10 m-0 p-0">
							<!-- BIRTH_YY -->
							<span class="birthArea" id="birthYY"> <select id=""
								class="inputArea" name="">
									<option name="gender" value="">시간</option>
									<option name="gender" value="">오전</option>
									<option name="gender" value="F">오후</option>
							</select>
							</span><span class="birthArea" id="birthMM">  <input type="text"
								id="dd" class="inputArea" maxlength="2" placeholder="일"
								onblur="birthDDCheck();" name="dd">
							</span><span class="birthArea" id="birthDD"> <input type="text"
								id="dd" class="inputArea" maxlength="2" placeholder="일"
								onblur="birthDDCheck();" name="dd">
							</span>

						</div>
					</div>
					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">희망 활동 종료 시간</label>
						<div class="col-sm-10 m-0 p-0">
							<!-- BIRTH_YY -->
							<span class="birthArea" id="birthYY"> <select id=""
								class="inputArea" name="">
									<option name="gender" value="">시간</option>
									<option name="gender" value="">오전</option>
									<option name="gender" value="F">오후</option>
							</select>
							</span><span class="birthArea" id="birthMM">  <input type="text"
								id="dd" class="inputArea" maxlength="2" placeholder="일"
								onblur="birthDDCheck();" name="dd">
							</span><span class="birthArea" id="birthDD"> <input type="text"
								id="dd" class="inputArea" maxlength="2" placeholder="일"
								onblur="birthDDCheck();" name="dd">
							</span>

						</div>
					</div>
					
			
					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-2 col-form-label">원하는 돌봄 요일</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> 
					<input type="checkbox" name="careDays" value="월" class="days_width"/>월 
					<input type="checkbox" name="careDays" value="화" class="days_width"/>화 
					<input type="checkbox" name="careDays" value="수" class="days_width"/>수 
					<input type="checkbox" name="careDays" value="목" class="days_width"/>목 
					<input type="checkbox" name="careDays" value="금" class="days_width"/>금 
					<input type="checkbox" name="careDays" value="토" class="days_width"/>토 
					<input type="checkbox" name="careDays" value="일" class="days_width"/>일</span>
						</div>
					</div>


					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">돌볼 아이 정보</label>
						<div class="col-sm-10 m-0 p-0">
							<!-- BIRTH_YY -->
							<span class="birthArea" id="birthYY"> <input type="text"
								id="yy" class="inputArea" maxlength="4" placeholder="년(4자)"
								onblur="birthYYCheck();" name="yyyy">
							</span><span class="birthArea" id="birthMM"> <select id="mm"
								class="inputArea" name="mm">
									<option value="">월</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select>
							</span><span class="birthArea" id="birthDD"> <input type="text"
								id="dd" class="inputArea" maxlength="2" placeholder="일"
								onblur="birthDDCheck();" name="dd">
							</span>

						</div>
					</div>
					
					
					

					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-2 col-form-label">시급</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" name="" id=""></span>
						</div>
					</div>

					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-2 col-form-label">원하는 돌봄 요일</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> 
							
					<input type="checkbox" name="careActivity" value="실내놀이" class="activity_width"/> 실내놀이
					<input type="checkbox" name="careActivity" value="등하원돕기" class="activity_width"/> 등하원돕기
					<input type="checkbox" name="careActivity" value="책읽기" class="activity_width"/> 책읽기
					
					<input type="checkbox" name="careActivity" value="야외활동" class="activity_width"/> 야외활동
					<br>
					<input type="checkbox" name="careActivity" value="한글놀이" class="activity_width"/> 한글놀이
					<input type="checkbox" name="careActivity" value="영어놀이" class="activity_width"/> 영어놀이
					<input type="checkbox" name="careActivity" value="학습지도" class="activity_width"/> 학습지도
					<input type="checkbox" name="careActivity" value="체육놀이" class="activity_width"/> 체육놀이
					
							</span>
						</div>
					</div>



					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-2 col-form-label">요청사항</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> 
				<textarea name="content">value값을 넣어준다</textarea></span>
						</div>
					</div>
					


					<br> <input type="button" id="submitBtn"
						class="btn btn-warning" onclick="totalCheck();" value="정보 임시 저장" />
				</form>
	
	
	
	
	<div id="application_table">
		<div class="application_img">
			<div class="info-title"><span>사진등록</span></div>	
				<div id="profile_img_area">
						<form action="/profileUpload.rw" method="post" enctype="multipart/form-data" id="profile_form">
						<div id="image_box">
							<input type="hidden">
							<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" id="profile_img" />
						</div>
						<label id="profile_change_btn"> <input type="file" onChange="uploadImg();" id="input_file" name="profileImg" /></label>
					</form>
				</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>제목 입력</span></div>
			<div class="info-input row">
				<div class="input-subTitle col-md-2 col-sm-12"><span>제목</span></div>
				<div class="col-md-10 col-sm-12">
					<input type="text" class="text-control" name="title" value="">
				</div>
			</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>원하는 시터 나이 / 성별 선택</span></div>
			<div class="info-input row">	
				<div class="col-md-2 col-sm-12"><span>시터 나이 선택</span></div>
				<div class="col-md-10 col-sm-12">
					<input type='checkbox' name='age' value='20' class="age_width"/> 20대
					<input type='checkbox' name='age' value='30' class="age_width"/> 30대
					<input type='checkbox' name='age' value='40' class="age_width"/> 40대
					<input type='checkbox' name='age' value='50' class="age_width"/> 50대
					<input type='checkbox' name='age' value='60' class="age_width"/> 60대
				</div>
				
				<div class="col-md-2 col-sm-12"><span>시터 성별 선택</span></div>
				<div class="col-md-10 col-sm-12">
					<input type="checkbox" name="preperGender" value="M" class="gender_width"/> 남
					&nbsp;&nbsp;&nbsp;
					<input type="checkbox" name="preperGender" value="W" class="gender_width"/> 여
					&nbsp;&nbsp;&nbsp;
					<input type="checkbox" name="preperGender" value="N" class="gender_width"/> 무관
				</div>
			</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>돌봄 장소</span></div>
			<div class="info-input row">
				<div class="input-subTitle col-md-2 col-sm-12"><label style="display:block;">주소</label></div>
				<div class="col-md-10 col-sm-12">
					<input type="text" name="location" class="text-control" id="inputZipcode">
					<input type="button" id="search_btn" class="btn btn-warning" value="주소검색 " />
					<input type="text" name="location" class="text-control" id="">
					<input type="text" name="location" class="text-control" id="">
				</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>돌봄 기간  / 시간</span></div>
			<div class="info-input row">
				<div class="col-md-2 col-sm-12"><label style="display:block;">돌봄 유형</label></div>
				<div class="col-md-10 col-sm-12">
					<input type="radio" name="caretype" value="정기적으로" checked="checked"/>정기적으로 &nbsp;&nbsp; 
					<input type="radio" name="caretype" value="특정날 에만"/>특정날 에만 
				</div>
				<div class="input-subTitle col-md-2 col-sm-12"><span>활동 시작일</span></div>
					<div class="col-md-10 col-sm-12">
					<input type="number" name="startDate" vlaue="" class="text-control" id="inputyear-start" placeholder="1900" min="1900" max="2100">년 &nbsp;
					<input type="number" name="startDate" vlaue=""  class="text-control" id="inputmonth-start" placeholder="01" min="1" max="12">월 &nbsp;
					<input type="number" name="startDate" vlaue=""  class="text-control" id="inputdate-start" placeholder="01" min="1" max="31">일 
				</div>
				<div class="input-subTitle col-md-2 col-sm-12"><span>활동 종료일</span></div>
				<div class="col-md-10 col-sm-12">
					<input type="number" name="endDate" vlaue="" class="text-control" id="inputyear-end" placeholder="1900" min="1900" max="2100">년 &nbsp;
					<input type="number" name="endDate" vlaue="" class="text-control" id="inputmonth-end" placeholder="01" min="1" max="12">월 &nbsp;
					<input type="number" name="endDate" vlaue="" class="text-control" id="inputdate-end" placeholder="01" min="1" max="31">일
				</div>
				<div class="input-subTitle col-md-2 col-sm-12"><span>활동 시간</span></div>
				<div class="col-md-10 col-sm-12">
					<input type="button" value="am : 10 : 00" class="time"/>
					&nbsp;&nbsp;-&nbsp;&nbsp;
					<input type="button" value="pm : 06 : 00" class="time"/>
					<br><br>
				</div>
				<div class="col-md-2 col-sm-12"><span>활동 요일</span></div>
				<div class="col-md-10 col-sm-12">
					<input type="checkbox" name="careDays" value="월" class="days_width"/>월 
					<input type="checkbox" name="careDays" value="화" class="days_width"/>화 
					<input type="checkbox" name="careDays" value="수" class="days_width"/>수 
					<input type="checkbox" name="careDays" value="목" class="days_width"/>목 
					<input type="checkbox" name="careDays" value="금" class="days_width"/>금 
					<input type="checkbox" name="careDays" value="토" class="days_width"/>토 
					<input type="checkbox" name="careDays" value="일" class="days_width"/>일
				</div>
			</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>아이 정보 / 희망 시급</span></div>
			<div class="info-input row">
				<div class="col-12"><b><span>아이 생년/월을 입력</span></b></div>
				<div class="input-subTitle col-md-2 col-sm-12"><span>아이 1</span></div>
				<div class="col-md-10 col-sm-12">
					<input type="number" name="careAge" value="" class="text-control" id="inputbirth" placeholder="1900" min="1900" max="2100"> 년 
					<input type="number" name="careAge" value="" class="text-control" id="inputmonth" placeholder="01" min="1" max="12"> 월 
					<input type="button" id="add_btn" class="btn btn-warning" value="추가하기 " />
				</div>
				<div class="input-subTitle col-md-2 col-sm-12"><span>희망시급 입력</span></div>
				<div class="col-md-10 col-sm-12">
					<input type="text" name="pay" class="text-control" id="pay"> 원
				</div>
			</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>원하는 활동</span></div>
			<div class="info-input row">
				<div class="col-md-2 col-sm-12"><span>원하는 활동 선택</span></div>
				<div class="col-md-10 col-sm-12">
					<input type="checkbox" name="careActivity" value="실내놀이" class="activity_width"/> 실내놀이
					<input type="checkbox" name="careActivity" value="야외활동" class="activity_width"/> 야외활동
					<input type="checkbox" name="careActivity" value="체육놀이" class="activity_width"/> 체육놀이
					<input type="checkbox" name="careActivity" value="등하원돕기" class="activity_width"/> 등하원돕기
					<br> 
					<input type="checkbox" name="careActivity" value="한글놀이" class="activity_width"/> 한글놀이
					<input type="checkbox" name="careActivity" value="영어놀이" class="activity_width"/> 영어놀이
					<input type="checkbox" name="careActivity" value="학습지도" class="activity_width"/> 학습지도
					<input type="checkbox" name="careActivity" value="책읽기" class="activity_width"/> 책읽기
					<br> 
					<input type="checkbox" name="careActivity" value="단기입주" class="activity_width"/> 단기입주
					<input type="checkbox" name="careActivity" value="장기입주" class="activity_width"/> 장기입주
					<input type="checkbox" name="careActivity" value="간단청소" class="activity_width"/> 간단청소
					<input type="checkbox" name="careActivity" value="밥 챙겨주기" class="activity_width"/> 밥 챙겨주기
					<br>
					<input type="checkbox" name="careActivity" value="간단 설거지" class="activity_width"/> 간단 설거지
				</div>
			</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>그외 요청 사항</span></div>
			<div class="info-input">
				<textarea name="content">value값을 넣어준다</textarea>
			</div>
		</div>
		<input type="button" id="modify_btn" class="btn btn-warning" value="수정하기 " />
	</div>
	</center>
</div>


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