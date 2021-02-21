<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.co.semosi.cs.model.vo.QnA"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.semosi.cs.model.vo.QnAPageData"%>
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
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<link href="/resources/css/cs/QNA.css" rel="stylesheet" type="text/css" />
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
					<a href="/csQnA.sms">1:1 문의</a>
				</div>
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
					<% QnAPageData qpd = (QnAPageData) request.getAttribute("pageData");
					ArrayList<QnA> list = qpd.getList();
					String pageNavi = qpd.getPageNavi();%>
					<tr>

					<% ParentMember pMember = (ParentMember)session.getAttribute("pMember");%>
					<% SitterMember sMember = (SitterMember)session.getAttribute("sMember");%>
						<% for(QnA qna : list) {%>
						<td><%=qna.getPostNo() %></td>
						<td title="<%=qna.getTitle() %>">
						<%if(pMember!=null) { //부모회원이라면 
								if(qna.getWriterPNo().equals(pMember.getMemberNo())){%>
									<a href="/csQnAPost.sms?postNo=<%=qna.getPostNo()%>"><%=qna.getTitle() %></a>
								<%}
								else { %>
									<a><%=qna.getTitle() %></a>
								<%}
						} else if(sMember!=null) { //시터회원이라면 
								if(qna.getWriterPNo().equals(sMember.getMemberNo())){%>
									<a href="/csQnAPost.sms?postNo=<%=qna.getPostNo()%>"><%=qna.getTitle() %></a>
								<%}
								else { %>
								<a><%=qna.getTitle() %></a>
								<%}
						} else {%>
							<a><%=qna.getTitle() %></a>
						<%} %>
						</td>

						<td><%=qna.getWriterSNo() %></td>
						<% SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");%>
						<td><%=sdf.format(qna.getWriteDate().getTime()) %></td>
					</tr>
					<%} %>
				</table>
			</div>



			<div class="col-12">
				<div id="write-btn-panel">
					<button type="button">
						<a href="/csPostWrite.sms">글쓰기</a>
					</button>
				</div>
			</div>




			<div class="col-12" id="paginationBox">
				<ul id="pagination">${pageData.pageNavi}
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