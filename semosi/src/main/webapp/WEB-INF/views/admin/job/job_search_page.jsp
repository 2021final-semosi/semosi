<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_jobSearch_page.css">
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
					<p>개별 구직 페이지</p>
					<center>
						<div class="table-wrapper">
							<table id="info-table">
								<tr id="first">
									<td style="width: 8%;">이름</td>
									<td style="width: 12%;">${aSearch.memberName}</td>
									<td style="width: 15%;">아이디</td>
									<td style="width: 25%;">${aSearch.memberId}</td>
									<td style="width: 15%;">전화번호</td>
									<td style="width: 25%;">${aSearch.phone}</td>
								</tr>
								<tr id="second">
									<td>성별</td>
									<td> <c:choose>
										<c:when test="${aSearch.gender eq 'M'.charAt(0)}">남성</c:when>
										<c:otherwise>여성</c:otherwise>
									</c:choose>
									</td>
									<td>주소</td>
									<td colspan="3">${aSearch.address}</td>
								</tr>
							</table>
							<table class="second-table">
								<tr id="third">
									<td style="width: 12%;">희망시급</td>
									<td>${aSearch.pay}</td>
									<td style="width: 16%;">CCTV 동의여부</td>
									<td>${aSearch.cctvYN}</td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr id="fourth">
									<td style="width: 24%;" class="first-td">인증서류</td>
									<c:choose>
										<c:when test='${aSearch.certFAYN eq "Y".charAt(0)&&aSearch.fDel eq "N".charAt(0)}'>
											<td class="checked">주민등록등ㆍ초본</td>
										</c:when>
										<c:otherwise> <td>주민등록등ㆍ초본</td> </c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test='${aSearch.certHEYN eq "Y".charAt(0)&&aSearch.hDel eq "N".charAt(0)}'>
											<td class="checked">건강진단결과서</td>
										</c:when>
										<c:otherwise> <td>건강진단결과서</td> </c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test='${aSearch.certREYN eq "Y".charAt(0)&&aSearch.rDel eq "N".charAt(0)}'>
											<td class="checked">가족관계증명서</td>
										</c:when>
										<c:otherwise> <td>가족관계증명서</td> </c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test='${aSearch.certTEYN eq "Y".charAt(0)&&aSearch.tDel eq "N".charAt(0)}'>
											<td class="checked">교사 자격증</td>
										</c:when>
										<c:otherwise> <td>교사 자격증</td> </c:otherwise>
									</c:choose>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td>자기소개</td></tr>
								<tr style="width:100%; height: 300px;"><td>${aSearch.selfIntroduce}</td></tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td style="width: 28%;">선호 돌봄 유형</td>
									<td></td>
								</tr>
							</table>
							<div class="blank" id="blank-div"></div>
							<table class="data-table">
								<tr id="seventh">
									<td style="width: 28%;" class="first-td">돌봄 가능 연령</td>
									<c:choose>
										<c:when test='${fn:contains(aSearch.careAge,"1")}'><td class="checked">신생아</td></c:when>
										<c:otherwise> <td>신생아</td> </c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test='${fn:contains(aSearch.careAge,"2")}'><td class="checked">영아</td></c:when>
										<c:otherwise> <td>영아</td> </c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test='${fn:contains(aSearch.careAge,"3")}'><td class="checked">유아</td></c:when>
										<c:otherwise> <td>유아</td> </c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test='${fn:contains(aSearch.careAge,"4")}'><td class="checked">초등학생</td></c:when>
										<c:otherwise> <td>초등학생</td> </c:otherwise>
									</c:choose>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td colspan="4">가능한 활동</td></tr>
								<tr class="possible-active active">
									<c:choose>
										<c:when test='${fn:contains(aSearch.careActivity,"A1")}'><td class="checked">실내놀이</td></c:when>
										<c:otherwise><td>실내놀이</td></c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test='${fn:contains(aSearch.careActivity,"A2")}'><td class="checked">등하원돕기</td></c:when>
										<c:otherwise><td>등하원돕기</td></c:otherwise>
									</c:choose>					
									<c:choose>
										<c:when test='${fn:contains(aSearch.careActivity,"A3")}'><td class="checked">책 읽기</td></c:when>
										<c:otherwise><td>책 읽기</td></c:otherwise>
									</c:choose>												
									<c:choose>
										<c:when test='${fn:contains(aSearch.careActivity,"A4")}'><td class="checked">야외활동</td></c:when>
										<c:otherwise><td>야외활동</td></c:otherwise>
									</c:choose>
								</tr>
								<tr class="possible-active active">
									<c:choose>
										<c:when test='${fn:contains(aSearch.careActivity,"A5")}'><td class="checked">한글놀이</td></c:when>
										<c:otherwise><td>한글놀이</td></c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test='${fn:contains(aSearch.careActivity,"A6")}'><td class="checked">영어놀이</td></c:when>
										<c:otherwise><td>영어놀이</td></c:otherwise>
									</c:choose>					
									<c:choose>
										<c:when test='${fn:contains(aSearch.careActivity,"A7")}'><td class="checked">학습지도</td></c:when>
										<c:otherwise><td>학습지도</td></c:otherwise>
									</c:choose>												
									<c:choose>
										<c:when test='${fn:contains(aSearch.careActivity,"A8")}'><td class="checked">체육놀이</td></c:when>
										<c:otherwise><td>체육놀이</td></c:otherwise>
									</c:choose>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td colspan="6">활동 가능 지역</td></tr>
								<tr class="possible-active ranking">
									<td class="place-ranking">1순위</td>
									<td></td>
									<td class="place-ranking">2순위</td>
									<td></td>
									<td class="place-ranking">3순위</td>
									<td></td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td colspan="8">활동 가능한 시간</td></tr>
								<tr class="possible-active time">
									<td>월</td>
									<td>
										<c:if test='${fn:contains(aSearch.careDays,"월")}'>
											${aSearch.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aSearch.careDays,"월")}'>-</c:if>
									</td>
									<td>화</td>
									<td>
										<c:if test='${fn:contains(aSearch.careDays,"화")}'>
											${aSearch.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aSearch.careDays,"화")}'>-</c:if>
									</td>
									<td>수</td>
									<td>
										<c:if test='${fn:contains(aSearch.careDays,"수")}'>
											${aSearch.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aSearch.careDays,"수")}'>-</c:if>
									</td>
									<td>목</td>
									<td>
										<c:if test='${fn:contains(aSearch.careDays,"목")}'>
											${aSearch.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aSearch.careDays,"목")}'>-</c:if>
									</td>
								</tr>
								<tr class="possible-active time">
									<td>금</td>
									<td>
										<c:if test='${fn:contains(aSearch.careDays,"금")}'>
											${aSearch.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aSearch.careDays,"금")}'>-</c:if>
									</td>
									<td>토</td>
									<td>
										<c:if test='${fn:contains(aSearch.careDays,"토")}'>
											${aSearch.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aSearch.careDays,"토")}'>-</c:if>
									</td>
									<td>일</td>
									<td>
										<c:if test='${fn:contains(aSearch.careDays,"일")}'>
											${aSearch.careTime}
										</c:if> 
										<c:if test='${not fn:contains(aSearch.careDays,"일")}'>-</c:if>
									</td>
									<td>근무일</td>
									<td style="font-weight:bold; font-size:1.3rem;">
										총 <c:forTokens var="days" items="${aSearch.careDays}" delims=",">
											<c:forEach items="${days}" end="6" step="1">
												<c:set var="count" value="${count+1}"/>
											</c:forEach>
										</c:forTokens> <c:out value="${count}"/> 일
																				
									</td>
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