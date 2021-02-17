<%@page import="kr.co.semosi.jobsearch.model.vo.JobSearchList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
<%
JobSearchList jsl = (JobSearchList)request.getAttribute("postData");
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

						<img class="profileImg" src="/resources/images/profile/<%=jsl.getOriginalName() %>" />
						<img class="profileImg" src="/resources/images/profile/<%=jsl.getOriginalName() %>" />

					</div>
					<div class="col-md-12" id="parentInfoBox">
						<div>
							<h4><%=jsl.getMemberName() %></h4>
						</div>
					</div>
					<div class="col-md-12" id="summaryBox">
						<div class="row no-gutters">
							<div id="hits" class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<div><%=jsl.getHit() %></div>
								<div>조회수</div>
							</div>
							<div class="col-sm-6 col-md-6 col-lg-3 sitterEval"><!-- 지원자수 확인 -->
								<div>2명</div>
								<div>지원자수</div>
							</div>
							<div class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<div><%=jsl.getCarePerson() %></div>
								<div>돌봄 아이 수</div>
							</div>
							<div id="familyCount"
								class="col-sm-6 col-md-6 col-lg-3 sitterEval">
								<c:forTokens var="age" items="${postData.age}" delims=",">
										<c:if test='${age eq "G20"}'> <div>20대</div> </c:if>
										<c:if test='${age eq "G30"}'> <div>30대</div> </c:if>
										<c:if test='${age eq "G40"}'> <div>40대</div> </c:if>
										<c:if test='${age eq "G50"}'> <div>50대</div> </c:if>
										<c:if test='${age eq "G60"}'> <div>60대</div> </c:if>										
									</c:forTokens>
								<div>원하는 시터 나이</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row no-gutters">
					<div class="col-md-12" id="introductionBox">
						<div>
							<h5>작성 내용</h5>
						</div>
						<div style="border: 1px solid black; height: 200px;"><%=jsl.getContent() %></div>

					</div>

					<div class="col-md-12" id="activityBox">
						<div>
							<h5>원하는 활동</h5>
						</div>
						<div class="row no-gutters" id="activityOption">
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jsl.getCareActivity().contains("A1")) { %>
								<div style="background-color: #F6D257; color: white;">실내놀이</div>
							<% } else { %>
								<div>실내놀이</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jsl.getCareActivity().contains("A2")) { %>
								<div style="background-color: #F6D257; color: white;">등하원돕기</div>
							<% } else { %>
								<div>등하원돕기</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jsl.getCareActivity().contains("A3")) { %>
								<div style="background-color: #F6D257; color: white;">책읽기</div>
							<% } else { %>
								<div>책읽기</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jsl.getCareActivity().contains("A4")) { %>
								<div style="background-color: #F6D257; color: white;">야외활동</div>
							<% } else { %>
								<div>야외활동</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jsl.getCareActivity().contains("A5")) { %>
								<div style="background-color: #F6D257; color: white;">한글놀이</div>
							<% } else { %>
								<div>한글놀이</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jsl.getCareActivity().contains("A6")) { %>
								<div style="background-color: #F6D257; color: white;">영어놀이</div>
							<% } else { %>
								<div>영어놀이</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jsl.getCareActivity().contains("A7")) { %>
								<div style="background-color: #F6D257; color: white;">학습지도</div>
							<% } else { %>
								<div>학습지도</div>
							<% } %>
							</div>
							<div class="col-4 col-sm-3 col-lg-3 activity">
							<% if(jsl.getCareActivity().contains("A8")) { %>
								<div style="background-color: #F6D257; color: white;">체육놀이</div>
							<% } else { %>
								<div>체육놀이</div>
							<% } %>
						</div>
					</div>

					<div class="col-md-12">
						<div class="row no-gutters" id="areaTimeBox">
							<div class="col-md-8">
								<div>
									<div>
										<h5>활동 가능 지역</h5>
									</div>
									<div id="areaBox"><%=jsl.getLocation() %> 전체</div>
								</div>
							</div>
							<div class="col-md-4">
								<div>
									<div>
										<h5>아이 정보</h5>
									</div>
									<div id="areaBox">
										<%
											Date today = new Date();
											SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
											
										%>
										<c:set var="date" value="<%= new java.util.Date() %>" />
										<c:set var="now" value="<%=f.format(today)%>"/>
							
										<fmt:formatDate var="sysMonth" value="${date}" pattern="MM"/>
										<fmt:formatDate var="birthMonth" value="${postData.careBirth}" pattern="MM"/>
										<fmt:formatDate var="sysYear" value="${date}" pattern="yyyy"/>
										<fmt:formatDate var="birthYear" value = "${postData.careBirth}" pattern = "yyyy" />
										<c:choose>
											<c:when test="${(sysYear-birthYear)<3}">
												<fmt:parseDate  var="sDate"  value="${now}" pattern="yyyy-MM-dd"/>
												<fmt:parseNumber value="${sDate.time / (1000*60*60*24)}" integerOnly="true" var="sysDate"></fmt:parseNumber>
												<fmt:parseDate value="${postData.careBirth}" var="bDate" pattern="yyyy-MM-dd"/>
												<fmt:parseNumber value="${bDate.time / (1000*60*60*24)}" integerOnly="true" var="birthDate"></fmt:parseNumber>
												<fmt:parseNumber value="${(sysDate-birthDate)/30}" integerOnly="true" var="bMonth"></fmt:parseNumber>
												${bMonth}개월
												
											</c:when>											
											<c:when test="${birthMonth < sysMonth}">
												만 <c:out value="${sysYear-birthYear-1}"/>세
											</c:when>
											<c:otherwise>
												만 <c:out value="${sysYear-birthYear}"/>세
											</c:otherwise>
										</c:choose>	</div>
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
											<td>
											<% if(jsl.getCareDays().contains("월")) { %>
												<div style="background-color: #F6D257; color: white;">월</div>
												<div><%=jsl.getCareTime() %></div>
											<% } else { %>
												<div>월</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jsl.getCareDays().contains("화")) { %>
												<div style="background-color: #F6D257; color: white;">화</div>
												<div><%=jsl.getCareTime() %></div>
											<% } else { %>
												<div>화</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jsl.getCareDays().contains("수")) { %>
												<div style="background-color: #F6D257; color: white;">수</div>
												<div><%=jsl.getCareTime() %></div>
											<% } else { %>
												<div>수</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jsl.getCareDays().contains("목")) { %>
												<div style="background-color: #F6D257; color: white;">목</div>
												<div><%=jsl.getCareTime() %></div>
											<% } else { %>
												<div>목</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jsl.getCareDays().contains("금")) { %>
												<div style="background-color: #F6D257; color: white;">금</div>
												<div><%=jsl.getCareTime() %></div>
											<% } else { %>
												<div>금</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jsl.getCareDays().contains("토")) { %>
												<div style="background-color: #F6D257; color: white;">토</div>
												<div><%=jsl.getCareTime() %></div>
											<% } else { %>
												<div>토</div>
												<div>-</div>
											<% } %>
											</td>
											<td>
											<% if(jsl.getCareDays().contains("일")) { %>
												<div style="background-color: #F6D257; color: white;">일</div>
												<div><%=jsl.getCareTime() %></div>
											<% } else { %>
												<div>일</div>
												<div>-</div>
											<% } %>
											</td>
										</tr>
										</table>
									</div>
								</div>
								<div class="col-md-4">
									<div>
										<div>
											<h5>돌봄 기간</h5>
										</div>
										<div id="areaBox"><%=jsl.getStartDate() %>
										 ~ <%if(jsl.getEndDate()!=null){ %><%=jsl.getEndDate() %><%} %>
										
										</div>
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