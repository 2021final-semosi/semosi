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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_board.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_report_page.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin_job.js"></script>
<script>
	$(function(){
		
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
					<p>신고 받은 게시글</p>
					<div class="tab-content">
							<table id="tableone">
								<tr class="first_re">
									<th class='membername' style="width: 110px;">이름</th>
									<td class="membername" style="width: 110px;">
										<c:choose>
											<c:when test="${postReportPage.oName eq null}">${postReportPage.sName}</c:when>
											<c:otherwise>${postReportPage.oName}</c:otherwise>
										</c:choose>
									</td>
									<th class='memberid' style="width: 145px;">아이디</th>
									<td class="memberid" style="width: 145px;">
										<c:choose>
											<c:when test="${postReportPage.oId eq null}">${postReportPage.sId}</c:when>
											<c:otherwise>${postReportPage.oId}</c:otherwise>
										</c:choose>
									</td>
								</tr>
							</table>
							<table id="tabletwo">
								<tr class="first_re">
									<th class="title" width="130px">게시판 제목</th>
									<td class='title' colspan="5">
										<c:choose>
											<c:when test="${postReportPage.oTitle eq null}">${postReportPage.sTitle}</c:when>
											<c:otherwise>${postReportPage.oTitle}</c:otherwise>
										</c:choose>
									</td>
								</tr>
								<tr class="second_re">
									<th class='content'>게시판 내용</th>
									<td class='content' colspan="5">
										<c:choose>
											<c:when test="${postReportPage.oText eq null}">${postReportPage.sText}</c:when>
											<c:otherwise>${postReportPage.oText}</c:otherwise>
										</c:choose>
									</td>
								</tr>
								<tr class="second_re">
									<th class='reason'>신고사유</th>
									<td class='reason' colspan="5">${postReportPage.content}</td>
								</tr>
						</table>
						<center>
						<c:choose>
							<c:when test="${postReportPage.oDel eq 'Y'.charAt(0) || postReportPage.sDel eq 'Y'.charAt(0)}">
								<button id="close">닫기</button>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${postReportPage.oPostNo eq null}">						
										<button class="delete-page" id="${postReportPage.sPostNo}">삭제</button>
									</c:when>
									<c:otherwise><button class="delete-page" id="${postReportPage.oPostNo}">삭제</button></c:otherwise>
								</c:choose> 
								<button id="close">닫기</button>
							</c:otherwise>							
						</c:choose>
						</center>	
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>