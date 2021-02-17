<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/commons/footer.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/commons/header.css">
</head>
<body>
	<style>
@media ( min-width :1500px) {
	#mypage-wrap {
		margin: 0 auto;
		padding: 0px;
		height: 100%;
		width: 70%;
	}
	#sideBar {
		margin: 0px;
		height: 100%;
		width: 22%;
	}
	#content {
		margin: 0px;
		padding: 30px;
		height: 100%;
		width: 78%;
	}
}

@media ( max-width :1500px) {
	#mypage-wrap {
		margin: 0 auto;
		padding: 0px;
		height: 100%;
		width: 80%;
	}
	#sideBar {
		height: 100%;
		width: 23%;
	}
	#content {
		height: 100%;
		width: 77%;
	}
}

@media ( max-width :1220px) {
	#mypage-wrap {
		margin: 0 auto;
		padding: 0px;
		height: 100%;
		width: 90%;
	}
	#sideBar {
		height: 100%;
		width: 30%;
	}
	#content {
		height: 100%;
		width: 70%;
	}
}

@media ( max-width :900px) {
	#mypage-wrap {
		margin: 0 auto;
		padding: 0px;
		height: 100%;
		width: 100%;
	}
	#sideBar {
		height: 100%;
		width: 30%;
	}
	#content {
		height: 100%;
		width: 70%;
	}
}

@media ( max-width :760px) {
	#mypage-wrap {
		margin: 0 auto;
		padding: 0px;
		height: 100%;
		width: 100%;
	}
	#content {
		margin: 0px;
		height: 100%;
		width: 100%;
	}
	#sideBar {
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

.voucherPayBtn {
	margin: 50px;
	width: 50%;
	height: 50px;
}

.voucherRadioBtn {
	width: 50px;
}

/*-----------------------------------*/
#kakao-talk-channel-chat-button {
	float: right;
	margin-right: 50px;
}
</style>

	<%--카카오톡 채팅 스크립트--%>
	<script>
		window.kakaoAsyncInit = function() {
			Kakao.Channel.createChatButton({
				container : '#kakao-talk-channel-chat-button',
			});
		};

		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://developers.kakao.com/sdk/js/kakao.channel.min.js';
			fjs.parentNode.insertBefore(js, fjs);
		})(document, 'script', 'kakao-js-sdk');
	</script>

	<!--제이쿼리라이브러리-->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

	<!--아임포트 라이브러리-->
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>

	<header> <%@ include file="/WEB-INF/views/commons/header.jsp"%>
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
					<div class="col-sm-12 m-0 p-0">
						<center>
							<H1>이용권 선택하기</H1>
							<br> <img src="/resources/images/voucher.png"> <br>
							<br>
							<H3>시터 회원 이용권</H3>
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
									<br> <br>
								</center>
							</div>

							<center>
								<input type="radio" name="voucherBuy" value="7days" checked>
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
									<br> <br>
								</center>
							</div>

							<center>
								<input type="radio" name="voucherBuy" value="14days">
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
									<br> <br>
								</center>
							</div>

							<center>
								<input type="radio" name="voucherBuy" value="30days">
							</center>
				</form>
			</div>
		</div>
		<center>
			<br> <input type="button" id="voucherPayBtn"
				class="btn btn-warning voucherPayBtn" value="선택한 이용권 구매하기" />


			<script>
			$(function(){
				$('#voucherPayBtn').click(function() {
					//체크된 radio의 value값 가져오기 
					var checkedVoucherType = $('input:radio[name="voucherBuy"]:checked').val();
					var voucherPrice ;
					if(checkedVoucherType=='7days'){
						voucherPrice = 5000;
					}else if(checkedVoucherType=='14days'){
						voucherPrice = 8000;
					}else if(checkedVoucherType=='30days'){
						voucherPrice = 15000;
					}
					console.log("선택한 라디오"+checkedVoucherType);
					console.log("금액"+voucherPrice);
									
					var IMP = window.IMP; // 생략가능
					IMP.init('imp47577433');
					IMP.request_pay(
					{
						pg : 'inicis', // version 1.1.0부터 지원.
						pay_method : 'card',
						merchant_uid : 'semosi_'+ new Date().getTime(), //물품 주문번호 
						name : '이용권 결제_'+checkedVoucherType, //물품 이름
						amount : voucherPrice, //물품 가격 
						buyer_name : '<%=sm.getMemberName()%>',
						buyer_tel : <%=sm.getPhone()%>,
						buyer_email: "",
						buyer_addr : '<%=sm.getAddress()%>'
					},
					function(rsp) {
						if (rsp.success) {
							var msg = '결제가 완료되었습니다.';
							//DB table에 저장 
							$.ajax({
								url: "/buyVoucherSitter.sms",
								data: {"voucherType": checkedVoucherType},
								type: "post",
								success : function(result){
									if(result==true){
										var msg = '이용권 구매가 완료되었습니다.\n자유롭게 사이트를 이용해주세요.';
									}else{
										var msg = '이용권이 결제되었으나 디비저장 실패';
									}
								},
								error : function(){
									console.log('ajax 통신 실패')
								}
							});	
						} else {
						var msg = '결제에 실패하였습니다.';
						msg += rsp.error_msg;
						}	
						alert(msg);
					});
				});
			});
			</script>
		</center>

	</div>


	</section>


	<!-- 여기까지 적용 -->
	</div>
	</div>


	<%-- 카카오톡 채팅 아이콘 --%>
	<div id="kakao-talk-channel-chat-button"
		data-channel-public-id="_xaExoNK" data-title="consult"
		data-size="small" data-color="yellow" data-shape="pc"
		data-support-multiple-densities="true"></div>
	<footer> <%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>
</body>
</html>