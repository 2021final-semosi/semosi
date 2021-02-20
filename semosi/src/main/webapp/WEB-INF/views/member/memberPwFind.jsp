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

.phoneBtn {
	width: 90%;
	height: 100%;
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
				<form name="memberPwChange" action="/memberPwChangeToPhone.sms"
					method="post">



					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-3 col-form-label"> 휴대폰번호</label>
						<div class="col-sm-7 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" id="phone" placeholder="회원 가입시에 등록한 휴대폰 번호"
								onblur="phoneCheck();" maxlength="11" name="phone"></span>
						</div>
						<div class="col-sm-2 m-0 p-0">
							<span> <input type="button" id="sendSMSBtn"
								onclick="sendSMS();" class="btn btn-light phoneBtn"
								value="인증 번호 받기"> <input type="button" id="checkSMSBtn"
								class="btn btn-light phoneBtn" style="display: none;"
								onclick="checkSMS();" value="인증 번호 확인"> <input
								type="hidden" id="confirmPhone" value="" />
							</span>
						</div>
					</div>

					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-3 message"></label> <span
							class="col-sm-9 message p-0" style="display: none;"
							id="phoneMessage"></span>
					</div>

					<div class="form-group row m-0">
						<div class="col-sm-3 col-form-label"></div>
						<div class="col-sm-9 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" id="authenticationNumber"
								placeholder="인증번호 입력" maxlength="6"></span>
						</div>

					</div>


					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-3 message"></label> <span
							class="col-sm-4 message p-0" style="display: none;"
							id="confirmMessage"></span>
					</div>

					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-3 col-form-label">새 비밀번호</label>
						<div class="col-sm-9 m-0 p-0">
							<span class="spanArea"> <input type="password"
								class="inputArea" name="memberPw" id="memberPw"
								onblur="pwCheck();" placeholder="공백 없는 영문, 숫자, 특수문자  8~16자"></span>
						</div>
					</div>

					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-3 message"></label> <span
							class="col-sm-9 message p-0" style="display: none;"
							id="pwCheckMessage"></span>
					</div>

					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-3 col-form-label">새 비밀번호
							확인</label>
						<div class="col-sm-9 m-0 p-0">
							<span class="spanArea"> <input type="password"
								class="inputArea" name="memberPwRe" id="memberPwRe"
								onblur="passwordCheckFunction();"></span>
						</div>
					</div>

					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-2 message"></label> <span
							class="col-sm-10 message p-0" style="display: none;"
							id="pwReMessage"></span>
					</div>

	<script>
		var sendSMSBtn = $('#sendSMSBtn');

		function phoneCheck() {
			var phone = $('#phone').val();

			if (!(/^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$/
					.test(phone))) {
				$('#phoneMessage').show();
				$('#phoneMessage').text("핸드폰 번호는 -를 제외한 숫자만 입력 가능합니다.");
				$('#phoneMessage').css('color', 'red');
				return false;

			} else if (!(/^[0][1][0][0-9]*$/.test(phone))) {
				$('#phoneMessage').show();
				$('#phoneMessage').text("정확한 핸드폰 번호를 입력해주세요.");
				$('#phoneMessage').css('color', 'red');
				return false;
			} else {
				//유효성 검사 통과하였을 때 	
				return true;
			}

		}

		function sendSMS() {
			if (phoneCheck()) { //유효성 검사가 통과하였을때만 진행 
				$
						.ajax({
							url : "/sendSMS.sms",
							data : {
								receiver : $('#phone').val()
							},
							type : "post",
							success : function(result) {
								if (result == "true") {
									$('#phone').attr("readonly", true);
									$('#phoneMessage').show();
									$('#phoneMessage').text(
											"문자 전송 성공! 인증 번호를 입력해주세요.");
									$('#phoneMessage').css('color', 'green');

									sendSMSBtn.hide();
									$('#checkSMSBtn').show();
									return true;

								}
							},
							error : function() {
								$('#phoneMessage').show();
								$('#phoneMessage').text("문자 전송 실패");
								$('#phoneMessage').css('color', 'red');
								console.log('send 에러');
								return false;
							}
						});

			} else {
				$('#phone').focus();

				$('#phoneMessage').show();
				$('#phoneMessage').text("정확한 핸드폰 번호를 입력해주세요.");
				$('#phoneMessage').css('color', 'red');
				return false;
			}
		}

		function checkSMS() {
			if ($('#authenticationNumber').val() != '') {
				$.ajax({
					url : "/checkSMS.sms",
					data : {
						checkNumber : $('#authenticationNumber').val()
					},
					type : "post",
					success : function(result) {
						if (result == "true") {
							$('#authenticationNumber').attr("readonly", true);
							$('#confirmMessage').hide();
							alert('휴대폰 인증이 완료되었습니다. 새 비밀번호를 입력해 주세요.');

							$('#confirmPhone').val("true");
							return true;
						} else {
							$('#confirmMessage').show();
							$('#confirmMessage').text("인증 번호가 일치하지않습니다.");
							$('#confirmMessage').css('color', 'red');
							return false;

						}
					},
					error : function() {
						console.log('check 에러');
					}
				});
			} else {

				$('#authenticationNumber').focus();

				$('#confirmMessage').show();
				$('#confirmMessage').text("인증 번호를 입력해주세요.");
				$('#confirmMessage').css('color', 'red');
				return false;
			}
		}

		//비밀번호 유효성검사
		function pwCheck() {
			var memberPw = $('#memberPw').val();

			if ((/^[a-zA-Z0-9`~!@#$%^&*(),.?\[\]\'\"=+:;{}<>|_-]{8,16}$/
					.test(memberPw))) {
				//유효성 검사를 통과 하였을 때

				$('#pwCheckMessage').text("현재 비밀번호는 사용 가능합니다.");
				$('#pwCheckMessage').show();
				$('#pwCheckMessage').css('color', 'green');
				return true;
			} else {
				//통과하지 못했을때
				$('#pwCheckMessage').text("8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요");
				$('#pwCheckMessage').show();
				$('#pwCheckMessage').css('color', 'red');
				return false;
			}

		}

		//비밀번호 + 비밀번호 확인 일치 여부 
		function passwordCheckFunction() {

			var memberPw = $('#memberPw').val();
			var memberPwRe = $('#memberPwRe').val();

			if (memberPw != memberPwRe) {
				$('#pwReMessage').text("비밀번호가 일치하지 않습니다.");
				$('#pwReMessage').show();
				$('#pwReMessage').css('color', 'red');
				return false;
			} else {
				$('#pwReMessage').hide();
				return true;
			}
		}

		function totalCheck() {
			if ($('#confirmPhone').val() == 'true') {//인증 확인 
				if (!pwCheck()) {
					$('#memberPw').focus();
					return false;
				} else if (!passwordCheckFunction()) {
					$('#memberPwRe').focus();
					return false;
				} else {
					document.memberPwChange.submit();
					return true;
				}
			} else {
				alert("휴대폰 인증을 완료해주세요.");
			}

		}
	</script>



					<br> <input type="button" id="submitBtn"
						class="btn btn-warning" onclick="totalCheck();"
						value="비밀번호 변경하기" />
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