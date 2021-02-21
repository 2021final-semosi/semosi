<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.co.semosi.cs.model.vo.QnA"%>
<%@page import="kr.co.semosi.cs.model.vo.FAQ"%>
<%@page import="kr.co.semosi.cs.model.vo.Guide"%>
<%@page import="kr.co.semosi.cs.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
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
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<link href="/resources/css/cs/csMain.css" rel="stylesheet"
	type="text/css" />
<title>세모시 - 세상의 모든 시터</title>
</head>
<body>
	<header><%@ include file="/WEB-INF/views/commons/header.jsp"%></header>
	<div class="container-fluid p-0">
		<div class="row no-gutters">
			<div class="col-12" id="searchBox">
				<div id="search">
					<form action="/csSearch.sms" method="get">
						<span><i class="fas fa-search"></i></span> <input name="keyword" type="text" />
					</form>
				</div>
			</div>
		</div>

		<div class="row no-gutters" id="csBtnRow">
			<div class="col-6 col-sm-6 col-md-3 col-lg-3 csBtnBox">
				<a href="/csGuide.sms" class="csBtn">이용가이드</a>
			</div>
			<div class="col-6 col-sm-6 col-md-3 col-lg-3 csBtnBox">
				<a href="/csFAQ.sms" class="csBtn">
					자주 묻는 질문
				</a>
			</div>
			<div class="col-6 col-sm-6 col-md-3 col-lg-3 csBtnBox">
				<a href="/csNotice.sms" class="csBtn">공지사항</a>
			</div>
			<div class="col-6 col-sm-6 col-md-3 col-lg-3 csBtnBox">
				<a href="/csQnA.sms" class="csBtn">1:1문의</a>
			</div>
		</div>
		<div class="row no-gutters" id="csTableRow">
			<div class="col-md-6 csTableBox">
				<table class="csTable" cellspacing="0px" cellpadding="0px">
					<caption>
						<h4>
							<a href="/csNotice.sms">공지사항</a>
						</h4>
					</caption>
					<colgroup>
						<col width="70%">
						<col width="30%">
					</colgroup>
					
					<% ArrayList<Notice> noticeList = (ArrayList<Notice>)request.getAttribute("noticeList");
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");%>
					<% for(int i=0;i<5;i++){ %>
						<tr>
							<td style="text-align: left;"><a href="/csNoticePost.sms?postNo=<%=noticeList.get(i).getPostNo()%>"><%= noticeList.get(i).getTitle() %></a></td>
							<td style="text-align: right;"><%= sdf.format(noticeList.get(i).getWriteDate()) %></td>
						</tr>
					<%} %>
				</table>
			</div>
			<div class="col-md-6 csTableBox">
				<table class="csTable" cellspacing="0px" cellpadding="0px">
					<caption>
						<h4>
							<a href="/csGuide.sms">이용가이드</a>
						</h4>
					</caption>
					<colgroup>
						<col width="70%">
						<col width="30%">
					</colgroup>
					<% ArrayList<Guide> guideList = (ArrayList<Guide>)request.getAttribute("guideList");%>

					<% for(int i=0;i<5;i++){ 
						if(guideList.get(i).getCategory().equals("S")){%>
						<tr>
							<td><a href="/csGuidePost.sms?postNo=<%=guideList.get(i).getPostNo()%>">[시터회원] <%= guideList.get(i).getTitle() %></a></td>
							<td><%= sdf.format(guideList.get(i).getWriteDate()) %></td>
						</tr>
						<%}else if(guideList.get(i).getCategory().equals("P")) {%>
						<tr>
							<td><a href="/csGuidePost.sms?postNo=<%=guideList.get(i).getPostNo()%>">[부모회원] <%= guideList.get(i).getTitle() %></a></td>
							<td><%= sdf.format(guideList.get(i).getWriteDate()) %></td>
						</tr>
						<%} %>
					<%} %>
				</table>
			</div>
			<div class="col-md-6 csTableBox">
				<table class="csTable" cellspacing="0px" cellpadding="0px">
					<caption>
						<h4>
							<a href="/csFAQ.sms">자주 묻는 질문</a>
						</h4>
					</caption>
					<colgroup>
						<col width="70%">
						<col width="30%">
					</colgroup>					
					<% ArrayList<FAQ> FAQList = (ArrayList<FAQ>)request.getAttribute("FAQList");%>

					<% for(int i=0;i<5;i++){ 
						if(FAQList.get(i).getCategory().equals("S")){%>
						<tr>
							<td><a href="/csFAQPost.sms?postNo=<%=FAQList.get(i).getPostNo()%>">[시터회원] <%= FAQList.get(i).getTitle() %></a></td>
							<td><%= sdf.format(FAQList.get(i).getWriteDate()) %></td>
						</tr>
						<%}else if(FAQList.get(i).getCategory().equals("P")) {%>
						<tr>
							<td><a href="/csFAQPost.sms?postNo=<%=FAQList.get(i).getPostNo()%>">[부모회원] <%= FAQList.get(i).getTitle() %></a></td>
							<td><%= sdf.format(FAQList.get(i).getWriteDate()) %></td>
						</tr>
						<%} %>
					<%} %>
				</table>
			</div>
			
			<div class="col-md-6 csTableBox">
				<table class="csTable" cellspacing="0px" cellpadding="0px">
					<caption>
						<h4>
							<a href="/csQnA.sms">1:1문의</a>
						</h4>
					</caption>
					<colgroup>
						<col width="70%">
						<col width="30%">
					</colgroup>	
					<% ArrayList<QnA> QnAList = (ArrayList<QnA>)request.getAttribute("QnAList");%>
					<% ParentMember pMember = (ParentMember)session.getAttribute("pMember");%>
					<% SitterMember sMember = (SitterMember)session.getAttribute("sMember");%>
					

		
					<% for(int i=0;i<5;i++){ %>
					<tr>
						<td title="<%=QnAList.get(i).getTitle() %>">
						<%if(pMember!=null) { //부모회원이라면  
								if(QnAList.get(i).getWriterPNo()!=null){ //현재 출력할 글이 부모회원 글이라면
									if(QnAList.get(i).getWriterPNo().equals(pMember.getMemberNo())){%>
									<a href="/csQnAPost.sms?postNo=<%=QnAList.get(i).getPostNo()%>"><%=QnAList.get(i).getTitle() %></a>
									<%}
									else { %>
									<a><%=QnAList.get(i).getTitle() %></a>
									<%}
								}
						
								else if(QnAList.get(i).getWriterSNo()!=null){ //현재 출력할 글이 시터회원 글이라면%> 
									<a><%=QnAList.get(i).getTitle() %></a>

								<%}%>
								
								
						<%} else if(sMember!=null) { //시터회원이라면 
							if(QnAList.get(i).getWriterSNo()!=null){ //현재 출력할 글이 시터회원 글이라면
								if(QnAList.get(i).getWriterSNo().equals(sMember.getMemberNo())){%>
								<a href="/csQnAPost.sms?postNo=<%=QnAList.get(i).getPostNo()%>"><%=QnAList.get(i).getTitle() %></a>
								<%}
								else { %>
								<a><%=QnAList.get(i).getTitle() %></a>
								<%}
							}
					
							//현재 출력할 글이 부모회원 글이라면
							else if(QnAList.get(i).getWriterPNo()!=null){ %>
								<a><%=QnAList.get(i).getTitle() %></a>

							<%}
						} else {%>
							<a><%=QnAList.get(i).getTitle() %></a>
						<%} %>
						</td>			
						
							<td><%= sdf.format(QnAList.get(i).getWriteDate()) %></td>
						</tr>
					<%} %>
					
				</table>
			</div>
		</div>
	</div>
	<footer><%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>
</body>
</html>