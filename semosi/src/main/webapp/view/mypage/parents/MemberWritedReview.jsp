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
		<%@ include file="/view/mypage/common/parentsSidebar.jsp"%>
	</div>
	<div id="content">
<!-- 여기서 부터 적용 -->


<section id="wrapper">
	<div class="container">
		<div class="title row m-0">
			<div class="col-sm-12 m-0 p-0">
				<H1>회원 신고 내역</H1>

			</div>
		</div>
		<div id="subtitle" class="row p-0 m-0 category line-name text-center">
			<div class="col-1 d-none d-lg-block p-0 m-0 font-weight-bold c-name ">번호</div>
			<div class="col-3 d-none d-lg-block p-0 m-0 font-weight-bold c-name">신고한
				회원 아이디</div>
			<div class="col-3 d-none d-lg-block p-0 m-0 font-weight-bold c-name">제목</div>
			<div class="col-2 d-none d-lg-block p-0 m-0 font-weight-bold c-name">작성자</div>
			<div class="col-2 d-none d-lg-block p-0 m-0 font-weight-bold c-name">작성일</div>
			<div class="col-1 d-none d-lg-block p-0 m-0 font-weight-bold c-name">답변여부</div>
		</div>

		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
		</div>
		<div class="row p-0 m-0 line-content text-center">
			<div class="d-none d-md-block col-md-1 p-0 ">1</div>
			<div class="col-12 col-md-3 p-0">user1</div>
			<div class="col-3 col-md-3 p-0 ">잠수탔어요</div>
			<div class="col-3 col-md-2 p-0 ">user22</div>
			<div class="col-3 col-md-2 p-0 ">2021-02-01</div>
			<div class="col-2 col-md-1 p-0 ">미답변</div>
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