<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_main.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-V5BZSRFYEV"></script>
<script>
   window.dataLayer = window.dataLayer || [];
   function gtag() {
      dataLayer.push(arguments);
   }
   gtag('js', new Date());

   gtag('config', 'G-V5BZSRFYEV');
</script>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="  crossorigin="anonymous"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

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
			<iframe id="statistics" width="1060" height="420" src="https://datastudio.google.com/embed/reporting/aa9caa7d-7e4b-47ac-ab81-b0c523be91ba/page/i9SzB" frameborder="0" style="border:0"></iframe>
			<iframe id="statistics2" width="400" height="280" src="https://datastudio.google.com/embed/reporting/d60bcacf-fc97-491c-8bd7-4e0fcb818710/page/dITzB" frameborder="0" style="border:0" id="statistics2"></iframe>
			      <center>
			<div id="p-board">
				<table class="board">
					<tr>
						<th class="board-column">구인게시판</th>
						<th class="board-link"><a class="link-btn" href="/job_offer.do">더보기</a></th>
					</tr>
					<tr>
						<td class="content-title">가나다라마바사아자차카타파하</td>
						<td class="content-date">2021-01-25</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
				</table>
			</div>
			<div id="s-board">
				<table class="board">
					<tr>
						<th class="board-column">구직프로필</th>
						<th class="board-link"><a class="link-btn" href="/job_search.do">더보기</a></th>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
				</table>
			</div>
			<div id="inquiry-board">
				<table class="board">
					<tr>
						<th class="board-column">1:1문의</th>
						<th class="board-link"><a class="link-btn" href="/inquiry.do">더보기</a></th>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
					<tr>
						<td class="content-title">본문</td>
						<td class="content-date">날짜</td>
					</tr>
				</table>
			</div>
		</center>
	</div>
</div>
</div>
</div>
</body>
</html>