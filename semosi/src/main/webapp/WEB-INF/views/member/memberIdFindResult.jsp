<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<style>
* {
	box-sizing: border-box;
}

.formArea {
	width: 100%;
	height: 50px;
}

#wrapper {
	padding-top: 100px;
	padding-bottom: 200px;
	width: 60%;
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
}

#loginText {
	margin-bottom: 70px;
}

.col-form-label {
	margin: 0px;
	padding: 0px;
	text-decoration: bold;
	height: 50px;
	text-align: left;
	line-height: 50px;
}

#submitBtnSuccess {
	width: 50%;
}
#submitBtnFalse {
	width: 50%;
}

</style>
</head>
<body>
	<!-- jQuery CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>

	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
		integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
		crossorigin="anonymous">
	<%
		String searchId = (String) request.getAttribute("searchId");
	%>

	<header> <%@ include file="/WEB-INF/views/commons/header.jsp"%>
	</header>


	<section id="wrapper">
	<div class="container">
		<span class="spanArea">
			<div id="loginText">
				<br>
				<br>
				<center>
					<H1>아이디 찾기</H1>
				</center>
			</div>
			<div id="formArea">
				<center>
					<div id="findIdArea">
						<%
							if (searchId == "") {
						%>
						
						<center>
							<br>
							<br>
							<H4>입력하신 휴대폰 번호로 가입한 회원은 존재하지 않습니다.</H4><br>
							<H5>
								세모시에 가입하고 다양한 부모/시터와 만나보세요!
								</H5>
							<br>
							<br> <input type="button" id="submitBtnFalse"
								class="btn btn-warning" value="로그인 하러 가기" /> <br> <br>
							<br>
						</center>
						
						
						<%
							} else {
						%>
						<center>
							<br>
							<br>
							<H4>
								입력하신 휴대폰 번호로 가입한 회원은
								<%=searchId%>입니다.
							</H4>
							<br>
							<br> <input type="button" id="submitBtnSuccess"
								class="btn btn-warning" value="로그인 하러 가기" /> <br> <br>
							<br>
						</center>

						<%
							}
						%>
					</div>
					<center>
			</div>
		</span>
	</div>

	</section>


	<footer> <%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>

</body>
</html>