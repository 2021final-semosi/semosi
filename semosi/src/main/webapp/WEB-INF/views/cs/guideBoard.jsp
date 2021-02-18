<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.co.semosi.cs.model.vo.Guide"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.semosi.cs.model.vo.GuidePageData"%>
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
<link href="/resources/css/cs/guide.css" rel="stylesheet"
	type="text/css" />
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
					<a href="/csGuide.sms">이용가이드</a>
				</div>

				<ul id="boardMenu">
					<li><a href="#">부모회원 가이드</a></li>
					<li><a href="#">시터회원 가이드</a></li>
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
					<% GuidePageData gpd = (GuidePageData) request.getAttribute("pageData");
					ArrayList<Guide> list = gpd.getList();
					String pageNavi = gpd.getPageNavi();%>
					<% for(Guide guide : list) {%>
						<tr>
							<td><%=guide.getPostNo() %></td> 
							<%if(guide.getCategory().equals("S")){ %>
							<td title="<%=guide.getTitle() %>"><a
								href="/csGuidePost.sms?postNo=<%=guide.getPostNo()%>">[시터회원] <%=guide.getTitle() %></a></td>
							<%} else if(guide.getCategory().equals("P")){ %>
							<td title="<%=guide.getTitle() %>"><a
								href="/csGuidePost.sms?postNo=<%=guide.getPostNo()%>">[부모회원] <%=guide.getTitle() %></a></td>
							<%} %>
							<td><%=guide.getWriter() %></td>
							<% SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");%>
							<td><%=sdf.format(guide.getWriteDate().getTime()) %></td>
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