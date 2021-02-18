<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.co.semosi.joboffer.model.vo.JobOfferReview"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.semosi.joboffer.model.vo.JobOfferPost"%>
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
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<title>세모시 - 세상의 모든 시터</title>
<link href="/resources/css/joboffer/searchSitterPost.css" rel="stylesheet"
	type="text/css" />
</head>
<body>

	<script>
		$(function(){
			$(".opacityControl").css("opacity", "0.2");
		});
	</script>

	<%
		JobOfferPost jop=(JobOfferPost)request.getAttribute("postData");
		ArrayList<JobOfferReview> reviewList = (ArrayList<JobOfferReview>)request.getAttribute("reviewData");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	%>

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

						<img class="profileImg" src="/resources/images/profile/<%=jop.getOriginalName() %>" />

					</div>
					<div class="col-md-12" id="sitterInfoBox">
						<div>
							<h4><%=jop.getMemberName() %></h4>
						</div>
						<div><%=jop.getAge() %>세 | 희망시급 <%=jop.getPay() %>원 | <%=jop.getLocation() %></div>
					</div>
					<div class="col-md-12" id="sitterEvalBox">
						<div class="row no-gutters">
							<div id="hits" class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<div><%=jop.getHit() %></div>
								<div>조회수</div>
							</div>
							<div class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<div>
									<% if(jop.getCareType().equals("CT1")) { %>
									정기
									<% } else if(jop.getCareType().equals("CT2")) { %>
									단기
									<% } else { %>
									협의
									<% } %>
								</div>
								<div>기간 유형</div>
							</div>
							<div class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<div>
									&nbsp;
									<% for(int i=0; i<jop.getAvgGrade(); i++) { %>
									<i class="fas fa-star"></i>
									<% } %>
									<% for(int i=0; i<5-jop.getAvgGrade(); i++) { %>
									<i class="far fa-star"></i>
									<% } %>
									&nbsp;
								</div>
								<div>후기 평균</div>
							</div>
							<div id="familyCount"
								class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<div><%=jop.getWriteDate() %></div>
								<div>작성일</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row no-gutters">
					<div class="col-md-12">
						<div class="row no-gutters" id="badgesBox">
							<div class="col-1 badges">
							</div>
							<div class="col-2 badges">
							<% if(jop.getCertREYN()=='Y') { %>
								<img src="/resources/images/registration.png"/> <br>
								<span style="font-weight: 900;">등초본인증</span>
							<% } else { %>
								<img src="/resources/images/registration.png" class="opacityControl"/> <br>
								<span class="opacityControl">등초본인증</span>
							<% } %>
							</div>
							<div class="col-2 badges">
							<% if(jop.getCertHEYN()=='Y') { %>
								<img src="/resources/images/health.png"> <br> 
								<span style="font-weight: 900;">건강인증</span>
							<% } else { %>
								<img src="/resources/images/health.png" class="opacityControl"> <br> 
								<span class="opacityControl">건강인증</span>
							<% } %>
							</div>
							<div class="col-2  badges">
							<% if(jop.getCertFAYN()=='Y') { %>
								<img src="/resources/images/parents.png"> <br> 
								<span style="font-weight: 900;">부모인증</span>
							<% } else { %>
								<img src="/resources/images/parents.png" class="opacityControl"> <br> 
								<span class="opacityControl">부모인증</span>
							<% } %>
							</div>
							<div class="col-2 badges">
							<% if(jop.getCertTEYN()=='Y') { %>
								<img src="/resources/images/teacher.png"> <br> 
								<span style="font-weight: 900;">선생님인증</span>
							<% } else { %>
								<img src="/resources/images/teacher.png" class="opacityControl"> <br> 
								<span class="opacityControl">선생님인증</span>
							<% } %>
							</div>
							<div class="col-2 badges">
							<% if(jop.getCertTEYN()=='Y') { %>
								<img src="/resources/images/cctv-icon.png"> <br> 
								<span style="font-weight: 900;">CCTV 동의</span>
							<% } else { %>
								<img src="/resources/images/cctv-icon.png" class="opacityControl"> <br> 
								<span class="opacityControl">CCTV 동의</span>
							<% } %>
							</div>
							<div class="col-1 badges">
							</div>
						</div>
					</div>
				</div>
				<div class="row no-gutters">
					<div class="col-md-12" id="introductionBox">
						<div>
							<h5>자기소개 - <span><%=jop.getTitle() %></span></h5>
						</div>
						<div style="border: 1px solid black; height: 200px;"><%=jop.getSelfIntroduce() %></div>

					</div>

					<div class="col-md-12" id="ageBox">
						<div>
							<h5>돌봄 가능 연령</h5>
						</div>
						<div class="row no-gutters" id="ageOption">
							<div class="col-3 age">
							<% if(jop.getCareType().contains("CT1")) { %>
								<div style="background-color: #F6D257; color: white;">신생아</div>
							<% } else { %>
								<div>신생아</div>
							<% } %>
							</div>
							<div class="col-3 age">
							<% if(jop.getCareType().contains("CT2")) { %>
								<div style="background-color: #F6D257; color: white;">영아</div>
							<% } else { %>
								<div>영아</div>
							<% } %>
							</div>
							<div class="col-3 age">
							<% if(jop.getCareType().contains("CT3")) { %>
								<div style="background-color: #F6D257; color: white;">유아</div>
							<% } else { %>
								<div>유아</div>
							<% } %>
							</div>
							<div class="col-3 age">
							<% if(jop.getCareType().contains("CT4")) { %>
								<div style="background-color: #F6D257; color: white;">초등학생</div>
							<% } else { %>
								<div>초등학생</div>
							<% } %>
							</div>
						</div>
					</div>

					<div class="col-md-12" id="activityBox">
						<div>
							<h5>가능한 활동</h5>
						</div>
						<div class="row no-gutters" id="activityOption">
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jop.getCareActivity().contains("A1")) { %>
								<div style="background-color: #F6D257; color: white;">실내놀이</div>
							<% } else { %>
								<div>실내놀이</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jop.getCareActivity().contains("A2")) { %>
								<div style="background-color: #F6D257; color: white;">등하원돕기</div>
							<% } else { %>
								<div>등하원돕기</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jop.getCareActivity().contains("A3")) { %>
								<div style="background-color: #F6D257; color: white;">책읽기</div>
							<% } else { %>
								<div>책읽기</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jop.getCareActivity().contains("A4")) { %>
								<div style="background-color: #F6D257; color: white;">야외활동</div>
							<% } else { %>
								<div>야외활동</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jop.getCareActivity().contains("A5")) { %>
								<div style="background-color: #F6D257; color: white;">한글놀이</div>
							<% } else { %>
								<div>한글놀이</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jop.getCareActivity().contains("A6")) { %>
								<div style="background-color: #F6D257; color: white;">영어놀이</div>
							<% } else { %>
								<div>영어놀이</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jop.getCareActivity().contains("A7")) { %>
								<div style="background-color: #F6D257; color: white;">학습지도</div>
							<% } else { %>
								<div>학습지도</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jop.getCareActivity().contains("A8")) { %>
								<div style="background-color: #F6D257; color: white;">체육놀이</div>
							<% } else { %>
								<div>체육놀이</div>
							<% } %>
							</div>
						</div>
					</div>

					<div class="col-md-12">
						<div class="row no-gutters" id="areaTimeBox">
							<div class="col-md-4">
								<div>
									<div>
										<h5>활동 가능 지역</h5>
									</div>
									<div id="areaBox"><%=jop.getLocation() %> 전체</div>
								</div>
							</div>
							<div class="col-md-8">
								<div>
									<div>
										<h5>활동 가능 시간</h5>
									</div>
									<table cellspacing=0
										cellpadding=0 id="timeTable">
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
											<td>
											<% if(jop.getCareDays().contains("월")) { %>
												<div style="background-color: #F6D257; color: white;">월</div>
												<div><%=jop.getCareTime() %></div>
											<% } else { %>
												<div>월</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jop.getCareDays().contains("화")) { %>
												<div style="background-color: #F6D257; color: white;">화</div>
												<div><%=jop.getCareTime() %></div>
											<% } else { %>
												<div>화</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jop.getCareDays().contains("수")) { %>
												<div style="background-color: #F6D257; color: white;">수</div>
												<div><%=jop.getCareTime() %></div>
											<% } else { %>
												<div>수</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jop.getCareDays().contains("목")) { %>
												<div style="background-color: #F6D257; color: white;">목</div>
												<div><%=jop.getCareTime() %></div>
											<% } else { %>
												<div>목</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jop.getCareDays().contains("금")) { %>
												<div style="background-color: #F6D257; color: white;">금</div>
												<div><%=jop.getCareTime() %></div>
											<% } else { %>
												<div>금</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jop.getCareDays().contains("토")) { %>
												<div style="background-color: #F6D257; color: white;">토</div>
												<div><%=jop.getCareTime() %></div>
											<% } else { %>
												<div>토</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jop.getCareDays().contains("일")) { %>
												<div style="background-color: #F6D257; color: white;">일</div>
												<div><%=jop.getCareTime() %></div>
											<% } else { %>
												<div>일</div>
												<div>-</div>
											<% } %>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row no-gutters" >
					<div class="col-12" id="reviewBox">
						<div><h5>부모 후기</h5></div>
						<div class="row no-gutters" id="reviewPrintBox">
							<%if(reviewList==null) {%>
							<h2>작성된 후기가 없습니다!</h2>
							<%}else {%>

							<% for(JobOfferReview review : reviewList) {%>
							<div class="col-12" >
								<div class="row no-gutters" id="review">
									<div class="col-2">
										<img src="/resources/images/sitter_image.png"
											style="width: 80%;" />
									</div>
									<div class="col-10 reviewComment">
										<%=review.getWriterPName() %> <span><%=sdf.format(review.getWriteDate()) %></span><br>
										<span>
											<%for(int i=0;i<review.getGrade();i++){%>
												<i class="fas fa-star"></i>
											<%}%></span>
										<div><%=review.getContent() %></div>
									</div>
								</div>
							</div>
							<hr>
							<%} %>
							<%} %>
						</div>

						<div class="col-md-12" id="reviewInputBox">
							<form action="/insertSitterReview.sms" method="post">
							<% ParentMember pMember = (ParentMember)session.getAttribute("pMember"); 
							SitterMember sMember = (SitterMember)session.getAttribute("sMember"); 
							%>
							<%if(pMember!=null) {%>
								<input type="hidden" name="writerNo" value="<%=pMember.getMemberNo()%>"/>
							<%} else if(sMember!=null) {%>
								<input type="hidden" name="writerNo" value="<%=sMember.getMemberNo()%>"/>
							<%} %>
							<input type="hidden" name="reviewedMemberNo" value="<%=jop.getMembersNo()%>"/>
							<input type="hidden" name="postNo" value="<%=jop.getPostNo()%>"/>
							<div id="reviewInput" >
								<div id="gradeBox">
									별점 : 						
									<select name="grade">
									<option value="1">1점</option>
									<option value="2">2점</option>
									<option value="3">3점</option>
									<option value="4">4점</option>
									<option value="5">5점</option>
								</select>
								</div>

								<textarea name="content"></textarea>
								<button>작성</button>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="btn-panel">
			<a href="/searchPostApply.sms?postNo=<%=jop.getPostNo() %>">신청하기</a>
		</div>
	</div>
	
	
	
	
	<footer>
		<%@ include file="/WEB-INF/views/commons/footer.jsp" %>
	</footer>
	
	
</body>
</html>