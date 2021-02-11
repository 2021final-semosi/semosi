<%@page import="kr.co.semosi.admin.member.model.vo.MemberP"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_header.css">
</head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-V5BZSRFYEV"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-V5BZSRFYEV');
</script>
<body>
<%MemberP memberP = (MemberP)session.getAttribute("member");  %>

    <div class='row admin-header'>
        <div class="header-logo">
            <a href="/main.sms"><img src="/resources/img/semosi_logo.png"/></a>
        </div>
        <div class="header-gnb">
            <a href="/memberLogout.sms">로그아웃</a> &nbsp; &nbsp; &nbsp; <a href="#">나가기</a>
        </div>
    </div>
</body>

</html>
