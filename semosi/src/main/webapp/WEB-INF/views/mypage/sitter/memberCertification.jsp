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
		position: sticky;
		top: 52px;
	}
	#content{
		margin: 0px;
		padding: 30px;
		height: 100%;
		width: 78%;
	}
	.certificationBtn{
		width:85%;
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
		position: sticky;
		top: 52px;
	}
	#content{
		padding: 30px;
		height: 100%;
		width: 77%;
	}
	.certificationBtn{
		width:85%;
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
		position: sticky;
		top: 52px;
	}
	#content{
		padding: 30px;
		height: 100%;
		width: 70%;
	}
	.certificationBtn{
		width:85%;
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
		position: sticky;
		top: 52px;
	}
	#content{
		padding: 30px;
		height: 100%;
		width: 70%;
	}
	.certificationBtn{
		width:85%;
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
		.certificationBtn{
		width:100%;
	}
	}
	/*-----------------------------------*/
* {
	box-sizing: border-box;
}

.title {
	padding: 0px;
	color: gray;
	width: 100%;
	margin-top:20px;
	margin-bottom:30px;
}
#main-title{
	font-size:28px;
	font-weight:600;
	text-align: center;
}
#sub-title{
	margin-top: 10px;
	font-size:16px;
	text-align: center;
}
#wrapper {
	margin-top: 30px;
	margin-bottom: 20px;
}

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

#mainCertification {
	border: 7px solid #FF8C00;
	border-radius: 10px;
	padding-top: 20px;
	padding-bottom: 20px;
}


.certification {
	padding-top: 0px;
	padding-bottom: 0px;
}
.certification-img{
	width: 150px;
	height: 150px;
}

#dividingLine {
	width: 95%;
}
.certificationText-1{
	margin-top: 11px;
}
.certificationText-2{
	margin-top: 20px;
}
.certificationText-main {
	font-size:23px;
	font-weight:600;
	float: left;
}
.certificationText-sub {
	font-size:15px;
	float: left;
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


	<section id="wrapper">
	<div class="container">
		<div class="title">
				<div id="main-title"><span>내 인증 관리</span></div>
				<div id="sub-title">
					<span>인증을 많이 받을수록, 내 프로필에 인증 뱃지가 추가되어 다른 맘시터보다 훨씬 돋보이게 됩니다.</span>
				</div>
		</div>
		<div id="mainCertification">
			<div class="certification row m-0">
				<div class="col-sm-4 m-0 p-0">
					<center>
						<img src="/resources/images/none_certification.PNG" class="certification-img"><br>인증
						뱃지
					</center>
				</div>
				<div class="certificationText-1 col-sm-8">
					<span class="certificationText-main">등초본 인증</span>
					<span class="certificationText-main" style="color: red">(필수)</span>
					<br><br>
					<span class="certificationText-sub">주민 등록 등본 또는 주민 등록 초본으로 인증받으세요.</span>
					<br>
					<span class="certificationText-sub" style="color:blue;">* 발급일 6개월 이내만 유효</span>
					<br><br>
					<input type="button" id="primaryCertification"
						class="btn btn-warning certificationBtn" value="주민 등록 등/초본 인증 받기" />
				</div>
			</div>
			
			<center>
				<hr id="dividingLine">
			</center>
			
			<div class="certification row m-0">
				<div class="col-sm-4 m-0 p-0">
					<center>
						<img src="/resources/images/none_certification.PNG" class="certification-img"><br>인증
						뱃지
					</center>
				</div>
				<div class="certificationText-2 col-sm-8">
					<span class="certificationText-main">건강 인증</span>
					<br><br>
					<span class="certificationText-sub">건강 진단 결과서 (보건소 발급)</span>
					<br><br>
					<input type="button" id="primaryCertification"
						class="btn btn-warning certificationBtn" value="인증 받기" />
				</div>
			</div>
			
			<center>
				<hr id="dividingLine">
			</center>
			
			<div class="certification row m-0">
				<div class="col-sm-4 m-0 p-0">
					<center>
						<img src="/resources/images/none_certification.PNG" class="certification-img"><br>인증
						뱃지
					</center>
				</div>
				<div class="certificationText-1 col-sm-8">
					<span class="certificationText-main">부모 인증</span>
					<br><br>
					<span class="certificationText-sub">가족 관계 증명서</span>
					<br>
					<span class="certificationText-sub">- 발급일 6개월 이내만 유효</span>
					<br><br>
					<input type="button" id="primaryCertification"
						class="btn btn-warning certificationBtn" value="인증 받기" />
				</div>
			</div>

			<center>
				<hr id="dividingLine">
			</center>
			
			<div class="certification row m-0">
				<div class="col-sm-4 m-0 p-0">
					<center>
						<img src="/resources/images/none_certification.PNG" class="certification-img"><br>인증
						뱃지
					</center>
				</div>
				<div class="certificationText-2 col-sm-8">
					<span class="certificationText-main">선생님 인증</span>
					<br><br>
					<span class="certificationText-sub">보육교사 자격증, 유치원/특수교사/초등학교 정교사 자격증</span>
					<br><br>
					<input type="button" id="primaryCertification"
						class="btn btn-warning certificationBtn" value="인증 받기" />
				</div>
			</div>
		</div>
		
		<center><br><br><br>
			로고<br><br>
			<H5 style="color:gray;">많은 인증을 받을수록 부모님에게 더 많은 선택을 받게 됩니다!</H5>
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