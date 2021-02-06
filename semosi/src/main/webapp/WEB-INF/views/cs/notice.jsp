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
<link href="/resources/css/cs/notice.css" rel="stylesheet"
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
					<li><a href="/moveNotice.sms">공지사항</a></li>
					<li><a href="/moveGuide.sms">이용가이드</a></li>
					<li><a href="/moveFaq.sms">자주묻는질문</a></li>
					<li><a href="/moveQna.sms">1:1문의</a></li>
				</ul>
			</div>
		</div>
		<div class="row no-gutters">
			<div class="col-12" id="boardNameBox">
				<div id="boardName">
					<a href="/moveNotice.sms">공지사항</a>
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
					<tr>
						<td>110</td>
						<td title="게시글 제목이 표시됩니다. 게시글 제목이 표시됩니다."><a
							href="/moveOnePost.sms">게시글 제목이 표시됩니다. 게시글 제목이 표시됩니다.</a></td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>110</td>
						<td
							title="게시글 제목이 표시됩니다. 게시글 제목이 표시됩니다.게시글 제목이 표시됩니다.게시글 제목이 표시됩니다."><a
							href="/moveOnePost.sms">게시글 제목이 표시됩니다. 게시글 제목이 표시됩니다.게시글 제목이
								표시됩니다.게시글 제목이 표시됩니다.</a></td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>110</td>
						<td
							title="게시글 제목이 표시됩니다. 게시글 제목이 이렇게 길면 언젠가는 잘리게 되어 있습니다. 말줄임표로 줄이게되어있습니다."><a
							href="/moveOnePost.sms">게시글 제목이 표시됩니다. 게시글 제목이 이렇게 길면 언젠가는
								잘리게 되어 있습니다. 말줄임표로 줄이게되어있습니다.</a></td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>110</td>
						<td>게시글 제목이 표시됩니다.</td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>110</td>
						<td>게시글 제목이 표시됩니다.</td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>110</td>
						<td>게시글 제목이 표시됩니다.</td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>110</td>
						<td>게시글 제목이 표시됩니다.</td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>110</td>
						<td>게시글 제목이 표시됩니다.</td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>110</td>
						<td>게시글 제목이 표시됩니다.</td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>110</td>
						<td>게시글 제목이 표시됩니다.</td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
					<tr>
						<td>110</td>
						<td>게시글 제목이 표시됩니다.</td>
						<td>관리자</td>
						<td>2021-01-15</td>
					</tr>
				</table>
			</div>

			<div class="col-12" id="paginationBox">
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