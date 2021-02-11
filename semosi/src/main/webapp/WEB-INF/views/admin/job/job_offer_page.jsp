<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세상의 모든 시터</title>
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
									<td>${aOffer.careAge}</td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr id="fourth">
									<td style="width: 25%;" class="first-td">원하는 시터 나이</td>
									<td style="width: 15%;">20대</td>
									<td style="width: 15%;">30대</td>
									<td style="width: 15%;">40대</td>
									<td style="width: 15%;">50대</td>
									<td style="width: 15%;">60대</td>
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
									<td>10:00 - 16:00</td>
									<td>화</td>
									<td>-</td>
									<td>수</td>
									<td>10:00 - 16:00</td>
									<td>목</td>
									<td>-</td>
								</tr>
								<tr class="possible-active time">
									<td>금</td>
									<td>10:00 - 16:00</td>
									<td>토</td>
									<td>-</td>
									<td>일</td>
									<td>-</td>
									<td>근무일</td>
									<td>총 3일</td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td colspan="4">원하는 활동</td></tr>
								<tr class="possible-active active">
									<td>실내놀이</td>
									<td>등하원돕기</td>
									<td>책 읽기</td>
									<td>야외활동</td>
								</tr>
								<tr class="possible-active active">
									<td>한글놀이</td>
									<td>영어놀이</td>
									<td>학습지도</td>
									<td>체육놀이</td>
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