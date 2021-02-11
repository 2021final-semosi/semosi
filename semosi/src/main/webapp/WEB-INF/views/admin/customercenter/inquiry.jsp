<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_board.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_inquiry.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
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
					<p>1:1 문의</p>
					<div class="search">
						<form action="/searchBoard.ad" method="get" id="search">
							<select name="category">
								<!-- 이대로 value 값을 db에 넣을거라서 db컬럼명과 똑같이해줘야함 -->
								<option>전체</option>
								<option value="post_no">게시글 번호</option>
								<option value="member_id">아아디</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="del_YN">삭제여부</option>
							</select>
								<input type="text" name="keyword" />
								<button class="search-btn" type="submit">검색</button>
							</td>
						</form>
					</div>
					<div class="tab-content">
						<table class="board">
							<tr class="head">
								<th id="all_select"><input type="checkbox" /></th>
								<th class='post-no'>번호</th>
								<th class='member-id'>아이디</th>
								<th class='title'>제목</th>
								<th class='date'>작성일</th>
								<th class='del-YN'>삭제</th>
							</tr>
								<tr class="contents">
								<td class='select'><input type="checkbox" value="" name="send-select" /></td>
								<td class='post-no'>1</td>
								<td class='member-id'>abc123</td>
								<td class='title'><a data-toggle="modal" data-target="#inquiryModal">제목이지롱</a></td>
								<td class='date'>2021-01-26</td>
								<td class='del-YN'><button type="submit" class="delete-btn">삭제완료</button></td>
							</tr>
							<tr class="contents">
								<td class='select'><input type="checkbox" value="" name="send-select" /></td>
								<td class='post-no'></td>
								<td class='member-id'></td>
								<td class='title'></td>
								<td class='date'></td>
								<td class='del-YN'><button type="submit" class="restore-btn">삭제대기</button></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- Modal -->
				<!-- 문의 답변 -->
				<div class="modal fade" id="inquiryModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
					<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
						<div class="modal-content" id="modal-content">
							<div class="modal-header">
								<p id="guide_id">아이디: abc123</p>
							</div>
							<div class="modal-body"><br>
								<div>
								<p class="guide">제목</p>
									<p class="guide_text">
										<input type="text" class="modal_input" />
									</p>
									<br>
									<p class="guide">내용</p>
									<p class="guide_content">
									<input type="text" class="modal_input" />
									</p>
									<br>
									<p class="guide">답변</p>
									<p class="guide_content">
										<input type="text" class="modal_input" />
									</p>
								</div>
								<form action="#" method="post" class="board-form">
									<center>
										<input type="submit" name="nodify" id="modify_submit" value="작성" />
										<button type="button" class="class" data-dismiss="modal" aria-label="Close" id="modify_cancle">닫기</button>
									</center>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>