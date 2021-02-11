<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_board.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_FAQ.css">
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
					<p>FAQ - 구인회원</p>
					<div class="search">
						<form action="/searchBoard.ad" method="get" id="search">
							<select name="category">
								<!-- 이대로 value 값을 db에 넣을거라서 db컬럼명과 똑같이해줘야함 -->
								<option>전체</option>
								<option value="post_no">게시글 번호</option>
								<option value="title">제목</option>
								<option value="date">작성자</option>
								<option value="del_YN">삭제</option>
							</select>
							<input type="text" name="keyword" />
							<button class="search-btn" type="submit">검색</button>
							<button id="write-btn" type="button"><a data-toggle="modal" data-target="#writeModal">글쓰기</a></button>
						</td>
					</form>
					</div>
					<div class="tab-content">
						<table class="board">
							<tr class="head">
								<th id="all_select"><input type="checkbox" /></th>
								<th class='post-no'>번호</th>
								<th class='title'>제목</th>
								<th class='date'>작성일</th>
								<th class='del-YN'>삭제여부</th>
							</tr>
							<tr class="contents">
								<td class='select'><input type="checkbox" value="" name="send-select" /></td>
								<td class='post-no'></td>
								<td class='title'><a data-toggle="modal" data-target="#modifyModal">제목이지롱</a></td>
								<td class='date'></td>
								<td class='del-YN'><button type="submit" class="delete-btn">삭제완료</button></td>
							</tr>
							<tr class="contents">
								<td class='select'><input type="checkbox" value="" name="send-select" /></td>
								<td class='post-no'></td>
								<td class='title'><a data-toggle="modal" data-target="#modifyModal"></a></td>
								<td class='date'></td>
								<td class='del-YN'><button type="submit" class="restore-btn">삭제대기</button></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- Modal -->
				<!-- 글 수정 -->
				<div class="modal fade" id="modifyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
					<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
						<div class="modal-content" id="modal-content">
							<div class="modal-body">
								<div id="guide-body">
									<p class="guide">제목</p>
									<p class="guide_text">FAQ 제목</p><br>
									<p class="guide">내용</p>
									<textarea class="guide_content"> FAQ 내용</textarea>
								</div>
								<form action="#" method="post" class="board-form">
								<center>
									<input type="submit" name="nodify" id="modify_submit" value="수정" />
									<button type="button" class="class" data-dismiss="modal" aria-label="Close" id="modify_cancle">닫기</button>
								</center>
								</form>
							</div>
						</div>
					</div>
				</div>
			<!-- Modal -->
			<!-- 글 작성 -->
				<div class="modal fade" id="writeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
					<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
						<div class="modal-content" id="modal-content">
							<div class="modal-body">
								<div id="guide-body">
									<p class="guide">제목</p>
									<p class="guide_text"><textarea class="modal_input"></textarea></p><br>
									<p class="guide">내용</p>
									<textarea class="guide_content"></textarea>
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