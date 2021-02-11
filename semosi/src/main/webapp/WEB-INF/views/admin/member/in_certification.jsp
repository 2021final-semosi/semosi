<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_certification_page.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<body>
<script>
      $(function(){
         $('.nav-item').click(function(){
            $('.nav-item').removeAttr("style");
            $(this).css('border','0.5px solid #707070');
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
			<div class="page-contents">
				<div id="content-wrapper" class="board-wrapper">
					<p>개별 인증 페이지</p>
					<center>
						<table id="info-table">
							<tr id="first">
							  <td style="width: 8%; font-weight: bold;">이름</td>
                              <td style="width: 12%;">세모시</td>
                              <td style="width: 15%; font-weight: bold;">아이디</td>
                              <td style="width: 25%;">semosi</td>
                              <td style="width: 15%; font-weight: bold;">전화번호</td>
                              <td style="width: 25%;">010-0000-0000</td>
							</tr>
							<tr id="second">
								<td style="font-weight: bold;">성별</td>
								<td>여자</td>
								<td style="font-weight: bold;">주소</td>
								<td colspan="3">서울특별시 땡땡구 땡땡시 땡땡로 땡땡번지</td>
							</tr>
						</table>
						<div class="tab-content">
							<ul class="nav nav-tabs ulnav">
								<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#qwe">주민등록등본, 초본</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#asd">건강진단결과서</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#zxc">가족관계증명서</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#pop">교사자격증</a></li>
							</ul>
							<div class="tab-pane fade show active" id="qwe">
								<p class="img">!!첫번째 이미지임</p>
								<input type="submit" value="승인" /><input type="submit" value="반려" />
							</div>
							<div class="tab-pane fade" id="asd">
								<p class="img">!!두번째 이미지임</p>
								<input type="submit" value="승인" /><input type="submit" value="반려" />
							</div>
							<div class="tab-pane fade" id="zxc">
								<p class="img">!!세번째 이미지임</p>
								<input type="submit" value="승인" /><input type="submit" value="반려" />
							</div>
							<div class="tab-pane fade" id="pop">
								<p class="img">!!네번째 이미지임</p>
								<input type="submit" value="승인" /><input type="submit" value="반려" />
							</div>
						</div>
					</center>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>