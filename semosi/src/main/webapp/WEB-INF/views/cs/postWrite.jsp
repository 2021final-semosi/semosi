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
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<link href="/resources/css/cs/postWrite.css" rel="stylesheet"
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
		
		<form action="/insertCsPost.sms" method="post">
		<div class="row no-gutters">
			<div class="col-12" id="boardNameBox">
				<div id="boardName">
					<a href="/csQnA.sms">1:1 문의</a>
				</div>
			</div>
			
			<div class="col-12" id="postBox">
				<table id="post" cellspacing="0px" cellpadding="0px">
					<colgroup>
						<col width="10%">
						<col width="90%">
					</colgroup>
					<tr>
						<td>제목</td>
						<td><input type="text" style="width: 100%;" name="title" /></td>
					</tr>
					<tr>
					<% SitterMember sMember = (SitterMember)request.getAttribute("sMember");
					ParentMember pMember = (ParentMember)request.getAttribute("pMember");%>
					<% if(sMember!=null) {%>
						<td>작성자</td>
						<td><input type="text" value="<%=sMember.getMemberName() %>" id="writer" readonly />
						<input type="hidden" name="writerS" value="<%=sMember.getMemberNo()%>"/>
						<input type="hidden" name="writerP" value="null" /></td>
						
					<%} else if(pMember!=null) {%>
						<td>작성자</td>
						<td><input type="text" value="<%=pMember.getMemberName() %>" id="writer" readonly />
						<input type="hidden" name="writerP" value="<%=pMember.getMemberNo()%>"/>
						<input type="hidden" name="writerS" value="null" /></td>
					<%}%>
						
					</tr>
					<tr>
						<td colspan="2"><textarea id="postContent" name="content"></textarea>
						</td>
					</tr>
				</table>
			</div>
			<div class="col-12" id="btnBox">
				<div style="text-align: center;">	
					<input type="submit" id="okBtn" value="확인"></button>
					<script>
						$(function(){
							$('#cancelBtn').click(function(){
								var result = confirm("작성을 취소하고 목록으로 돌아갑니까?");
							
								if(result){
									window.history.back();
								}
							});
						});
					</script>
					<button type="button" id="cancelBtn">취소</button>
				</div>
			</div>
		</div>
		</form>
	</div>
	<footer><%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>
</body>
</html>