<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_wrapper.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/admin_login.css">
</head>
<body>
<center>
<form action="/main.sms" method="get">
<div id="login_form">
<div id="logo_box">
<img id="logo" src="/resources/img/semosi_logo.png"/></div>
<img id="person" src="/resources/img/login.png"/>
<div id="login">관리자 로그인</div>
<input class="login_insert" type="text" placeholder="아이디" autocomplete="off"/><br><br>
<input class="login_insert" type="password" placeholder="비밀번호"/><br>
</div>
<input type="submit" value="로그인"/>
</form>
</center>
</body>
</html>