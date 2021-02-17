<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_jobOffer_page.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<body>
<script>
	$(function(){
		$("#close").click(function(){
			history.back();
		});
	});
</script>

<div class="page-wrapper">
	<div class="admin-header">
		<%@ include file="/WEB-INF/views/admin/common/admin_header.jsp"%>
	</div>
	<div class="body-container">
		<div class="nav-snb">
			<%@ include file="/WEB-INF/views/admin/common/admin_subnavbar.jsp"%>
		</div>
		<div class="page-container">
			<div class="page-contents">
				<div id="content-wrapper" class="board-wrapper">
					<p>개별 구인 페이지</p>
					<center>
						<div class="table-wrapper">
							<table id="info-table">
								<tr id="first">
									<td style="width: 8%;">이름</td>
									<td style="width: 12%">${aOffer.memberName}</td>
									<td style="width: 15%;">아이디</td>
									<td style="width: 25%">${aOffer.memberId}</td>
									<td style="width: 15%;">전화번호</td>
									<td style="width: 25%">${aOffer.phone}</td>
								</tr>
								<tr id="second">
									<td>성별</td>
									<td>
										<c:choose>
											<c:when test="${aOffer.gender eq 'M'.charAt(0)}">남성</c:when>
											<c:otherwise>여성</c:otherwise>
										</c:choose>
									</td>
									<td>주소</td>
									<td colspan="3">${aOffer.address}</td>
								</tr>
							</table>
						
							<table class="second-table">
								<tr id="third">
									<td style="width: 12%;">희망시급</td>
									<td style="width: 20%;">${aOffer.pay}</td>
									<td style="width: 16%;">돌봄 아이 수</td>
									<td>${aOffer.carePerson}</td>
									<td style="width: 17%;">돌봄 아이 연령</td>
									<td>
										<%
											Date today = new Date();
											SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
											
										%>
										<c:set var="date" value="<%= new java.util.Date() %>" />
										<c:set var="now" value="<%=f.format(today)%>"/>
							
										<fmt:formatDate var="sysMonth" value="${date}" pattern="MM"/>
										<fmt:formatDate var="birthMonth" value="${aOffer.careAge}" pattern="MM"/>
										<fmt:formatDate var="sysYear" value="${date}" pattern="yyyy"/>
										<fmt:formatDate var="birthYear" value = "${aOffer.careAge}" pattern = "yyyy" />
										<c:choose>
											<c:when test="${(sysYear-birthYear)<3}">
												<fmt:parseDate  var="sDate"  value="${now}" pattern="yyyy-MM-dd"/>
												<fmt:parseNumber value="${sDate.time / (1000*60*60*24)}" integerOnly="true" var="sysDate"></fmt:parseNumber>
												<fmt:parseDate value="${aOffer.careAge}" var="bDate" pattern="yyyy-MM-dd"/>
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
										</c:choose>	
																																			
									</td>
								</tr>
							</table>
							<div class="blank"></div>
							
							
							<table class="data-table">
								<tr id="fourth">
									<td class="first-td">원하는 시터 나이</td>
									<c:forTokens var="age" items="${aOffer.age}" delims=",">
										<c:if test='${age eq "G20"}'> <td class="sitter_age">20대</td> </c:if>
										<c:if test='${age eq "G30"}'> <td class="sitter_age">30대</td> </c:if>
										<c:if test='${age eq "G40"}'> <td class="sitter_age">40대</td> </c:if>
										<c:if test='${age eq "G50"}'> <td class="sitter_age">50대</td> </c:if>
										<c:if test='${age eq "G60"}'> <td class="sitter_age">60대</td> </c:if>										
									</c:forTokens>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr id="fifth">
									<td style="width: 25%;" class="first-td">원하는 시터 성별</td>
									<td style="width: 10%;">
										<c:choose>
											<c:when test="${aOffer.preperGender eq 'M'.charAt(0)}">남성</c:when>
											<c:otherwise>여성</c:otherwise>
										</c:choose>
									</td>
									<td style="width: 20%;" class="first-td">돌봄 유형</td>
									<td style="width: 45%;">${aOffer.careType}</td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td>신청 내용(요청사항)</td></tr>
								<tr style="width:100%; height: 300px;"><td>${aOffer.content}</td></tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td colspan="8">희망 돌봄 시간</td></tr>
								<tr class="possible-active time">
									<td>월</td>
									<td>
										<c:if test='${fn:contains(aOffer.careDays,"월")}'>
											${aOffer.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aOffer.careDays,"월")}'>-</c:if>
									</td>
									<td>화</td>
									<td>
										<c:if test='${fn:contains(aOffer.careDays,"화")}'>
											${aOffer.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aOffer.careDays,"화")}'>-</c:if>
									</td>
									<td>수</td>
									<td>
										<c:if test='${fn:contains(aOffer.careDays,"수")}'>
											${aOffer.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aOffer.careDays,"수")}'>-</c:if>
									</td>
									<td>목</td>
									<td>
										<c:if test='${fn:contains(aOffer.careDays,"목")}'>
											${aOffer.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aOffer.careDays,"목")}'>-</c:if>
									</td>
								</tr>
								<tr class="possible-active time">
									<td>금</td>
									<td>
										<c:if test='${fn:contains(aOffer.careDays,"금")}'>
											${aOffer.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aOffer.careDays,"금")}'>-</c:if>
									</td>
									<td>토</td>
									<td>
										<c:if test='${fn:contains(aOffer.careDays,"토")}'>
											${aOffer.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aOffer.careDays,"토")}'>-</c:if>
									</td>
									<td>일</td>
									<td>
										<c:if test='${fn:contains(aOffer.careDays,"일")}'>
											${aOffer.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aOffer.careDays,"일")}'>-</c:if>
									</td>
									<td>근무일</td>
									<td style="font-weight:bold; font-size:1.3rem;">
										총 <c:forTokens var="days" items="${aOffer.careDays}" delims=",">
											<c:forEach items="${days}" end="6" step="1">
												<c:set var="count" value="${count+1}"/>
											</c:forEach>
										</c:forTokens> <c:out value="${count}"/> 일
																				
									</td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td colspan="4">원하는 활동</td></tr>
								<tr class="possible-active active">
									<c:choose>
										<c:when test='${fn:contains(aOffer.careActivity,"A1")}'><td class="checked">실내놀이</td></c:when>
										<c:otherwise><td>실내놀이</td></c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test='${fn:contains(aOffer.careActivity,"A2")}'><td class="checked">등하원돕기</td></c:when>
										<c:otherwise><td>등하원돕기</td></c:otherwise>
									</c:choose>					
									<c:choose>
										<c:when test='${fn:contains(aOffer.careActivity,"A3")}'><td class="checked">책 읽기</td></c:when>
										<c:otherwise><td>책 읽기</td></c:otherwise>
									</c:choose>												
									<c:choose>
										<c:when test='${fn:contains(aOffer.careActivity,"A4")}'><td class="checked">야외활동</td></c:when>
										<c:otherwise><td>야외활동</td></c:otherwise>
									</c:choose>
								</tr>
								<tr class="possible-active active">
									<c:choose>
										<c:when test='${fn:contains(aOffer.careActivity,"A5")}'><td class="checked">한글놀이</td></c:when>
										<c:otherwise><td>한글놀이</td></c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test='${fn:contains(aOffer.careActivity,"A6")}'><td class="checked">영어놀이</td></c:when>
										<c:otherwise><td>영어놀이</td></c:otherwise>
									</c:choose>					
									<c:choose>
										<c:when test='${fn:contains(aOffer.careActivity,"A7")}'><td class="checked">학습지도</td></c:when>
										<c:otherwise><td>학습지도</td></c:otherwise>
									</c:choose>												
									<c:choose>
										<c:when test='${fn:contains(aOffer.careActivity,"A8")}'><td class="checked">체육놀이</td></c:when>
										<c:otherwise><td>체육놀이</td></c:otherwise>
									</c:choose>
								</tr>
							</table>							
						</div>
						<button id="close">닫기</button>	
					</center>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>