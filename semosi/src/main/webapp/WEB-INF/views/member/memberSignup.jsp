<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
}

.formArea {
	width: 100%;
	height: 50px;
}

.form-group {
	padding-bottom: 10px;
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

.inputAreaEmail{
	border-radius: 10px;
	border: 0px;
	width: 95%;
	height: 100%;
	padding-left: 10px;
}
.inputAreaEmail:focus {
	outline: none;
}
.emailArea
{
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

#phoneConfirmBtn {
	width: 90%;
	height: 100%;
}

#addressFindBtn{
	width: 100%;
	height: 100%;
}

#submitBtn
{
	width: 100%;
	height: 50px;

}
</style>
</head>
<body>

	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
		integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
		crossorigin="anonymous">

	<header> <%@ include file="/WEB-INF/views/commons/header.jsp"%>
	</header>

	<section id="wrapper">
	<div class="container">
		<div id="loginText">
			<center>
				<H1>회원정보 입력</H1>
			</center>
		</div>
		<div id="formArea">
			<center>
				<form>
					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">아이디</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <!-- 아이디를 ajax으로 바로 확인해서 알려주기 (현재사용중인지-->
								<input type="text" class="inputArea" name="userId"
								placeholder="공백 없는 영문/숫자 포함 6~20자">
							</span>
						</div>
					</div>
					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <input type="password"
								class="inputArea" name="userPwd"
								placeholder="공백 없는 영문/숫자 포함 6~20자"></span>
						</div>
					</div>
					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호
							확인</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <input type="password"
								class="inputArea" name="userPwdRe"></span>
						</div>
					</div>
					<!-- 이름과 휴대폰 본인인증 값 똑같이 하게끔?가능? -->
					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">이름</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" name="userName"></span>
						</div>
					</div>

					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">닉네임</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" name="userNickName"
								placeholder="공백 없는 문자 최대 6자"></span>
						</div>
					</div>

					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">Email</label>
						<div class="col-sm-4 m-0 p-0">
							<span class="spanArea"> <input type="text" id="EmailId" class="inputArea" ></span></div>
							<div class="col-sm-3 m-0 p-0"> @
							<span class="emailArea"><input
								type="text" id="EmailAddress" class="inputAreaEmail"> </span> 
								</div>
								<div class="col-sm-3 m-0 p-0">
								
								<span class="spanArea">
								<select class="inputArea">
									<option selected>직접 입력</option>
									<option value="gmail.com">gmail.com</option>
									<option value="naver.com">naver.com</option>
									<option value="daum.net">daum.net</option>
							</select>
							</span>
						</div>
					</div>
					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">휴대폰번호</label>
						<div class="col-sm-8 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" id="phone" placeholder="전화번호 입력"></span>
						</div>
						<div class="col-sm-2 m-0 p-0">
							<span> <input type="button" id="phoneConfirmBtn"
								class="btn btn-light" name="phone" value="인증번호 받기">
							</span>
						</div>
					</div>
					<div class="form-group row m-0">
						<div class="col-sm-2 col-form-label"></div>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" id="phoneConfirmNo" placeholder="인증번호를 입력하세요"></span>
						</div>

					</div>

					<!-- 주소를 신청서 부분에 넣을지? 여기에 넣을지 -->
					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">주소</label>
						<div class="col-sm-10 m-0 p-0">
							<span> <input type="button" class="btn btn-light" id="addressFindBtn"
								name="address" value="주소 찾기"></span>
							<!-- 주소 api사용 -->
						</div>
					</div>

					<br> <input type="button" id="submitBtn"
						class="btn btn-warning" value="회원가입" />
				</form>

				<br>

			</center>
		</div>

	</div>

	</section>

	<footer> <%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>

</body>
</html>