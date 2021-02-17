<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.co.semosi.cs.model.vo.FAQ"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.semosi.cs.model.vo.FAQPageData"%>
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
<link href="/resources/css/cs/FAQ.css" rel="stylesheet" type="text/css" />
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
					<a href="/csFAQ.sms">자주 묻는 질문 (FAQ)</a>
				</div>

				<ul id="boardMenu">
					<li><a href="#">부모회원</a></li>
					<li><a href="#">시터회원</a></li>
				</ul>
			</div>
			<div class="col-12" id="noticeBoardBox">
				<table id="noticeBoard" cellspacing="0px" cellpadding="0px">
					<colgroup>
						<col width="10%">
						<col width="55%">
						<col width="10%">
						<col width="15%">
					</colgroup>
					
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
					<% FAQPageData fpd = (FAQPageData) request.getAttribute("pageData");
					ArrayList<FAQ> list = fpd.getList();
					String pageNavi = fpd.getPageNavi();%>
					<% for(FAQ faq : list) {%>
					<tr>
						<td><%=faq.getPostNo() %></td>
						<%if(faq.getCategory().equals("S")){ %>
						
						<td title="<%=faq.getTitle() %>"><a
							href="/csFAQPost.sms?postNo=<%=faq.getPostNo()%>">[시터회원] <%=faq.getTitle() %></a></td>
							
						<%} else if(faq.getCategory().equals("P")){ %>
						
						<td title="<%=faq.getTitle() %>"><a
							href="/csFAQPost.sms?postNo=<%=faq.getPostNo()%>">[부모회원] <%=faq.getTitle() %></a></td>
							
						<%} %>
						<td><%=faq.getWriter() %></td>
						<% SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");%>
						<td><%=sdf.format(faq.getWriteDate().getTime()) %></td>
					</tr>
					<%} %>
				</table>
			</div>

			<div class="col-12" id="paginationBox">
				<ul id="pagination">
					<%=pageNavi %>
				</ul>
			</div>
		</div>
		<div class="row no-gutters">
			<div class="col-12" id="search">
				<select>
					<option>제목</option>
					<option>작성자</option>
					<option>내용</option>
				</select> <input type="text" />
				<button>검색</button>
			</div>
		</div>
	</div>
	<footer> <%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>
</body>
</html>