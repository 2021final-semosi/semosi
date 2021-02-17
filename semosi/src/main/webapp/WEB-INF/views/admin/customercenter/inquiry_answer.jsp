<%@page import="kr.co.semosi.admin.customer.model.vo.Inquiry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_board.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_inquiry_answer.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<title>세모시 - 세상의 모든 시터</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<%
	Inquiry i = (Inquiry)request.getAttribute("inquiry");
%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin_inquiry_answer.js"></script>
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
					<p>1:1 문의 - 답변</p>
						<% if(i.getPId()==null) { %>
							<span id="inquiry_id">아이디 : <%= i.getSId() %></span>
						<% } else if(i.getSId() == null){ %>
							<span id="inquiry_id">아이디 : <%= i.getPId() %></span>
						<% } %>
					
					<div id="content-body">				
						<div>
							<input type="hidden" name="postNo" value="<%= i.getPostNo() %>" />
							<p class="guide" id="title">제목</p>
							<p class="guide_text"><%= i.getTitle() %></p>
							<br>
							<p class="guide">내용</p>
							<p class="guide_content"><%= i.getQuestion() %></p>
							<br>
							<p class="guide">답변</p>
							<p class="guide_answer">
								<% if(i.getAnswer()!=null) { %>
									<textarea class="answer_text" name="answer" id="answer_text"><%= i.getAnswer() %></textarea>
								<% } else { %>
									<textarea class="answer_text" name="answer" id="answer_text" placeholder="답변을 작성해주세요." required></textarea>
								<% } %>
							</p>
						</div>
						<center>
							<% if(i.getAnswer()!=null) { %>
								<input type="button" name="write" id="modify_btn" value="수정" />
							<% } else { %>
								<input type="button" name="modify" id="write_btn" value="작성" />
							<% } %>							
							<button type="button" id="write_cancle">나가기</button>
						</center>
					</div>
				</div>					
			</div>
		</div>
	</div>
</div>
</body>
</html>