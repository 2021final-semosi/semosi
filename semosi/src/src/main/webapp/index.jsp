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
<link href="/resources/css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
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
						<a href="#"><img src="/resources/images/carousel1.png"></a>
					</div>
				</div>
				<div id="carousel2" class="carousel-item">
					<div class="carousel-wrap">
						<a href="#"><img src="/resources/images/carousel2.png"></a>
					</div>
				</div>
				<div id="carousel3" class="carousel-item">
					<div class="carousel-wrap">
						<a href="#"><img src="/resources/images/carousel3.png"></a>
					</div>
				</div>
				<div id="carousel4" class="carousel-item">
					<div class="carousel-wrap">
						<a href="#"><img src="/resources/images/carousel4.png"></a>
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
				<span class="count-size">355,608</span>
				<span id="partition">|</span>
				<span>시터회원 신청 건 수</span>
				<span class="count-size">1,358,184</span>
			</div>
		</div>
		
		
		<div id="semosi-info-panel">
			<div class="wrap">
				<div>
					<div class="card-panel">
						<div>
							<p>가장 빨리, 원하는 조건의 아이돌보미를 구할 수 있어요.</p>
							<p>지금 당장 활동 가능한 베이비시터가 <span>78,551명</span></p>
							<img src="/resources/images/info-card1.png" alt="카드1">
						</div>
					</div>
					<div id="partition"></div>
					<div class="card-panel">
						<div>
							<p>매번 내는 수수료가 없어서, 1시간 돌봄비용이 평균 9,000원이에요.</p>
							<p>매일 4시간씩 맡겨도, 한달에 83만원</p>
							<img src="/resources/images/info-card2.png" alt="카드2">
						</div>
					</div>
				</div>
				<div id="info-btn-panel">
					<a href="#">세모시 더 알아보기</a>
				</div>
			</div>
		</div>
		
	</section>
	
	<footer>
		<%@ include file="/WEB-INF/views/commons/footer.jsp" %>
	</footer>
	
</body>
</html>