<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commons/footer.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commons/header.css">
</head>
<body>
<!-- BootStrap 4.6.0 라이브러리 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

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
	
div {
	border: 0px solid black;
	margin: 0px;
	padding: 0px;
	box-sizing: 0px;
}
#sitterApplication_contents{
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
.caretype_width{
	margin-left: 15px;
}
.age_width{
	margin-left:15px;
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
	border:#F2CC8F;
}
.time{
	width: 150px;
	height: 35px;
	background-color: white;
	border: 1px solid black;
	margin-top: 5px;
	margin-bottom: 5px;
}

#pay{
	width: 70%;
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
	border:#F2CC8F;
	font-size:1rem;
	font-weight:700;
}
.input-subTitle{
	padding-top: 10px;
}
/*---------------------*/
#location_width{
	width: 100%;
}
.cctv_width{
	margin-left: 20px;
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
		<%@ include file="/WEB-INF/views/mypage/common/sitterSidebar.jsp"%>
	</div>
	<div id="content">
<!-- 여기서 부터 적용 -->

<div id="sitterApplication_contents">
	<center>
	<div id="application_title"><span>구인 신청서 조회</span></div>
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
			<div class="info-title"><span>선호하는 돌봄유형</span></div>
			<div class="info-input row">
				<div class="col-md-2 col-sm-12"><span>돌봄유형 선택</span></div>
				<div class="col-md-10 col-sm-12">
				<input type="radio" name="caretype" value="" class="caretype_width" checked="checked"/>신생아/영아 풀타임 돌봄<br>
				<input type="radio" name="caretype" value="" class="caretype_width"/>등하원 돌봄<br>
				<input type="radio" name="caretype" value="" class="caretype_width"/>신생아/영아 보조 돌봄<br>
				<input type="radio" name="caretype" value="" class="caretype_width"/>놀이/학습 돌봄<br>
				<input type="radio" name="caretype" value="" class="caretype_width"/>긴급/단기 돌봄  
				</div>
			</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>돌봄 가능 연령</span></div>
			<div class="info-input row">
				<div class="col-md-2 col-sm-12"><span>돌봄연령 선택</span></div>
				<div class="col-md-10 col-sm-12">
					<input type='checkbox' name='careAge;' value='신생아' class="age_width"/> 신생아
					<input type='checkbox' name='careAge;' value='영아' class="age_width"/> 영아
					<input type='checkbox' name='careAge;' value='유아' class="age_width"/> 유아
					<input type='checkbox' name='careAge;' value='초등학생' class="age_width"/> 초등학생
				</div>
			</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>가능한 활동</span></div>
			<div class="info-input row">
				<div class="col-md-2 col-sm-12"><span>가능활동 선택</span></div>
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
			<div class="info-title"><span>활동 가능 시간</span></div>
			<div class="info-input row">
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
			<div class="info-title"><span>희망 시급</span></div>
			<div class="info-input row">
				<div class="input-subTitle col-md-2 col-sm-12"><span>희망시급 입력</span></div>
				<div class="col-md-10 col-sm-12">
					<input type="text" name="pay" class="text-control" id="pay"> 원
				</div>
			</div>
		</div>		
		<div class="application_info">
			<div class="info-title"><span>간단 자기소개</span></div>
			<div class="info-input">
				<textarea name="selfIntroduce">value값을 넣어준다</textarea>
			</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>활동 가능 지역</span></div>
			<div class="info-input row">
				<div class="input-subTitle col-md-2 col-sm-12"><span>1순위</span></div>
				<div class="col-md-10 col-sm-12">
				<input type="text" name="location" class="text-control" id="location_width">
				</div>
				<div class="input-subTitle col-md-2 col-sm-12"><span>2순위</span></div>
				<div class="col-md-10 col-sm-12">
				<input type="text" name="location" class="text-control" id="location_width">
				</div>
				<div class="input-subTitle col-md-2 col-sm-12"><span>3순위</span></div>
				<div class="col-md-10 col-sm-12">
				<input type="text" name="location" class="text-control" id="location_width">
				</div>
			</div>
		</div>
		<div class="application_info">
			<div class="info-title"><span>CCTV 동의여부</span></div>
			<div class="info-input row">
				<div class="col-md-6 col-sm-12">
					<input type="radio" name="cctvYn" value="Y" class="cctv_width" checked="checked"/> CCTV가 있어도 당당히 일할 수 있습니다.
				</div>
				<div class="col-md-6 col-sm-12">
					<input type="radio" name="cctvYn" value="N" class="cctv_width"/> CCTV 퐐영을 원하지 않습니다.
				</div>
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