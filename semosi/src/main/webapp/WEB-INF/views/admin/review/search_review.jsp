<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="false" %>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_board.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_review.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {//--페이지 셋팅
		var totalPage = ${totalPage}; //전체 페이지
		var startPage = ${startPage}; //현재 페이지

		var pagination = "";
		//--페이지네이션에 항상 10개가 보이도록 조절
		var forStart = 0;
		var forEnd = 0;

		if ((startPage - 5) < 1) {
			forStart = 1;
		} else {
			forStart = startPage - 5;
		}

		if (forStart == 1) {
			if (totalPage > 9) {
					forEnd = 10;
				} else {
					forEnd = totalPage;
			}
		} else {
			if ((startPage + 4) > totalPage) {
				forEnd = totalPage;
			if (forEnd > 9) {
				forStart = forEnd - 9
			}
		} else {
			forEnd = startPage + 4;
			}
		}//--페이지네이션에 항상 10개가 보이도록 조절

	//전체 페이지 수를 받아 돌린다.
	for (var i = forStart; i <= forEnd; i++) {
		if (startPage == i) {
			pagination += ' <button name="page_move" start_page="'+i+'" disabled>' + i + '</button>';
		} else {
			pagination += ' <button name="page_move" start_page="'+i+'" style="cursor:pointer;" >'+ i + '</button>';
		}
	}
	
	//하단 페이지 부분에 붙인다.
	$("#pagination").append(pagination);//--페이지 셋팅
		$(document).on("click", "button[name='page_move']",function() {
			var visiblePages = 13;//리스트 보여줄 페이지
			$('#startPage').val($(this).attr("start_page"));//보고 싶은 페이지
			$('#visiblePages').val(visiblePages);
			$("#frmSearch").submit();
		});
	});
</script>
<script>
$(function(){
	$('.delChangeBtn').click(function(){
		var reviewNo = $(this).attr('id');
		var delYn = $(this).attr('name');
		var $btnObject = $(this);
		
		$.ajax({
			url:"/searchDelYN.sms",
			type : "post",
			data : {"reviewNo":reviewNo, "delYn":delYn},
			success : function(result){
				 if(result=="true") {
					console.log("성공");
				 } else {
                     console.log("사용자 상태 변경 실패");
                  }
				 location.reload();
			},
			error:function(){
				console.log("ajax통신 실패");
			}
		}); 
	});
});
</script>
	<div class="page-wrapper">
		<div class="admin-header">
			<c:import url="/WEB-INF/views/admin/common/admin_header.jsp" />
		</div>
		<div class="body-container">
			<div class="nav-snb">
				<%@ include file="/WEB-INF/views/admin/common/admin_subnavbar.jsp"%>
			</div>
			<div class="page-container">
				<!-- 페이징 처리를 위한 form -->
				<form class="form-inline" id="frmSearch" action="/search_review.sms">
					<input type="hidden" id="startPage" name="startPage" value="">
					<!-- 페이징을 위한 hidden타입 추가 -->
					<input type="hidden" id="visiblePages" name="visiblePages" value="">
					<!-- 페이징을 위한 hidden타입 추가 -->
					<div class="page-contents">
						<div id="content-wrapper" class="board-wrapper">
							<p>구직 후기 게시판</p>
							<div class="search">
								<form>
									<select name="category">
										<!-- 이대로 value 값을 db에 넣을거라서 db컬럼명과 똑같이해줘야함 -->
										<option value="all">전체</option>
										<option value="REVIEW_NO">게시글 번호</option>
										<option value="member_id">회원 아이디</option>
										<option value="member_name">회원 이름</option>
										<option value="content">후기 내용</option>
										<option value="grade">별점</option>
										<option value="del_YN">삭제여부</option>
									</select>
									<input type="text" name="keyword"/>
									<button type="submit" class="search-btn" >검색</button>
								</form>
							</div>
							<div class="tab-content">
								<table class="board">
									<tr class="head">
										<th id="all_select"><input type="checkbox" /></th>
										<th class='post-no'>번호</th>
										<th class="membertype">회원 유형</th>
										<th class='memberid'>아이디</th>
										<th class='membername'>이름</th>
										<th class='content'>후기 내용</th>
										<th class="grade">별점</th>
										<th class='date'>후기 작성일</th>
										<th class='delete-YN'>삭제</th>
									</tr>
									<c:choose>
										<c:when test="${fn:length(SearchReviewList)!=0 }">
											<c:forEach var="srList" items="${SearchReviewList}" varStatus="status">
												<tr class="contents">
													<td class='select'><input type="checkbox" value="" name="send-select" /></td>
													<td class='post-no'><c:out value='${srList.reviewNo }'/></td>
													<td class="membertype">부모회원</td>
													<td class='memberid'>${srList.memberId }</td>
													<td class='membername'>${srList.memberName}</td>
													<td class='content'><a data-toggle="modal"
														data-target="#viewModal${status.index }">${srList.content }</a></td>
													<!-- Modal -->
													<!-- 글 수정 -->
													<div class="modal fade" id="viewModal${status.index }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
														<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
															<div class="modal-content" id="modal-content">
																<div class="modal-body">
																	<div>
																		<p class="guide" style="margin-top: 50px;">후기 내용</p>
																		<textarea class="guide_content" style="margin-top: 30px;">${srList.content }</textarea>
																	</div>
																	<center>
																		<button type="button" class="class" data-dismiss="modal" aria-label="Close" id="modify_cancle">닫기</button>
																	</center>
																</div>
															</div>
														</div>
													</div>
													<td class="grade">${srList.grade }</td>
													<td class='date'>${srList.writeDate}</td>
													<td class='delete-YN'>			<c:choose>
														<c:when test="${srList.delYn eq 'Y'.charAt(0) }">
															<button type="button" class="delChangeBtn restore-btn" id="${srList.reviewNo }" name="${srList.delYn}">복구</button>
														</c:when>
														<c:otherwise>
															<button type="button" class="delChangeBtn delete-btn" id="${srList.reviewNo }" name="${srList.delYn}">삭제</button>
														</c:otherwise>
													</c:choose></td>
												</tr>
											</c:forEach>
										</c:when>
									</c:choose>
									<c:forEach begin="${fn:length(SearchReviewList)}" end="12">
										<tr class="contents">
											<td class='select'><input type="checkbox" value=""
												name="send-select" /></td>
											<td class='post-no'></td>
											<td class="membertype"></td>
											<td class='memberid'></td>
											<td class='membername'></td>
											<td class='content'></td>
											<td class="grade"></td>
											<td class='date'></td>
											<td class='delete-YN'></td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
						<div id="pagination" class="pagenavigation"></div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>