<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_board.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_inquiry.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin_customer.js"></script>
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
			
		});
	});
</script>
<script>
$(document).ready(function() {
	$("#all_select").click(function() {
		if ($(".allSelect").prop("checked")) {
			$(".check").prop("checked", true);
		} else {
			$(".check").prop("checked", false);
		}
	});
	$(".check").click(function() {
		if ($("input[name='send-select']:checked").length == 13) {
			$(".allSelect").prop("checked", true);
		} else {
			$(".allSelect").prop("checked", false);
		}
	});
});
	
function deleteValue() {
	var valueArr = new Array();
	var list = $("input[name='send-select']:checked");
	for (var i = 0; i < list.length; i++) {
		valueArr.push(list[i].value);
	}

	if (valueArr.length == 0) {
		alert("선택된 글이 없습니다.");
	}else{
		var chk = confirm("정말 삭제하시겠습니까?");
		if(chk==true){
			$.ajax({
				url : "/inquiryCheckDelete.sms",
				type : "post",
				data : {'valueArr' : valueArr},
				success : function(result){
					if (result == "true") {
						alert("삭제 성공");
					} else {
						console.log("삭제 실패");
					}
					location.reload();
				},
				error : function() {
					console.log("ajax통신 실패");
				}
			});
		}
	}
};
</script>
<div class="page-wrapper">
	<div class="admin-header">
		<%@ include file="/WEB-INF/views/admin/common/admin_header.jsp"%>
	</div>
	<div class="body-container">
		<div class="nav-snb">
			<%@ include file="/WEB-INF/views/admin/common/admin_subnavbar.jsp"%>
		</div>
		<div class="page-container">
			<form action="/inquiry_list.sms" class="form-inline" id="formSearch">
				<input type="hidden" id="startPage" name="startPage" value=""><!-- 페이징을 위한 hidden타입 추가 -->
            	<input type="hidden" id="visiblePages" name="visiblePages" value=""><!-- 페이징을 위한 hidden타입 추가 -->
			<div class="page-contents">
				<div id="content-wrapper" class="board-wrapper">
					<p>1:1 문의</p>
					<div class="search">
						<form>
							<select name="category">
								<!-- 이대로 value 값을 db에 넣을거라서 db컬럼명과 똑같이해줘야함 -->
								<option value="all">전체</option>
								<option value="post_no">게시글 번호</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="del_YN">삭제여부</option>
							</select>
							<input type="text" name="keyword"/>
							<button class="search-btn" type="submit">검색</button>
						</form>
					</div>
					<div class="tab-content">
					<input type="button" value="선택삭제" class="btn btn-outline-info" id="checkDBtn" onclick="deleteValue();" style="margin-left:11%;">
						<table class="board">
							<tr class="head">
								<th id="all_select"><input type="checkbox" class="allSelect" /></th>
								<th class='post-no'>번호</th>
								<th class='title'>제목</th>
								<th class='date'>작성일</th>
								<th class='del-YN'>삭제여부</th>
							</tr>
							<c:choose>
								<c:when test="${fn:length(selectInquiryList)!=0 }">
									<c:forEach var="selectInquiryList" items="${selectInquiryList}" varStatus="status">
									<tr class="contents">
										<td class='select'><input type="checkbox" value="${selectInquiryList.postNo}" class="check" name="send-select" /></td>
										<td class='post-no'>${selectInquiryList.postNo}</td>
										<td class='title'>
											<form action="/inquiry_answer.sms" method="get" id="answer_form">
												<input type="hidden" value="${selectInquiryList.postNo}" name="postNo"/>
												<button type="submit" name="title" id="answer_btn" value="${selectInquiryList.title}">${selectInquiryList.title}</button>
											</form>
										</td>
										
										<td class='date'>${selectInquiryList.writeDate}</td>
										<td class='del-YN'><c:choose>
											<c:when test="${selectInquiryList.delYn eq 'N'}">
												<button type="button" class="delete-btn delChangeInquiry" id="${selectInquiryList.postNo}" name="${selectInquiryList.delYn}">삭제</button>
											</c:when>
											<c:otherwise>
												<button type="button" class="restore-btn delChangeInquiry" id="${selectInquiryList.postNo}" name="${selectInquiryList.delYn}">복구</button>
											</c:otherwise>
										</c:choose>									
										</td>
									</tr>
									</c:forEach>
								</c:when>
							</c:choose>
							<c:forEach begin="${fn:length(selectInquiryList)}" end="12">
									<tr class="contents">
										<td class='select'></td>
										<td class='post-no'></td>
										<td class='title'></td>
										<td class='date'></td>
										<td class='del-YN'></td>
									</tr>
							</c:forEach>
							
						</table>
					</div>
				<div id="pagination" class="pagenavigation"></div>
				</div>
				</div>
				</form>
			</div>
           </div>
		</div>
</body>
</html>