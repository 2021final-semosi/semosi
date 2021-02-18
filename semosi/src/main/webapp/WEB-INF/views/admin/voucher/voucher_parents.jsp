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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_voucher.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin_voucher.js"></script>
<script>
$(document).ready(function() {
	var totalPage = ${totalPage}; 
	var startPage = ${startPage}; 

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
<div class="page-wrapper">
	<div class="admin-header">
		<%@ include file="/WEB-INF/views/admin/common/admin_header.jsp"%>
	</div>
	<div class="body-container">
		<div class="nav-snb">
			<%@ include file="/WEB-INF/views/admin/common/admin_subnavbar.jsp"%>
		</div>
		<div class="page-container">
		<!-- 페이징 처리를 위한 form -->
		<form class="form-inline" id="frmSearch" action="/parents_voucher_list.sms">
			<input type="hidden" id="startPage" name="startPage" value="">
			<!-- 페이징을 위한 hidden타입 추가 -->
			<input type="hidden" id="visiblePages" name="visiblePages" value="">
			<!-- 페이징을 위한 hidden타입 추가 -->
			<div class="page-contents">
				<div id="content-wrapper" class="board-wrapper">
					<p>구인자 이용권</p>
					<div class="search">
						<form>
							<select name="category">
								<!-- 이대로 value 값을 db에 넣을거라서 db컬럼명과 똑같이해줘야함 -->
								<option value="all">전체</option>
								<option value="voucher_no">이용권 번호</option>
								<option value="member_id">아이디</option>
								<option value="voucher_name">이용권 종류</option>
								<option value="voucher_price">이용권 금액</option>
								<option value="refund_YN">환불여부</option>
							</select>
							<input type="text" name="keyword" />
							<button class="search-btn" type="submit">검색</button>
						</form>
					</div>
					<div class="tab-content">
						<table class="board">
							<tr class="head">
								<th class='voucher_no'>번호</th>
								<th class='member_id'>아이디</th>
								<th class='voucher_name'>이용권 종류</th>
								<th class='voucher_price'>이용권금액</th>
								<th class='bought_date'>구매일</th>
								<th class='end_date'>만료일</th>
								<th class='refund_YN'>환불</th>
							</tr>
							<c:choose>
								<c:when test="${fn:length(parentsVoucher)!=0 }">
									<c:forEach var="parentsVoucher" items="${parentsVoucher}" varStatus="status">
									<tr class="contents">
										<td class='voucher_no'>${parentsVoucher.voucherNo}</td>
										<td class='member_id'>${parentsVoucher.memberId}</td>
										<td class='voucher_name'>${parentsVoucher.voucherName}</td>
										<td class='voucher_price'>${parentsVoucher.voucherPrice}</td>
										<td class='bought_date'>${parentsVoucher.boughtDate}</td>
										<td class='end_date'>${parentsVoucher.endDate}</td>
										<td class='refund_YN'>
											<c:choose>
												<c:when test='${parentsVoucher.refundYN eq "Y"}'>
													<button type="button" class="refund-done">환불완료</button>	
												</c:when>
												<c:otherwise>
													<button type="button" class="refund-request cancelPay" id="${parentsVoucher.voucherNo}" name="${parentsVoucher.phone}">환불신청</button>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
									</c:forEach>
								</c:when>
							</c:choose>
							<c:forEach begin="${fn:length(parentsVoucher)}" end="12">
									<tr class="contents">
										<td class='voucher_no'></td>
										<td class='member_id'></td>
										<td class='voucher_name'></td>
										<td class='voucher_price'></td>
										<td class='bought_date'></td>
										<td class='end_date'></td>
										<td class='refund_YN'></td>
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