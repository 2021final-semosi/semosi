<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript"
	src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link href="/resources/css/jobsearch/searchJobPost.css" rel="stylesheet"
	type="text/css" />
<title>세모시 - 세상의 모든 시터</title>
</head>
<body>
	<!--  	
<script type="text/javascript">
	$(document).ready(function(){
		$('.slider-for').slick({
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  arrows: false,
			  fade: true,
			  asNavFor: '.slider-nav'
			});
			$('.slider-nav').slick({
			  slidesToShow: 3,
			  slidesToScroll: 1,
			  asNavFor: '.slider-for',
			  dots: true,
			  centerMode: true,
			  focusOnSelect: true
			});
		});
</script>
-->

	<header>
		<%@ include file="/WEB-INF/views/commons/header.jsp" %>
	</header>




	<div class="container-fluid p-0">
		<div class="row no-gutters" id="contentBox">
			<div class="col-md-12">

				<div class="row no-gutters">
					<div class="col-md-12" id="imgBox">
						<!-- 
				<div class="slider-for">
					<div>1</div>
					<div>2</div>
					<div>3</div>
					<div>4</div>
					<div>5</div>
					<div>6</div>
					<div>7</div>
					<div>8</div>
					<div>9</div>
				</div>
				<div class="slider-nav">
					<div>1</div>
					<div>2</div>
					<div>3</div>
					<div>4</div>
					<div>5</div>
					<div>6</div>
					<div>7</div>
					<div>8</div>
					<div>9</div>
				</div>
				 -->

						<img class="profileImg" src="/resources/images/sitter_image.png" />
						<img class="profileImg" src="/resources/images/sitter_image.png" />

					</div>
					<div class="col-md-12" id="parentInfoBox">
						<div>
							<h4>김O희</h4>
						</div>
					</div>
					<div class="col-md-12" id="summaryBox">
						<div class="row no-gutters">
							<div id="hits" class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<div>12,000</div>
								<div>조회수</div>
							</div>
							<div class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<div>2명</div>
								<div>지원자수</div>
							</div>
							<div class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<div>1명</div>
								<div>돌봄 아이 수</div>
							</div>
							<div id="familyCount"
								class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<div>20~40대</div>
								<div>원하는 시터 나이</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row no-gutters">
					<div class="col-md-12" id="introductionBox">
						<div>
							<h5>신청 내용</h5>
						</div>
						<div style="border: 1px solid black; height: 200px;"></div>

					</div>

					<div class="col-md-12" id="activityBox">
						<div>
							<h5>원하는 활동</h5>
						</div>
						<div class="row no-gutters" id="activityOption">
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div style="background-color: #F6D257; color: white;">실내놀이</div>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div>등하원돕기</div>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div>책읽기</div>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div>야외활동</div>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div>한글놀이</div>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div style="background-color: #F6D257; color: white;">영어놀이</div>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div style="background-color: #F6D257; color: white;">학습지도</div>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div>체육놀이</div>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div>간단청소</div>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div>밥 챙겨주기</div>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
								<div>간단 설거지</div>
							</div>
						</div>
					</div>

					<div class="col-md-12">
						<div class="row no-gutters" id="areaTimeBox">
							<div class="col-md-8">
								<div>
									<div>
										<h5>활동 가능 지역</h5>
									</div>
									<div id="areaBox">서울시 종로구 전체</div>
								</div>
							</div>
							<div class="col-md-4">
								<div>
									<div>
										<h5>아이 정보</h5>
									</div>
									<div id="areaBox">영아 4세 (28개월)</div>
								</div>
							</div>
							</div>
							<div class="row no-gutters" id="areaTimeBox">

								<div class="col-md-8">
									<div>
										<div>
											<h5>활동 가능 시간</h5>
										</div>
										<table cellspacing=0 cellpadding=0 id="timeTable">
											<colgroup>
												<col width=10%>
												<col width=10%>
												<col width=10%>
												<col width=10%>
												<col width=10%>
												<col width=10%>
												<col width=10%>
											</colgroup>
											<tr>
												<td>월</td>
												<td>화</td>
												<td style="background-color: #F6D257; color: white;">수</td>
												<td style="background-color: #F6D257; color: white;">목</td>
												<td style="background-color: #F6D257; color: white;">금</td>
												<td style="background-color: #F6D257; color: white;">토</td>
												<td>일</td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td>8~17시</td>
												<td>8~17시</td>
												<td>8~17시</td>
												<td>8~17시</td>
												<td></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="col-md-4">
									<div>
										<div>
											<h5>돌봄 기간</h5>
										</div>
										<div id="areaBox">01월 27일~02월 24일</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row no-gutters">
							<div class="col-12" id="reviewBox">
								<div>
									<h5>부모 후기</h5>
								</div>
								<div class="row no-gutters">
									<div class="col-12">
										<div class="row no-gutters" id="review">
											<div class="col-2">
												<img src="/resources/images/sitter_image.png"
													style="width: 80%;" />
											</div>
											<div class="col-10 reviewComment">
												김O희 <span>영아 1명 | 채용 후기</span><br> <span><i
													class="fas fa-star"></i><i class="fas fa-star"></i><i
													class="fas fa-star"></i><i class="fas fa-star"></i><i
													class="fas fa-star"></i></span>
												<div>아이가 순해요</div>
											</div>
										</div>
									</div>
									<div class="col-12">
										<div class="row no-gutters" id="reviewReply">
											<div class="col-1"></div>
											<div class="col-2">
												<img src="/resources/images/sitter_image.png"
													style="width: 80%;" />
											</div>
											<div class="col-9 reviewComment">
												부모 답변 <span>2개월 전</span><br>
												<div>감사합니다.</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
	<footer>
		<%@ include file="/WEB-INF/views/commons/footer.jsp" %>
	</footer>
		
		
</body>
</html>