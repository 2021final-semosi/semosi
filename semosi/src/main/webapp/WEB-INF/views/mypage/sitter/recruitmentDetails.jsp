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
* {
	box-sizing: border-box;
}

.title {
	padding-top: 30px;
	padding-bottom: 28px;
	font-size: 28px;
	font-weight:600;
	text-align: center;
}

#wrapper {
	margin-top: 20px;
}

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

.c-name {
	background-color: #f6d257;
	border-bottom: 2px solid #dbdbda;
}

.line-name {
	line-height: 40px;
}

.line-content {
	line-height: 32px;
	border-bottom: 1px solid #dbdbda;
	p
}

.line-content:hover {
	/* background-color: #FDD7A0; */
	cursor: pointer;
}

.menu-hr{
		margin: -1px 0px 0px; 
		height: 15px; 
		background-color: #f6d257;
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
		<div class="title row m-0">
			<div class="col-sm-12 m-0 p-0"><span>내 채용 내역</span></div>
		</div>
		<hr class="menu-hr d-block d-lg-none">
		<div id="subtitle" class="row p-0 m-0 category line-name text-center">
			<div class="col-1 d-none d-lg-block p-0 m-0 font-weight-bold c-name ">번호</div>
			<div class="col-3 d-none d-lg-block p-0 m-0 font-weight-bold c-name">아이디</div>
			<div class="col-3 d-none d-lg-block p-0 m-0 font-weight-bold c-name">시작일</div>
			<div class="col-3 d-none d-lg-block p-0 m-0 font-weight-bold c-name">종료일</div>
			<div class="col-2 d-none d-lg-block p-0 m-0 font-weight-bold c-name">채용여부</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-01</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-10</div>
			<div class="col-4 col-md-2 p-0 ">채용완료</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-01</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-10</div>
			<div class="col-4 col-md-2 p-0 ">채용완료</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-01</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-10</div>
			<div class="col-4 col-md-2 p-0 ">채용완료</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-01</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-10</div>
			<div class="col-4 col-md-2 p-0 ">채용완료</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-01</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-10</div>
			<div class="col-4 col-md-2 p-0 ">채용완료</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-01</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-10</div>
			<div class="col-4 col-md-2 p-0 ">채용완료</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-01</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-10</div>
			<div class="col-4 col-md-2 p-0 ">채용완료</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-01</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-10</div>
			<div class="col-4 col-md-2 p-0 ">채용완료</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-01</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-10</div>
			<div class="col-4 col-md-2 p-0 ">채용완료</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-01</div>
			<div class="col-4 col-md-3 p-0 ">2021-02-10</div>
			<div class="col-4 col-md-2 p-0 ">채용완료</div>
		</div>

		<div class="row p-0 m-0 boardNavi">
			<div class="col-12 p-0 m-0 overview">
				<br> <br>

				<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
				</nav>
			</div>
		</div>
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