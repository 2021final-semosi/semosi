<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_certification_page.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<body>
<script>
		$(function() {
			$('.nav-item').click(function() {
				$('.nav-item').removeAttr("style");
				$(this).css('border', '0.5px solid #707070');
			});
		});
</script>
<script>
		$(function() {
			$('.certYN').click(function() {
				var imageNo = $(this).attr('id');
				
				$.ajax({
					url : "/documentcertYN.sms",
					type : "post",
					data : {
						"imageNo" : imageNo
					},
					success : function(result) {
						if (result == "true") {
							alert("승인 완료");
						} else {
							alert("승인을 실패했습니다.");
						}
						location.reload();
					},
					error : function() {
						console.log("ajax통신 실패");
					}
				});
			});
		});
</script>
<script>
		$(function() {
			$('.documentYN').click(function() {
				var membersNo = $(this).attr('id');
				var $btnObject = $(this);

				$.ajax({
					url : "/documentYN.sms",
					type : "post",
					data : { "membersNo" : membersNo },
					success : function(result) {
						if (result == "true") {
							alert("전체 승인 완료");
						} else {
							alert("승인을 실패했습니다.");
						}
						location.reload();
					},
					error : function() {
						console.log("ajax통신 실패");
					}
				});
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
									<td style="width: 12%;">${certifyview.memberName}</td>
									<td style="width: 15%; font-weight: bold;">아이디</td>
									<td style="width: 25%;">${certifyview.memberId }</td>
									<td style="width: 15%; font-weight: bold;">전화번호</td>
									<td style="width: 25%;">${certifyview.phone }</td>
								</tr>
								<tr id="second">
									<td style="font-weight: bold;">성별</td>
									<td>${certifyview.gender }</td>
									<td style="font-weight: bold;">주소</td>
									<td colspan="3">${certifyview.address }</td>
								</tr>
							</table>
							<div class="tab-content">
								<ul class="nav nav-tabs ulnav">
									<li class="nav-item"><a class="nav-link active"
										data-toggle="tab" href="#qwe">주민등록등본, 초본</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#asd">건강진단결과서</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#zxc">가족관계증명서</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#pop">교사자격증</a></li>
								</ul>

								<div class="tab-pane fade show active" id="qwe">
									<p class="img">
									<c:if test="${certifyview.reChangedName!=null }">
										<img src="${pageContext.request.contextPath}/resources/file/resiDocu/${certifyview.reChangedName }" />
										</c:if>
										<c:if test="${certifyview.reChangedName==null }"></c:if>
									</p>
									<c:choose>
										<c:when test='${certifyview.certREYN eq "N".charAt(0) }'>
											<button type="button" class="certYN"
												id="${certifyview.imageRENo}">승인</button>
											<input type="button" id="close" value="닫기"
												onclick="history.back(-1)" />
										</c:when>
										<c:otherwise>
											<input type="button" id="close" value="닫기"
												onclick="history.back(-1)" />
										</c:otherwise>
									</c:choose>
								</div>

								<div class="tab-pane fade" id="asd">
									<p class="img">
									<c:if test="${certifyview.heChangedName!=null }">
										<img src="${pageContext.request.contextPath}/resources/file/healthDocu/${certifyview.heChangedName }" />
										</c:if>
										<c:if test="${certifyview.heChangedName==null }"></c:if>
									</p>
									<c:choose>
										<c:when test="${certifyview.certHEYN eq 'N'.charAt(0) }">
											<input type="button" class="certYN"
												id="${certifyview.imageHENo}" value="승인" />
											<input type="button" id="close" value="닫기"
												onclick="history.back(-1)" />
										</c:when>
										<c:otherwise>
											<input type="button" id="close" value="닫기"
												onclick="history.back(-1)" />
										</c:otherwise>
									</c:choose>
								</div>

								<div class="tab-pane fade" id="zxc">
									<p class="img">
											<c:if test="${certifyview.faChangedName!=null }">
										<img src="${pageContext.request.contextPath}/resources/file/familyDocu/${certifyview.faChangedName }" />
										</c:if>
										<c:if test="${certifyview.faChangedName==null }"></c:if>
									</p>
									<c:choose>
										<c:when test="${certifyview.certFAYN eq 'N'.charAt(0) }">
											<button type="button" class="certYN"
												id="${certifyview.imageFANo}">승인</button>
											<input type="button" id="close" value="닫기"
												onclick="history.back(-1)" />
										</c:when>
										<c:otherwise>
											<input type="button" id="close" value="닫기"
												onclick="history.back(-1)" />
										</c:otherwise>
									</c:choose>
								</div>

								<div class="tab-pane fade" id="pop">
									<p class="img">
									<c:if test="${certifyview.teChangedName!=null }">
										<img src="${pageContext.request.contextPath}/resources/file/teacherDocu/${certifyview.teChangedName }" />
										</c:if>
										<c:if test="${certifyview.teChangedName==null }"></c:if>
										
									</p>
									<c:choose>
										<c:when test="${certifyview.certTEYN eq 'N'.charAt(0) }">
											<button type="button" class="certYN"
												id="${certifyview.imageTENo}">승인</button>
											<input type="button" id="close" value="닫기" onclick="history.back(-1)" />
										</c:when>
										<c:otherwise>
											<input type="button" id="close" value="닫기" onclick="history.back(-1)" />
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<button type="button" class="documentYN" id="${certifyview.membersNo }">전체 승인</button>
						</center>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>