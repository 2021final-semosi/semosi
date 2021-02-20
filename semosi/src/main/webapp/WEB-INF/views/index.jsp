<%@page import="kr.co.semosi.index.model.vo.IndexReviews"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<link href="/resources/css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<script>
		var sw=0;
		$(function(){
			
			/* 후기 더보기 기능 */
			/* 
			$("#btn-panel").click(function(){
				if(sw==0){
					$("#card-panel").children().eq(1).css("display", "block");
					$("#btn-panel").children().html("닫기");
					$("#review-panel").focus();
					sw=1;
				}
				else{
					$("#card-panel").children().eq(1).css("display", "none");
					$("#btn-panel").children().html("+ 더 보기");
					$("#review-panel").focus();
					sw=0;
				}
			});		// display 수정 방식에서 아래 코드로 대체
			 */
			 $("#btn-panel").click(function(){
				if(sw==0){
					$("#card-panel").css("height", "1100px");
					$("#btn-panel").children().html("닫기");
					$("#review-panel").focus();
					sw=1;
				}
				else{
					$("#card-panel").css("height", "550px");
					$("#btn-panel").children().html("+ 더 보기");
					$("#review-panel").focus();
					sw=0;
				}
			});
			/* 회원 신청 건 수 & 인증 된 시터 수 */
			$.ajax({
				url : "/loadCount.sms",
				dataType : "JSON",
				success : function(result){
					$("#offerCount").html(result.offerCount);
					$("#searchCount").html(result.searchCount);
					$("#sitter-count").html("<b>"+result.sitterCount+"</b>");
				}
			});
			/* 
			$.ajax({
				url : "/loadReview.sms",
				dataType : "JSON",
				success : function(result){
					alert("성공");
				},
				error : function(result){
					alert("실패");
				}
			});
			 */
		});
	</script>

	<%
		ArrayList<IndexReviews> list=(ArrayList<IndexReviews>)request.getAttribute("list");
	%>

	<header>
		<%@ include file="/WEB-INF/views/commons/header.jsp" %>
	</header>
	
	<section>
		<!-- 캐러셀 슬라이드 -->
		<div id="carousel-main" class="carousel slide" data-ride="carousel">
			
			<!-- The slideshow -->
			<div class="carousel-inner">
				<div id="carousel1" class="carousel-item active">
					<div class="carousel-wrap">
						<a href="/csGuide.sms"><img src="/resources/images/carousel1.png"></a>
					</div>
				</div>
				<div id="carousel2" class="carousel-item">
					<div class="carousel-wrap">
						<a href="/csFAQ.sms"><img src="/resources/images/carousel2.png"></a>
					</div>
				</div>
				<div id="carousel3" class="carousel-item">
					<div class="carousel-wrap">
						<a href="/jobofferPage.sms"><img src="/resources/images/carousel3.png"></a>
					</div>
				</div>
			</div>
	
			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#carousel-main" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a>
			<a class="carousel-control-next" href="#carousel-main" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
	
		</div>
		
		
		<div id="member-count-panel">
			<div class="wrap">
				<span>부모회원 신청 건 수</span>
				<span class="count-size" id="offerCount"></span>
				<span id="partition">|</span>
				<span>시터회원 신청 건 수</span>
				<span class="count-size" id="searchCount"></span>
			</div>
		</div>
		
		
		<div id="semosi-info-panel">
			<div class="wrap">
				<div>
					<div id="card-panel1" class="card-panel">
						<div>
							<p><mark>가장 빨리,</mark> 원하는 조건의<br>아이돌보미를 구할 수 있어요.</p>
							<p>지금 당장 활동 가능한 베이비시터가 <span id="sitter-count"></span>명</p>
							<img src="/resources/images/info-card1.png" alt="카드1">
						</div>
					</div>
					<div id="partition"></div>
					<div id="card-panel2" class="card-panel">
						<div>
							<p>매번 내는 수수료가 없어서,<br> 1시간 돌봄비용이 <mark>평균 9,000원</mark>이에요.</p>
							<p>매일 4시간씩 맡겨도, <b>한달에 83만원</b></p>
							<img src="/resources/images/info-card2.png" alt="카드2">
						</div>
					</div>
				</div>
				<div id="info-btn-panel">
					<a href="/introduce.sms">세모시 더 알아보기</a>
				</div>
			</div>
		</div>
		
		<div id="review-panel">
			<div class="wrap">
				<div id="title-panel">
					<img alt="ON-AIR" src="/resources/images/onair-icon.png">
					<h1><b>실시간</b> 세모시 후기!</h1>
				</div>
				<div id="card-panel">
				<% for(IndexReviews ir : list) { %>
					<div class="card">
						<div class="card-title">
							<img alt="프로필사진" src="/resources/images/profile/<%=ir.getOriginalName() %>" onerror="this.src='/resources/images/profile-image.png'">
							<div>
								<p><%=ir.getAddress() %></p>
								<p>
								<% for(int i=0; i<ir.getGrade(); i++) { %>
								★
								<% } %>
								<% for(int i=0; i<5-ir.getGrade(); i++) { %>
								☆
								<% } %>
								</p>
							</div>
						</div>
						<p><%=ir.getpReview() %></p>
					</div>
				<% } %>	
					 <p>test</p>
				</div>
				<div id="btn-panel">
					<a href="#review-panel">+ 더 보기</a>
				</div>
			</div>
		</div>
		
		<div id="faq-panel">
			<div class="wrap">
				<div id="faq-title-panel">
					<p>세모시가 <mark>궁금</mark>하신가요?</p>
				</div>
				<div id="faq-icon-panel">
					<div>
						<img alt="icon1" src="/resources/images/faq-icon1.png">
						<p><b>시터</b>를 어떻게 믿나요?</p>
					</div>
					<div>
						<img alt="icon2" src="/resources/images/faq-icon2.png">
						<p><b>부모님</b>을 어떻게 믿나요?</p>
					</div>
					<div>
						<img alt="icon3" src="/resources/images/faq-icon3.png">
						<p>세모시 <b>이용권</b>은 무엇인가요?</p>
					</div>
				</div>
				<div id="faq-btn-panel">
					<a href="/csFAQ.sms">FAQ 더 알아보기</a>
				</div>
			</div>
			
			<div id="kakao-talk-channel-chat-button"
		data-channel-public-id="_xaExoNK" data-title="consult"
		data-size="small" data-color="yellow" data-shape="pc"
		data-support-multiple-densities="true" style="float: right;"></div>
		</div>
		
		
		<%--카카오톡 채팅 스크립트--%> <script>
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
		</script> <%-- 카카오톡 채팅 아이콘 --%>
	

	</section>
	
	
	
	<footer>
		<%@ include file="/WEB-INF/views/commons/footer.jsp" %>
	</footer>
	
</body>
</html>