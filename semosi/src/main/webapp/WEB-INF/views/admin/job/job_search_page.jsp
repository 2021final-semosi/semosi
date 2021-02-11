<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_jobSearch_page.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<body>
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
					<p>개별 구직 페이지</p>
					<center>
						<div class="table-wrapper">
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
									<td style="font-weight: bold">성별</td>
									<td>여자</td>
									<td style="font-weight: bold">주소</td>
									<td colspan="3">서울특별시 땡땡구 땡땡시 땡땡로 땡땡번지</td>
								</tr>
							</table>
							<table class="second-table">
								<tr id="third">
									<td style="width: 12%; font-weight: bold;">희망시급</td>
									<td></td>
									<td style="width: 16%; font-weight: bold;">CCTV 동의여부</td>
									<td></td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr id="fourth">
									<td style="width: 24%;" class="first-td">인증서류</td>
									<td style="width: 19%;">주민등록등ㆍ초본</td>
									<td style="width: 19%;">건강진단결과서</td>
									<td style="width: 19%;">가족관계증명서</td>
									<td style="width: 19%;">교사 자격증</td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td>자기소개</td></tr>
								<tr style="width:100%; height: 300px;"><td></td></tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td style="width: 28%;" id="sixth-td">선호 돌봄 유형</td><td></td></tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr id="seventh">
									<td style="width: 28%;" class="first-td">돌봄 가능 연령</td>
									<td style="width: 18%;">신생아</td>
									<td style="width: 18%;">영아</td>
									<td style="width: 18%;">유아</td>
									<td style="width: 18%;">초등학생</td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td colspan="4">가능한 활동</td></tr>
								<tr class="possible-active active">
									<td>실내놀이</td>
									<td>등하원돕기</td>
									<td>책 읽기</td>
									<td>야외활동</td>
								</tr>
								<tr class="possible-active active">
									<td>한글놀이</td>
									<td>영어놀이</td>
									<td>학습지도</td>
									<td>체육놀이</td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td colspan="6">활동 가능 지역</td></tr>
								<tr class="possible-active">
									<td style="width:10%" class="place-ranking">1순위</td>
									<td style="width:20%"></td>
									<td style="width:10%" class="place-ranking">2순위</td>
									<td style="width:20%"></td>
									<td style="width:10%" class="place-ranking">3순위</td>
									<td style="width:20%"></td>
								</tr>
							</table>
							<div class="blank"></div>
							<table class="data-table">
								<tr class="tr-title"><td colspan="8">활동 가능한 시간</td></tr>
								<tr class="possible-active time">
									<td style="width:5%">월</td>
									<td style="width:15%">10:00 - 16:00</td>
									<td style="width:5%">화</td>
									<td style="width:15%">-</td>
									<td style="width:5%">수</td>
									<td style="width:15%">10:00 - 16:00</td>
									<td style="width:5%">목</td>
									<td style="width:15%">-</td>
								</tr>
								<tr class="possible-active time">
									<td style="width:5%">금</td>
									<td style="width:15%">10:00 - 16:00</td>
									<td style="width:5%">토</td>
									<td style="width:15%">-</td>
									<td style="width:5%">일</td>
									<td style="width:15%">-</td>
									<td style="width:5%">근무일</td>
									<td style="width:15%">총 3일</td>
								</tr>
							</table>
						</div>
						<button id="close"><a href="/job_search.do">닫기</a></button>							
					</center>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>