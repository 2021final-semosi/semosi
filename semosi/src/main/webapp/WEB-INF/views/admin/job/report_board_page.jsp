<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_board.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_report_board_page.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
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
					<p>게시판 신고 리스트</p>
					<div class="tab-content">
							<table id="tableone">
								<tr class="first_re">
									<th class='membername' style="width: 110px;">이름</th>
									<td class="membername" style="width: 110px;">김모시</td>
									<th class='memberid' style="width: 145px;">회원 아이디</th>
									<td class="memberid" style="width: 145px;">kimmosi</td>
									<th class='reporterid' style="width: 145px;">신고자 아이디</th>
									<td class="reporterid" style="width: 145px;">backjoon</td>
								</tr>
							</table>
							<table id="tabletwo">
								<tr class="first_re">
									<th class="title" width="130px">게시판 제목</th>
									<td class='title' colspan="5">게시판 제목이랍니다아</td>
								</tr>
								<tr class="second_re">
									<th class='content'>게시판 내용</th>
									<td class='content' colspan="5">게시판 내용 가져오기</td>
								</tr>
								<tr class="first_re">
									<th class='report_category'>신고유형</th>
									<td class='report_category' colspan="5">음란성 게시글</td>
								</tr>
								<tr class="second_re">
									<th class='reason'>신고사유</th>
									<td class='reason' colspan="5">신고사유기재란입니다.</td>
								</tr>
						</table>
					<input type="submit" value="삭제" /><button id="close"><a href="/report_board.do">닫기</a></button>	
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>