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

.birthArea {
	display: inline-block;
	border: 1px solid #dbdbda;
	width: 33.3%;
	height: 100%;
}

#birthYY {
	border-right: 0px;
	border-radius: 10px 0px 0px 10px;
}

#birthDD {
	border-left: 0px;
	border-radius: 0px 10px 10px 0px;
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

.inputAreaEmail {
	border-radius: 10px;
	border: 0px;
	width: 95%;
	height: 100%;
	padding-left: 10px;
}

.inputAreaEmail:focus {
	outline: none;
}

.emailArea {
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

.phoneBtn {
	width: 90%;
	height: 100%;
}

#addressFindBtn {
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

	<!-- 주소 api -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<!-- jQuery CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>

	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
		integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
		crossorigin="anonymous">


	<script>
		//핸드폰번호 디비에있는지 확인
	
		//전체 유효성 검사 진행
		function totalCheck() {

			console.log("유효성시작");
			
			if (idCheck()) {
				$('#memberId').focus();
				return false;
			} else if (!pwCheck()) {
				$('#memberPw').focus();
				return false;
			} else if (!passwordCheckFunction()) {
				$('#memberPwRe').focus();
				return false;
			} else if (!nameCheck()) {
				$('#memberName').focus();
				return false;
			} else if (!birthYYCheck()) {
				$('#yy').focus();
				return false;
			} else if ($('#mm').val() == "") { //select 선택 무조건 하게끔
				alert("생년월일을 입력해주세요.");
				return false;
			} else if (!birthDDCheck()) {
				$('#dd').focus();
				return false;
			} else if ($('#gender').val() == "") { //성별 select 무조건 하게끔
				alert("성별을 입력해주세요.");
				return false;
			} else if (phoneCheck()) {
				$('#phone').focus();
				return false;
			} else if (!authenticationNumberCheck()) {
				$('#authenticationNumber').focus();
				return false;
			} else if (!($('#confirmPhone').val()=="true")) {
				alert("휴대폰 본인인증을 완료해주세요.");
				return false;
			} else if ($('#sample6_address').val() == "") { //주소가 비어있다면 false

				alert("주소를 입력해주세요.");
				sample6_execDaumPostcode();
				return false;
			} else {
				document.memberSignupForm.submit();
				return true;
			}
			//그리고 인증 제대로 확인 되었을때만 넘어가게끔 -> 임의 작성시에 넘어갈수도있을거같음 

		}

		//id유효성검사 + DB 존재여부 확인
		function idCheck() {
			var memberId = $('#memberId').val();

			//공백 없는 영문 대 소문자, 숫자, 특수기호 (_)(-)포함 6~20자 
			if ((/^[A-Za-z0-9][A-Za-z0-9_-]{5,19}$/.test(memberId))) {
				//유효성 검사를 통과 하였을 때 -> ajax로 아이디 중복확인

				$.ajax({
					url : "/memberIdCheck.sms",
					type : "post",
					data : {
						"memberId" : memberId
					},
					success : function(result) {
						if (result == "false") {
							//사용 불가능 할 때
							$('#idCheckMessage').text("이미 사용중이거나 탈퇴한 아이디입니다.");
							$('#idCheckMessage').show();
							$('#idCheckMessage').css('color', 'red');
							return false;
						} else {
							//사용 가능할 때
							$('#idCheckMessage').text("현재 아이디는 사용 가능합니다.");
							$('#idCheckMessage').show();
							$('#idCheckMessage').css('color', 'green');
							return true;
						}
					},
					error : function() {
						console.log("ajax 통신 실패");
					}

				});

			} else {
				//통과하지 못했을때
				if ((/^[_-][A-Za-z0-9_-]{5,19}$/.test(memberId))) {
					$('#idCheckMessage')
							.text("아이디의 첫 글자는 영어 대 소문자, 숫자만 가능합니다.");
					$('#idCheckMessage').show();
					$('#idCheckMessage').css('color', 'red');
					return false;
				} else {
					$('#idCheckMessage').text(
							"6~20자의 영문 대 소문자, 숫자와 특수기호(_),(_)만 사용 가능 합니다.");
					$('#idCheckMessage').show();
					$('#idCheckMessage').css('color', 'red');
					return false;
				}
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

		//주소 api
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.

		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample6_address').value = addr;
						}
					}).open();
		}

		//생년월일 유효성 검사 
		function birthYYCheck() {
			var birthYY = $('#yy').val();

			if (!(/^[0-9]*$/.test(birthYY))) {//통과하지 못했을때 
				$('#birthMessage').show();
				$('#birthMessage').text("태어난 연도는 숫자로 4글자만 입력 가능합니다.");
				$('#birthMessage').css('color', 'red');
				return false;

			} else if (!(/^[12][09][0-9][0-9]$/.test(birthYY))) {
				$('#birthMessage').show();
				$('#birthMessage').text("정확한 연도를 입력해주세요.");
				$('#birthMessage').css('color', 'red');
				return false;
			} else {

				$('#birthMessage').hide();
				return true;
			}

		}

		function birthDDCheck() {
			var birthDD = $('#dd').val();

			if (!(/^[0-9]?[0-9]$/.test(birthDD))) {
				$('#birthMessage').show();
				$('#birthMessage').text("태어난 일은 숫자로만 입력 가능합니다.");
				$('#birthMessage').css('color', 'red');
				return false;

			} else {
				//통과했을때
				$('#birthMessage').hide();
				return true;
			}
		}

		//이름 유효성 검사
		function nameCheck() {
			var name = $('#memberName').val();

			if (!(/^[가-힣]{1,2}[가-힣]*$/.test(name))) {
				$('#nameMessage').show();
				$('#nameMessage').text("이름은 한글로만 입력이 가능합니다.");
				$('#nameMessage').css('color', 'red');
				return false;

			} else {
				//통과했을때
				$('#nameMessage').hide();
				return true;
			}
		}

		//휴대폰번호 유효성 검사 
		function phoneCheck() {
			var phone = $('#phone').val();

			if (!(/^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$/.test(phone))) {
				$('#phoneMessage').show();
				$('#phoneMessage').text("핸드폰 번호는 -를 제외한 숫자만 입력 가능합니다.");
				$('#phoneMessage').css('color', 'red');
				return false;

			} else if (!(/^[0][1][0][0-9]*$/
					.test(phone))) {
				$('#phoneMessage').show();
				$('#phoneMessage').text("정확한 핸드폰 번호를 입력해주세요.");
				$('#phoneMessage').css('color', 'red');
				return false;
			} else {
				//유효성 검사 통과하였을 때 
				
				$.ajax({
					url : "/memberPhoneCheck.sms",
					type : "post",
					data : {
						"phone" : phone
					},
					success : function(result) {
						if (result == "false") {
							//사용 불가능 할 때
							$('#phoneMessage').text("이미 사용중인 핸드폰 번호 입니다.");
							$('#phoneMessage').show();
							$('#phoneMessage').css('color', 'red');
							return false;
						} else {
							//사용 가능할 때
							$('#phoneMessage').text("사용가능한 핸드폰 번호 입니다.");
							$('#phoneMessage').show();
							$('#phoneMessage').css('color', 'green');
							return true;
						}
					},
					error : function() {
						console.log("ajax 통신 실패");
					}

				});
				
				
			}

		}

		//인증번호 유효성 검사

		function authenticationNumberCheck() {
			var authenticationNumber = $('#authenticationNumber').val();

			if (!(/^[0-9]{1,6}$/.test(authenticationNumber))) {
				$('#confirmMessage').show();
				$('#confirmMessage').text("인증 번호는 숫자만 입력 가능합니다.");
				$('#confirmMessage').css('color', 'red');
				return false;

			} else if (!(/^[0-9]*$/
					.test(authenticationNumber))) {
				$('#confirmMessage').show();
				$('#confirmMessage').text("인증번호는 6자리로 입력해주세요.");
				$('#confirmMessage').css('color', 'red');
				return false;
			} else {
				$('#confirmMessage').hide();
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
				<H1>회원정보 입력</H1>
			</center>
		</div>
		<div id="formArea">
			<center>
				<form name="memberSignupForm" action="/memberSignup.sms" method="post">

					<!-- DB처리를 위해 parent회원가입인지 sitter회원가입인지 명시 -->
					<%
						String memberType = (String) request.getAttribute("member");
					%>

					<%
						if (memberType.equals("parent")) {
					%>
					<input type="hidden" value="parent" name="memberType" />

					<%
						} else if (memberType.equals("sitter")) {
					%>
					<input type="hidden" value="sitter" name="memberType" />
					<%
						}
					%>


					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">아이디</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <!-- 아이디를 ajax으로 바로 확인해서 알려주기 (현재사용중인지-->
								<input type="text" class="inputArea" name="memberId"
								id="memberId" onblur="idCheck();"
								placeholder="공백 없는 영문, 숫자, 특수문자(_)(-) 6~20자">
							</span>
						</div>
					</div>

					<div class="form-message row m-0 p-0">
						<label for="inputText" class="col-sm-2 message"></label> <span
							class="col-sm-10 message p-0" style="display: none;"
							id="idCheckMessage"></span>
					</div>

					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <input type="password"
								class="inputArea" name="memberPw" id="memberPw"
								onblur="pwCheck();" placeholder="공백 없는 영문, 숫자, 특수문자  8~16자"></span>
						</div>
					</div>

					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-2 message"></label> <span
							class="col-sm-10 message p-0" style="display: none;"
							id="pwCheckMessage"></span>
					</div>

					<div class="form-group row m-0">
						<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호
							확인</label>
						<div class="col-sm-10 m-0 p-0">
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

					<!-- 이름과 휴대폰 본인인증 값 똑같이 하게끔?가능? -->
					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">이름</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" name="memberName" id="memberName"
								maxlength="10" onblur="nameCheck();"></span>
						</div>
					</div>

					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-2 message"></label> <span
							class="col-sm-10 message p-0" style="display: none;" id="nameMessage"></span>
					</div>

					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">생년월일</label>
						<div class="col-sm-10 m-0 p-0">
							<!-- BIRTH_YY -->
							<span class="birthArea" id="birthYY"> <input type="text"
								id="yy" class="inputArea" maxlength="4" placeholder="년(4자)"
								onblur="birthYYCheck();" name="yyyy">
							</span><span class="birthArea" id="birthMM"> <select id="mm"
								class="inputArea" name="mm">
									<option value="">월</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select>
							</span><span class="birthArea" id="birthDD"> <input type="text"
								id="dd" class="inputArea" maxlength="2" placeholder="일"
								onblur="birthDDCheck();" name="dd">
							</span>

						</div>
					</div>

					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-2 message"></label> <span
							class="col-sm-10 message p-0" style="display: none;"
							id="birthMessage"></span>
					</div>

					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">성별</label>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <select id="gender"
								class="inputArea" name="gender">
									<option name="gender" value="">성별</option>
									<option name="gender" value="M">남</option>
									<option name="gender" value="F">여</option>
							</select></span>
						</div>
					</div>


					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-2 message"></label> <span
							class="col-sm-10 message p-0" style="display: none;" id="message"></span>
					</div>
					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">휴대폰번호</label>
						<div class="col-sm-8 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" id="phone" placeholder="전화번호 입력"
								onblur="phoneCheck();"  maxlength="11" name="phone"></span>
						</div>
						<div class="col-sm-2 m-0 p-0">
							<span> <input type="button" id="sendSMSBtn" onclick="checkPhoneNumberBeforeSMS();"
								class="btn btn-light phoneBtn"  value="인증 번호 받기" > <input
								type="button" id="checkSMSBtn" class="btn btn-light phoneBtn"
								style="display: none;" onclick="checkSMS();" value="인증 번호 확인">
								<input type="hidden" id="confirmPhone"/>
							</span>
						</div>
					</div>

					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-2 message"></label> <span
							class="col-sm-10 message p-0" style="display: none;"
							id="phoneMessage"></span>
					</div>

					<div class="form-group row m-0">
						<div class="col-sm-2 col-form-label"></div>
						<div class="col-sm-10 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" id="authenticationNumber"
								placeholder="인증번호 입력" onblur="authenticationNumberCheck();"
								maxlength="6"></span>
						</div>

					</div>


					<script>
						var sendSMSBtn = $('#sendSMSBtn');
						
						function checkPhoneNumberBeforeSMS(){
							console.log("버튼클릭");

								var phone = $('#phone').val();

								if (!(/^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$/.test(phone))) {
									$('#phoneMessage').show();
									$('#phoneMessage').text("핸드폰 번호는 -를 제외한 숫자만 입력 가능합니다.");
									$('#phoneMessage').css('color', 'red');

								} else if (!(/^[0][1][0][0-9]*$/
										.test(phone))) {
									$('#phoneMessage').show();
									$('#phoneMessage').text("정확한 핸드폰 번호를 입력해주세요.");
									$('#phoneMessage').css('color', 'red');
								} else {
									//유효성 검사 통과하였을 때 
									
									$.ajax({
										url : "/memberPhoneCheck.sms",
										type : "post",
										data : {
											"phone" : phone
										},
										success : function(result) {
											if (result == "false") {
												//사용 불가능 할 때
												$('#phoneMessage').text("이미 사용중인 핸드폰 번호 입니다.");
												$('#phoneMessage').show();
												$('#phoneMessage').css('color', 'red');
											} else {
												//사용 가능할 때
												$('#phoneMessage').text("사용가능한 핸드폰 번호 입니다.");
												$('#phoneMessage').show();
												$('#phoneMessage').css('color', 'green');
												sendSMS();
											}
										},
										error : function() {
											console.log("ajax 통신 실패");
										}

									});
									
									
								}

							
						}


						function sendSMS(result) {
							$.ajax({
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
												"인증 번호 전송 성공! 인증 번호를 입력해주세요.");
										$('#phoneMessage')
												.css('color', 'green');
										
										sendSMSBtn.hide();
										$('#checkSMSBtn').show();

									}
								},
								error : function() {
									$('#phoneMessage').show();
									$('#phoneMessage').text("인증 번호 전송 실패");
									$('#phoneMessage').css('color', 'red');
									console.log('send 에러');
								}
							});
						}

						function checkSMS() {
							$.ajax({
								url : "/checkSMS.sms",
								data : {
									checkNumber : $('#authenticationNumber')
											.val()
								},
								type : "post",
								success : function(result) {
									if (result == "true") {
										$('#authenticationNumber').attr(
												"readonly", true);
										$('#confirmMessage').show();
										$('#confirmMessage').text("인증 번호 일치!");
										$('#confirmMessage').css('color',
												'green');
										
										$('#confirmPhone').val("true");
										
									} else {
										$('#confirmMessage').show();
										$('#confirmMessage').text(
												"인증 번호가 일치하지않습니다.");
										$('#confirmMessage')
												.css('color', 'red');

									}
								},
								error : function() {
									console.log('check 에러');
								}
							});
						}
					</script>


					<div class="form-message row m-0">
						<label for="inputText" class="col-sm-2 message"></label> <span
							class="col-sm-10 message p-0" style="display: none;"
							id="confirmMessage"></span>
					</div>


					<div class="form-group row m-0">
						<label for="inputText" class="col-sm-2 col-form-label">주소</label>

						<div class="col-sm-8 m-0 p-0">
							<span class="spanArea"> <input type="text"
								class="inputArea" id="sample6_address" name="address" placeholder="주소" readonly></span>
						</div>
						<div class="col-sm-2 m-0 p-0">
							<span> <input type="button" class="btn btn-light"
								id="addressFindBtn" value="주소 찾기"
								onclick="sample6_execDaumPostcode()"></span>
						</div>

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