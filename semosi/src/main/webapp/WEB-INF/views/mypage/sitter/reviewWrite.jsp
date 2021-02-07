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
		margin: 0px;
		height: 100%;
		width: 100%;
		}
		#sideBar{
		display: none;
		}
	}
	/*-----------------------------------*/
* {
	box-sizing: border-box;
}

.title {
	padding-top: 40px;
	padding-bottom: 40px;
	font-size: 50px;
	text-align: center;
}

#wrapper {
	margin-top: 100px;
	margin-bottom: 200px;
}

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

.c-name {
	background-color: #FF8C00;
	border-bottom: 2px solid #dbdbda;
}

.line-name {
	line-height: 40px;
}

.line-content {
	line-height: 32px;
	border-bottom: 1px solid #dbdbda;
}

.line-content:hover {
	background-color: #FDD7A0;
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


		<div id="review">
			<div class="title row m-0">
				<div class="col-sm-12 m-0 p-0">
					<center>
						<H1>받은 후기</H1>
						<br>
					</center>
				</div>
			</div>

		</div>
		<hr class="menu-hr">

		<div id="interest-info" class="row m-0">
			<div id="interest-card-img" class="col-sm-3 m-0 p-0">
				<center>
					<img
						src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png"
						class="card-img" alt="...">
				</center>
			</div>
			<div id="interest-card-info" class="col-sm-8 m-0 p-0">

				<span><b>김○규</b> <span> 유아 2명 | 채용 후기 </span> <sub>22일 전 작성</sub><br>★★★★★ <br><br><span>넘 친절하셔요 감사합니다</span>

			</div>
			<div id="interest-card-info" class="col-sm-1 m-0 p-0">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					fill="currentColor" class="bi bi-x" viewBox="0 0 16 16"> <path
					d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
				</svg>
			</div>
		</div>		<hr class="menu-hr">

		<div id="interest-info" class="row m-0">
			<div id="interest-card-img" class="col-sm-3 m-0 p-0">
				<center>
					<img
						src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png"
						class="card-img" alt="...">
				</center>
			</div>
			<div id="interest-card-info" class="col-sm-8 m-0 p-0">

				<span><b>김○규</b> <span> 유아 2명 | 채용 후기 </span> <sub>22일 전 작성</sub><br>★★★★★ <br><br><span>넘 친절하셔요 감사합니다</span>

			</div>
			<div id="interest-card-info" class="col-sm-1 m-0 p-0">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					fill="currentColor" class="bi bi-x" viewBox="0 0 16 16"> <path
					d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
				</svg>
			</div>
		</div>		<hr class="menu-hr">

		<div id="interest-info" class="row m-0">
			<div id="interest-card-img" class="col-sm-3 m-0 p-0">
				<center>
					<img
						src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png"
						class="card-img" alt="...">
				</center>
			</div>
			<div id="interest-card-info" class="col-sm-8 m-0 p-0">

				<span><b>김○규</b> <span> 유아 2명 | 채용 후기 </span> <sub>22일 전 작성</sub><br>★★★★★ <br><br><span>넘 친절하셔요 감사합니다</span>

			</div>
			<div id="interest-card-info" class="col-sm-1 m-0 p-0">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					fill="currentColor" class="bi bi-x" viewBox="0 0 16 16"> <path
					d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
				</svg>
			</div>
		</div>		<hr class="menu-hr">

		<div id="interest-info" class="row m-0">
			<div id="interest-card-img" class="col-sm-3 m-0 p-0">
				<center>
					<img
						src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png"
						class="card-img" alt="...">
				</center>
			</div>
			<div id="interest-card-info" class="col-sm-8 m-0 p-0">

				<span><b>김○규</b> <span> 유아 2명 | 채용 후기 </span> <sub>22일 전 작성</sub><br>★★★★★ <br><br><span>넘 친절하셔요 감사합니다</span>

			</div>
			<div id="interest-card-info" class="col-sm-1 m-0 p-0">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					fill="currentColor" class="bi bi-x" viewBox="0 0 16 16"> <path
					d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
				</svg>
			</div>
		</div>
				<hr class="menu-hr">

		<div id="interest-info" class="row m-0">
			<div id="interest-card-img" class="col-sm-3 m-0 p-0">
				<center>
					<img
						src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png"
						class="card-img" alt="...">
				</center>
			</div>
			<div id="interest-card-info" class="col-sm-8 m-0 p-0">

				<span><b>김○규</b> <span> 유아 2명 | 채용 후기 </span> <sub>22일 전 작성</sub><br>★★★★★ <br><br><span>넘 친절하셔요 감사합니다</span>

			</div>
			<div id="interest-card-info" class="col-sm-1 m-0 p-0">
				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
					fill="currentColor" class="bi bi-x" viewBox="0 0 16 16"> <path
					d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
				</svg>
			</div>
		</div>
	<hr>
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