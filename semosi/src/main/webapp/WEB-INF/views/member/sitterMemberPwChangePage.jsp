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

.form-group {
	padding: 5px 0px 5px 0px;
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

#currentPwCheckBtn {
	width: 90%;
	height: 100%;
}

#submitBtn {
	width: 100%;
	height: 50px;
}

.form-message {
	text-align: left;
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


	<script>
		//전체 유효성 검사 진행
		function totalCheck() {
			if (currentPwCheck()) {
				$('#memberPw').focus();
				return false;
			} else if (!pwCheck()) {
				$('#changePw').focus();
				return false;
			} else if (!pwReCheckFunction()) {
				$('#changePwRe').focus();
				return false;
			} else {
				console.log("유효성검사완료");
				document.memberPwChangeForm.submit();
				return true;
			}
		}

		//현재 비밀번호가 디비의 비밀번호와 일치하는지 ajax로 확인 
		function currentPwCheck() {
			var memberPw = $('#memberPw').val();

			if ((/^[a-zA-Z0-9`~!@#$%^&*(),.?\[\]\'\"=+:;{}<>|_-]{8,16}$/
					.test(memberPw))) {
				//유효성 검사를 통과 하였을 때 -> ajax로 비밀번호 일치하는지 확인

				$.ajax({
					url : "/parentCurrentPwCheck.sms",
					type : "post",
					data : {
						"memberPw" : memberPw
					},
					success : function(result) {
						if (result == "true") {
							//일치할때 
							$('#currentPwMessage').text("현재 비밀번호와 일치합니다.");
							$('#currentPwMessage').show();
							$('#currentPwMessage').css('color', 'green');
							//readonly속성 
							$('#memberPw').attr("readonly", true);
							return true;
						} else {
							//일치하지않을때 
							$('#currentPwMessage').text("현재 비밀번호를 다시 확인해주세요.");
							$('#currentPwMessage').show();
							$('#currentPwMessage').css('color', 'red');

							return false;
						}
					},
					error : function() {
						console.log("ajax 통신 실패");
					}

				});

			} else {
				//통과하지 못했을때
				$('#currentPwMessage').text("8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요");
				$('#currentPwMessage').show();
				$('#currentPwMessage').css('color', 'red');

				return false;
			}

		}

		//비밀번호 유효성검사
		function pwCheck() {
			var changePw = $('#changePw').val();

			if ((/^[a-zA-Z0-9`~!@#$%^&*(),.?\[\]\'\"=+:;{}<>|_-]{8,16}$/
					.test(changePw))) {
				//유효성 검사를 통과 하였을 때

				$('#changePwMessage').text("현재 비밀번호는 사용 가능합니다.");
				$('#changePwMessage').show();
				$('#changePwMessage').css('color', 'green');
				return true;
			} else {
				//통과하지 못했을때
				$('#changePwMessage').text("8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요");
				$('#changePwMessage').show();
				$('#changePwMessage').css('color', 'red');
				return false;
			}

		}

		//비밀번호 + 비밀번호 확인 일치 여부 
		function pwReCheckFunction() {

			var changePw = $('#changePw').val();
			var changePwRe = $('#changePwRe').val();

			if (changePw != changePwRe) {
				$('#changePwReMessage').text("비밀번호가 일치하지 않습니다.");
				$('#changePwReMessage').show();
				$('#changePwReMessage').css('color', 'red');
				return false;
			} else {
				$('#changePwReMessage').hide();
				return true;
			}
		}
	</script>
	<header> <%@ include file="/WEB-INF/views/commons/header.jsp"%>
	</header>


	<section id="wrapper">
	<div class="container">
		<div id="loginText">
			<center>
				<H1>비밀번호 변경</H1>
			</center>
		</div>
		<div id="formArea">
			<center>
				<form name="memberPwChangeForm" action="/parentPwChange.sms"
					method="post">


					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-3 col-form-label">현재
							비밀번호</label>


						<div class="col-sm-7 m-0 p-0">
							<span class="spanArea"> <input type="password"
								class="inputArea" name="memberPw" id="memberPw"
								placeholder="공백 없는 영문, 숫자, 특수문자  8~16자"></span>
						</div>

						<div class="col-sm-2 m-0 p-0">
							<span> <input type="button" id="currentPwCheckBtn"
								class="btn btn-light phoneBtn" onclick="currentPwCheck();"
								value="확인" />
							</span>
						</div>
					</div>

					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-3 message"></label> <span
							class="col-sm-9 message p-0" style="display: none;"
							id="currentPwMessage"></span>
					</div>

					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-3 col-form-label">변경할
							비밀번호</label>
						<div class="col-sm-9 m-0 p-0">
							<span class="spanArea"> <input type="password"
								class="inputArea" name="changePw" id="changePw"
								onblur="pwCheck();" placeholder="공백 없는 영문, 숫자, 특수문자  8~16자"></span>
						</div>
					</div>

					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-3 message"></label> <span
							class="col-sm-9 message p-0" style="display: none;"
							id="changePwMessage"></span>
					</div>

					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-3 col-form-label">변경할
							비밀번호 확인</label>
						<div class="col-sm-9 m-0 p-0">
							<span class="spanArea"> <input type="password"
								class="inputArea" name="changePwRe" id="changePwRe"
								onblur="pwReCheckFunction();"></span>
						</div>
					</div>

					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-3 message"></label> <span
							class="col-sm-9 message p-0" style="display: none;"
							id="changePwReMessage"></span>
					</div>

					<br> <input type="button" id="submitBtn"
						class="btn btn-warning" onclick="totalCheck();" value="회원가입" />
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