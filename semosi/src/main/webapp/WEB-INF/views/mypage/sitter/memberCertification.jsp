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
	color: gray;
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

#mainCertification {
	border: 7px solid #FF8C00;
	border-radius: 10px;
}


.certification {
	padding-top: 40px;
	padding-bottom: 40px;
}


#dividingLine {
	width: 95%;
}

.certificationText {
	float: left;
}

.certificationBtn{
	width:85%;
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

		<div id="mainCertification">
			<div class="title row m-0">
				<div class="col-sm-12 m-0 p-0">
					<center>
						<H1>내 인증 관리</H1>
						<br>
						<H5>인증을 많이 받을수록, 내 프로필에 인증 뱃지가 추가되어 다른 맘시터보다 훨씬 돋보이게 됩니다.</H5>
						<br>
					</center>
				</div>
			</div>

			<div class="certification row m-0">
				<div class="col-sm-4 m-0 p-0">
					<center>
						<img src="/resources/images/none_certification.PNG"><br>인증
						뱃지
					</center>
				</div>
				<div class="col-sm-8 m-0 p-0">
					<H3 class="certificationText">등초본 인증</H3>
					<H3 class="certificationText" style="color: red;">(필수)</H3>
					<br><br><br>
					<H5>주민 등록 등본 또는 주민 등록 초본으로 인증받으세요.</H1>
					<H5 style="color:blue;">* 발급일 6개월 이내만 유효</H1>
					<br>
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
						<img src="/resources/images/none_certification.PNG"><br>인증
						뱃지
					</center>
				</div>
				<div class="col-sm-8 m-0 p-0">
					<H3>건강 인증</H3>
					<br>
					<H5>건강 진단 결과서 (보건소 발급)</H5>
					<br>
					<input type="button" id="subCertification1"
						class="btn btn-warning certificationBtn" value="인증 받기" />
				</div>
			</div>
			<center>
				<hr id="dividingLine">
			</center>
			<div class="certification row m-0">
				<div class="col-sm-4 m-0 p-0">
					<center>
						<img src="/resources/images/none_certification.PNG"><br>인증
						뱃지
					</center>
				</div>
				<div class="col-sm-8 m-0 p-0">
					<H3>부모 인증</H3>
					<br>
					<H5>가족 관계 증명서</H5>
					<H5 style="color:gray;">- 발급일 6개월 이내만 유효</H5>
					<br>
					<input type="button" id="subCertification2"
						class="btn btn-warning certificationBtn" value="인증 받기" />
				</div>
			</div>
			<center>
				<hr id="dividingLine">
			</center>
			<div class="certification row m-0">
				<div class="col-sm-4 m-0 p-0">
					<center>
						<img src="/resources/images/none_certification.PNG"><br>인증
						뱃지
					</center>
				</div>
				<div class="col-sm-8 m-0 p-0">
					<H3>선생님 인증</H3>
					<br>
					<H5>보육교사 자격증, 유치원/특수교사/초등학교 정교사 자격증</H5>
					<br>
					<input type="button" id="subCertification2"
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