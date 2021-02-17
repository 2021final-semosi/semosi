<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.co.semosi.cs.model.vo.FAQ"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link href="/resources/css/cs/post.css" rel="stylesheet" type="text/css" />
<title>세모시 - 세상의 모든 시터</title>
</head>
<body>
	<header> <%@ include file="/WEB-INF/views/commons/header.jsp"%>
	</header>
	<div class="container-fluid p-0">
		<div class="row no-gutters">
			<div class="col-12" id="csMenuBox">
				<ul id="csMenu">
					<li><a href="/csNotice.sms">공지사항</a></li>
					<li><a href="/csGuide.sms">이용가이드</a></li>
					<li><a href="/csFAQ.sms">자주묻는질문</a></li>
					<li><a href="/csQnA.sms">1:1문의</a></li>
				</ul>
			</div>
		</div>

		<div class="row no-gutters">
			<div class="col-12" id="boardNameBox">
				<div id="boardName">
					<a href="/csFAQ.sms">FAQ</a>
				</div>
			</div>
			<div class="col-12" id="postBox">
				<table id="post" cellspacing="0px" cellpadding="0px">
					<colgroup>
						<col width="10%">
						<col width="50%">
						<col width="10%">
						<col width="20%">
					</colgroup>
					<% FAQ FAQPost = (FAQ)request.getAttribute("FAQPost");%>
					<tr>
						<td>제목</td>
						<td colspan="3"><%=FAQPost.getTitle()%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><%=FAQPost.getWriter()%></td>
						<td>작성일</td>
						<%SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); %>
						<td><%=sdf.format(FAQPost.getWriteDate())%></td>
						
					</tr>
					<tr>
						<td colspan="4">
							<div id="content"><%=FAQPost.getContent() %></div>
						</td>
					</tr>
				</table>
			</div>
			<div class="col-12" >
				<div id="btnBox">
					<button id="modBtn">수정</button>
					<button id="delBtn">삭제</button>
					<a href="/csFAQ.sms" id="listBtn">목록</a>
				</div>
			</div>
		</div>
		<div class="row no-gutters">
			<div class="col-md-12" id="commentBox">
				<ul id="comment">
					<li>
						<p>
							<strong>작성자1</strong> 2021-01-15 20:50:00
						</p>
						<div>댓글 내용입니다.</div>
					</li>
					<li>
						<p>
							<strong>작성자1</strong> 2021-01-15 20:50:00
						</p>
						<div>댓글 내용입니다.</div>
					</li>
				</ul>
			</div>
			<div class="col-md-12" id="commentInputBox">
				<div id="commentInput">
					<textarea></textarea>
					<button>댓글</button>
				</div>
			</div>
		</div>

	</div>
	<footer><%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>
</body>
</html>