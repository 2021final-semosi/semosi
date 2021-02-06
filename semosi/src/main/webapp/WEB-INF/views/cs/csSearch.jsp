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
<link href="/resources/css/cs/csSearch.css" rel="stylesheet"
	type="text/css" />
<title>세모시 - 세상의 모든 시터</title>
</head>
<body>
	<header> <%@ include file="/WEB-INF/views/commons/header.jsp"%>
	</header>
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
		<div class="row no-gutters" id="csTableRow">
			<div class="col-12 col-sm-12 col-md-3">
				<div class="row no-gutters">
					<div class="d-none d-md-block" style="height: 66px;">&nbsp;</div>
					<div class="col-4 col-md-12">
						<div class="category">
							<a href="#">모든카테고리 (5)</a>
						</div>
					</div>

					<div class="col-4 col-md-12">
						<div class="category">
							<a href="#">공지사항 (0)</a>
						</div>
					</div>
					<div class="col-4 col-md-12">
						<div class="category">
							<a href="#">이용가이드 (0)</a>
						</div>
					</div>
					<div class="col-4 col-md-12">
						<div class="category">
							<a href="#">부모회원 FAQ (2)</a>
						</div>
					</div>
					<div class="col-4 col-md-12">
						<div class="category">
							<a href="#">시터회원 FAQ (3)</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-12 col-md-9">
				<div id="resultMessage">
					<strong>모든 카테고리에서 "비밀번호" 검색 결과 5개</strong>
				</div>
				<div class="onePost" style="">
					<div>
						<a href="#">[회원정보] 로그인 정보가 기억나지 않아요.</a>
					</div>
					<div>
						<a href="/moveFaq.sms">부모회원 FAQ</a>
					</div>
					<div id="content">혹시 비밀번호가 기억나지 않는다면 '임시비밀번호 받기'을 클릭하고 휴대전화로
						임시비밀번호를 발급받으세요.</div>
				</div>
				<div class="onePost" style="">
					<div>
						<a href="#">게시글 제목이 표시됩니다.</a>
					</div>
					<div>
						<a href="/moveFaq.sms">시터회원 FAQ</a>
					</div>
					<div id="content">게시글 내용이 일부 표시됩니다.</div>
				</div>
				<div class="onePost" style="">
					<div>
						<a href="#">게시글 제목이 표시됩니다.</a>
					</div>
					<div>
						<a href="#">게시판 제목</a>
					</div>
					<div id="content">게시글 내용이 일부 표시됩니다.</div>
				</div>
				<div class="onePost">
					<div>
						<a href="#">게시글 제목이 표시됩니다.</a>
					</div>
					<div>
						<a href="#">게시판 제목</a>
					</div>
					<div id="content">게시글 내용이 일부 표시됩니다.</div>
				</div>
				<div class="onePost">
					<div>
						<a href="#">게시글 제목이 표시됩니다.</a>
					</div>
					<div>
						<a href="#">게시판 제목</a>
					</div>
					<div id="content">게시글 내용이 일부 표시됩니다.</div>
				</div>

				<div id="paginationBox">
					<ul id="pagination">
						<a href="#"><li>&lt;</li></a>
						<a href="#"><li style="background-color: #F6D257;">1</li></a>
						<a href="#"><li>2</li></a>
						<a href="#"><li>3</li></a>
						<a href="#"><li>4</li></a>
						<a href="#"><li>5</li></a>
						<a href="#"><li>&gt;</li></a>
					</ul>
				</div>
			</div>

		</div>
	</div>
	<footer><%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>
</body>
</html>