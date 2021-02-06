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
					<form action="/moveCsSearch.sms" method="get">
						<span><i class="fas fa-search"></i></span> <input type="text" />
					</form>
				</div>
			</div>
		</div>

		<div class="row no-gutters" id="csBtnRow">
			<div class="col-lg-1"></div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-2 csBtnBox">
				<button class="csBtn" onclick="location.href='/moveGuide.sms'">이용가이드</button>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-2 csBtnBox">
				<button class="csBtn" onclick="location.href='/moveFaq.sms'">
					부모회원<br>자주 묻는 질문
				</button>
			</div>
			<div class="col-6 col-sm-6 col-md-4 col-lg-2 csBtnBox">
				<button class="csBtn" onclick="location.href='/moveFaq.sms'">
					시터회원<br>자주 묻는 질문
				</button>
			</div>
			<div class="col-6 col-sm-6 col-md-6 col-lg-2 csBtnBox">
				<button class="csBtn" onclick="location.href='/moveNotice.sms'">공지사항</button>
			</div>
			<div class="col-6 col-sm-6 col-md-6 col-lg-2 csBtnBox">
				<button class="csBtn" onclick="location.href='/moveQna.sms'">1:1문의</button>
			</div>
			<div class="col-lg-1"></div>
		</div>
		<div class="row no-gutters" id="csTableRow">
			<div class="col-md-6 csTableBox">
				<table class="csTable" cellspacing="0px" cellpadding="0px">
					<caption>
						<h4>
							<a href="/moveNotice.sms">공지사항</a>
						</h4>
					</caption>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
				</table>
			</div>
			<div class="col-md-6 csTableBox">
				<table class="csTable" cellspacing="0px" cellpadding="0px">
					<caption>
						<h4>
							<a href="/moveGuide.sms">이용가이드</a>
						</h4>
					</caption>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
				</table>
			</div>
			<div class="col-md-6 csTableBox">
				<table class="csTable" cellspacing="0px" cellpadding="0px">
					<caption>
						<h4>
							<a href="/moveFaq.sms">자주 묻는 질문</a>
						</h4>
					</caption>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
				</table>
			</div>
			<div class="col-md-6 csTableBox">
				<table class="csTable" cellspacing="0px" cellpadding="0px">
					<caption>
						<h4>
							<a href="/moveQna.sms">1:1문의</a>
						</h4>
					</caption>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>게시글 제목이 표시됩니다.</td>
						<td>2021-01-15</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<footer><%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>
</body>
</html>