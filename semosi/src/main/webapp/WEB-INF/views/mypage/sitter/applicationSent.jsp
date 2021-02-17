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
		margin: 0px;
		padding: 0px;
		box-sizing:border-box;
	}

/*---- contents ----*/
	#parentsApplicationSent_contents{
		width: 100%;
		height: 100%;
		margin: 0px auto;
	}

/*---- mypage-title ----*/
	#interest-title{
		margin-top:20px;
		font-size:28px;
		font-weight:600;
		display:block;
		padding-bottom: 25px;
	}
	#interest-title-1{
		height: 70px;
		padding-top: 30px;
		margin: 0px;
		text-align: center;
	}
	

/*---- interest-card ----*/
	#interest-info{
		height: 100%;
		width: 100%;
		margin: 0px;
		padding: 5px;
	}
	
	#interest-card{
		height: 100%;
		width: 100%;
		margin: 0px;
		padding: 0px;
	}
	
	#interest-card-info{
		height: 100%;
		width: 100%;
		margin: 10px 0px 10px 0px;
		padding:0px;
		cursor: pointer;
	}
	
	#interest-card-img{
		height: 100%;
		width : 100%;
		padding: 8px 0px 8px 0px;
		margin: 5px 0px 5px 0px;
		text-align: center;
	}
	#interest-card-img>img{
		width: 80px;
		height: 80px;
	}
	#userInfo{
	width: 100%;
	height: 100%;
	margin:0px;
	padding: 0px;
	
	
	}
	.userInfo-p{
		padding: 0px;
		font-size: 14px;
	}

/*---------------------------------*/	
	.menu-hr{
		margin: -1px 0px 0px; 
		height: 15px; 
		background-color: #f3f1f1;
	}
	.hr{
		margin: 0px auto; 
		height: 0.5px; 
		background-color: #f3f1f1; 
		width: 95%;
		color: rgb(172, 193, 191);
		text-align: center;
	}

	#hr-title{
		margin: 0px auto; 
		height: 0.5px; 
		background-color: #f3f1f1; 
		color: rgb(172, 193, 191);
		text-align: center;
	}
	 #deleteBtn:hover{
		background-color: #f3f1f1;
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

	<div id="parentsApplicationSent_contents">
  		<div id="interest-title">
  			<div id="interest-title-1"><span>내가 신청한 구인 현황</span></div>	
  		</div>
  		<hr class="menu-hr">
  		<div id="interest-info" class="row">
  			<div id="interest-card-img" class="col-md-2 col-sm-12">
  				<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" class="card-img" alt="...">
  			</div>
  			<div id="interest-card-info" class="col-md-10 col-sm-12" >
  				<div id="userInfo" class="row">
  					<div class="userInfo-p col-11">
  						<div id="userInfo-1" class="userInfo-p col-12"><span><b>김○규</b> <sub>22일 전 작성</sub></span></div>
  						<div id="userInfo-2" class="userInfo-p col-12"><span>서울시 은평구 녹번동</span></div>
  						<div id="userInfo-3" class="userInfo-p col-12"><span>20세 | 희망시급 10,000원</span></div>
  						<div id="userInfo-4" class="userInfo-p col-12">★★★★★<span>후기 0개</span>
  							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-video-fill" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M0 5a2 2 0 0 1 2-2h7.5a2 2 0 0 1 1.983 1.738l3.11-1.382A1 1 0 0 1 16 4.269v7.462a1 1 0 0 1-1.406.913l-3.111-1.382A2 2 0 0 1 9.5 13H2a2 2 0 0 1-2-2V5z"/>
							</svg>
  							<span>CCTV 동의함</span>
  						</div>
  					</div>
  					<div id="userInfo-6" class="userInfo-p col-1">
  						<svg id="deleteBtn" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  							<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
						</svg>
					</div>
  				</div>
  			</div>
  		</div>
  		<hr class="hr">
  		<div id="interest-info" class="row">
  			<div id="interest-card-img" class="col-md-2 col-sm-12">
  				<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" class="card-img" alt="...">
  			</div>
  			<div id="interest-card-info" class="col-md-10 col-sm-12" >
  				<div id="userInfo" class="row">
  					<div class="userInfo-p col-11">
  						<div id="userInfo-1" class="userInfo-p col-12"><span><b>김○규</b> <sub>22일 전 작성</sub></span></div>
  						<div id="userInfo-2" class="userInfo-p col-12"><span>서울시 은평구 녹번동</span></div>
  						<div id="userInfo-3" class="userInfo-p col-12"><span>20세 | 희망시급 10,000원</span></div>
  						<div id="userInfo-4" class="userInfo-p col-12">★★★★★<span>후기 0개</span>
  							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-video-fill" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M0 5a2 2 0 0 1 2-2h7.5a2 2 0 0 1 1.983 1.738l3.11-1.382A1 1 0 0 1 16 4.269v7.462a1 1 0 0 1-1.406.913l-3.111-1.382A2 2 0 0 1 9.5 13H2a2 2 0 0 1-2-2V5z"/>
							</svg>
  							<span>CCTV 동의함</span>
  						</div>
  					</div>
  					<div id="userInfo-6" class="userInfo-p col-1">
  						<svg id="deleteBtn" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  							<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
						</svg>
					</div>
  				</div>
  			</div>
  		</div>
  		<hr class="hr">
  		<div id="interest-info" class="row">
  			<div id="interest-card-img" class="col-md-2 col-sm-12">
  				<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" class="card-img" alt="...">
  			</div>
  			<div id="interest-card-info" class="col-md-10 col-sm-12" >
  				<div id="userInfo" class="row">
  					<div class="userInfo-p col-11">
  						<div id="userInfo-1" class="userInfo-p col-12"><span><b>김○규</b> <sub>22일 전 작성</sub></span></div>
  						<div id="userInfo-2" class="userInfo-p col-12"><span>서울시 은평구 녹번동</span></div>
  						<div id="userInfo-3" class="userInfo-p col-12"><span>20세 | 희망시급 10,000원</span></div>
  						<div id="userInfo-4" class="userInfo-p col-12">★★★★★<span>후기 0개</span>
  							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-video-fill" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M0 5a2 2 0 0 1 2-2h7.5a2 2 0 0 1 1.983 1.738l3.11-1.382A1 1 0 0 1 16 4.269v7.462a1 1 0 0 1-1.406.913l-3.111-1.382A2 2 0 0 1 9.5 13H2a2 2 0 0 1-2-2V5z"/>
							</svg>
  							<span>CCTV 동의함</span>
  						</div>
  					</div>
  					<div id="userInfo-6" class="userInfo-p col-1">
  						<svg id="deleteBtn" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  							<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
						</svg>
					</div>
  				</div>
  			</div>
  		</div>
  		<hr class="hr">
  		<div id="interest-info" class="row">
  			<div id="interest-card-img" class="col-md-2 col-sm-12">
  				<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" class="card-img" alt="...">
  			</div>
  			<div id="interest-card-info" class="col-md-10 col-sm-12" >
  				<div id="userInfo" class="row">
  					<div class="userInfo-p col-11">
  						<div id="userInfo-1" class="userInfo-p col-12"><span><b>김○규</b> <sub>22일 전 작성</sub></span></div>
  						<div id="userInfo-2" class="userInfo-p col-12"><span>서울시 은평구 녹번동</span></div>
  						<div id="userInfo-3" class="userInfo-p col-12"><span>20세 | 희망시급 10,000원</span></div>
  						<div id="userInfo-4" class="userInfo-p col-12">★★★★★<span>후기 0개</span>
  							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-video-fill" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M0 5a2 2 0 0 1 2-2h7.5a2 2 0 0 1 1.983 1.738l3.11-1.382A1 1 0 0 1 16 4.269v7.462a1 1 0 0 1-1.406.913l-3.111-1.382A2 2 0 0 1 9.5 13H2a2 2 0 0 1-2-2V5z"/>
							</svg>
  							<span>CCTV 동의함</span>
  						</div>
  					</div>
  					<div id="userInfo-6" class="userInfo-p col-1">
  						<svg id="deleteBtn" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  							<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
						</svg>
					</div>
  				</div>
  			</div>
  		</div>
  		<hr class="menu-hr">
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