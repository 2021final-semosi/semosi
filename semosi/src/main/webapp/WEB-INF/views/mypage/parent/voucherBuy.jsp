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

.voucherChoice {
	margin: 10px;
	border: 4px solid #FF8C00;
	border-radius: 15px;
}

.voucherPayBtn
{
	margin:50px;
	width:50%;
	height:50px;
}
.voucherRadioBtn
{
	width:50px;
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

<section id="wrapper">
	<div class="container">
		<div class="title row m-0">
			<div class="col-sm-12 m-0 p-0">
				<center>
					<H1>이용권 선택하기</H1>
					<br> <img src="/resources/images/voucher.png"> <br>
					<br>
					<H3>부모 회원 시터 회원 상관없이 누구나 사용 가능한 이용권</H3>
					-> 그런데 두개 다 사용 불가하고 아이디 한개만 만드니까 멘트 변경해도되지않을까? 
					<br>
				</center>
			</div>
		</div>
		<form>
		<div class="voucher row m-0">
			<div class="col-sm-4 m-0 p-0">
				<div class="voucherChoice">
					<center>
						<br>
						<H5>&nbsp;</H5>
						<H2>7일 이용권</H2>
						<br>
						<H5>5,000 원</H5>
						<br>
						<br>
					</center>
				</div>

				<center>
					<input type="radio" name="voucherRadio">
				</center>
			</div>
			<div class="col-sm-4 m-0 p-0">
				<div class="voucherChoice">
					<center>
						<br>
						<H5 style="color: blue;">Best!</H5>
						<H2>14일 이용권</H2>
						<br>
						<H5>8,000 원</H5>
						<br>
						<br>
					</center>
				</div>

				<center>
					<input type="radio" name="voucherRadio" >
				</center>

			</div>
			<div class="col-sm-4 m-0 p-0">
				<div class="voucherChoice">
					<center>
						<br>
						<H5>&nbsp;</H5>
						<H2>30일 이용권</H2>
						<br>
						<H5>15,000 원</H5>
						<br>
						<br>
					</center>
				</div>

				<center>
					<input type="radio" name="voucherRadio" class="voucherRadioBtn">
				</center>

		</form>
			</div>
		</div>
		<center>
		라디오 버튼 키우는 방법?
		<br>
			<input type="button" id="voucherPayBtn"
				class="btn btn-warning voucherPayBtn" value="선택한 이용권 구매하기" />
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