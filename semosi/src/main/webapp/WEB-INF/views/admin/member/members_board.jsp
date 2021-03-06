<%@page import="kr.co.semosi.admin.member.model.vo.MemberS"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_board.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_member_board.css">   
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"  crossorigin="anonymous"></script>
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
		});
	});
</script>
<script>
$(function(){
	$('.endChangeBtn').click(function(){
		var memberId = $(this).attr('id');
		var endYn = $(this).attr('name');
		
		$.ajax({
			url:"/memberSEndYn.sms",
			type : "post",
			data : {"memberId":memberId, "endYn":endYn},
			success : function(result){
				if(result=="true") {
					alert("상태를 변경하였습니다.");
				} else {
					alert("상태를 변경하지 못했습니다.");
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
				url : "/memberScheckDelete.sms",
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
				<form class="form-inline" id="frmSearch" action="/members_board.sms">
					<input type="hidden" id="startPage" name="startPage" value="">
					<!-- 페이징을 위한 hidden타입 추가 -->
					<input type="hidden" id="visiblePages" name="visiblePages" value="">
					<!-- 페이징을 위한 hidden타입 추가 -->
					<div class="page-contents">
						<div id="content-wrapper" class="board-wrapper">
							<p>전체 회원 목록 - 시터 회원</p>
							<div class="search">
								<form>
									<select name="category">
										<!-- 이대로 value 값을 db에 넣을거라서 db컬럼명과 똑같이해줘야함 -->
										<option value="all">전체</option>
										<option value="memberp_no">회원번호</option>
										<option value="member_id">아이디</option>
										<option value="member_name">이름</option>
										<option value="gender">성별</option>
										<option value="document_YN">인증 여부</option>
										<option value="end_YN">기능</option>
									</select>
									<input type="text" name="keyword"/>
									<button type="submit" class="search-btn" >검색</button>
								</form>
							</div>
							<input type="button" value="선택삭제" class="btn btn-outline-info" id="checkDBtn" onclick="deleteValue();">
							<table class="board">
								<tr class="head">
									<th id="all_select"><input type="checkbox" class="allSelect"/></th>
									<th>번호</th>
									<th>아이디</th>
									<th>이름</th>
									<th>성별</th>
									<th>생년</th>
									<th>인증현황</th>
									<th>가입일자</th>
									<th>탈퇴일자</th>
									<th>기능</th>
								</tr>
								<c:choose>
									<c:when test="${fn:length(memberSList)!=0 }">
										<c:forEach var="memberSList" items="${memberSList }"
											varStatus="status">
											<tr class="contents">
												<td class='select'>
												<input type="checkbox" value="${memberSList.membersNo }" class="check" name="send-select" /></td>
												<td class='member-no'>${memberSList.membersNo }</td>
												<td class='member-id'>${memberSList.memberId }</td>
												<td class='member-name'>${memberSList.memberName }</td>
												<td class='gender'><c:choose>
														<c:when test="${memberSList.gender eq 'F' }">
														여성
												</c:when>
														<c:otherwise>
														 남성
												</c:otherwise>
													</c:choose></td>
												<td class='birth-day'>${memberSList.birthDay }</td>
												<td class='document_YN'><c:choose>
														<c:when test="${memberSList.documentYN eq 'N' }">
															<a href="/individual_certification.sms?memberS_No=${memberSList.membersNo }">인증 중</a>
														</c:when>
														<c:otherwise>
															<a href="/individual_certification.sms?memberS_No=${memberSList.membersNo }">인증 완료</a>
														</c:otherwise>
													</c:choose></a></td>
												<td class='enroll-date'>${memberSList.enrollDate }</td>
												<td class='end-date'><c:choose>
												<c:when test="${memberSList.endDate == null }">
										 					- 
												</c:when>
												<c:otherwise>
													${memberSList.endDate }
												</c:otherwise>
													</c:choose></td>
												<td class="function">
												<c:choose>
												<c:when test="${memberSList.endYn eq 'Y'.charAt(0) }">
													<button type="button" class="endChangeBtn restore-btn" id="${memberSList.memberId }" name="${memberSList.endYn }">복구</button>														
												</c:when>
												<c:otherwise>
													<button type="button" class="endChangeBtn delete-btn" id="${memberSList.memberId }" name="${memberSList.endYn }">삭제</button>
												</c:otherwise>
												</c:choose>
												</td>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>

								<c:forEach begin="${fn:length(memberSList)}" end="12">
									<tr class="contents">
										<td class='select'></td>
										<td class='member-no'></td>
										<td class='member-id'></td>
										<td class='member-name'></td>
										<td class='gender'></td>
										<td class='birth-year'></td>
										<td class='document_YN'></td>
										<td class='enroll-date'></td>
										<td class='end-date'></td>
										<td class="function"></td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<div id="pagination" class="pagenavigation"></div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>