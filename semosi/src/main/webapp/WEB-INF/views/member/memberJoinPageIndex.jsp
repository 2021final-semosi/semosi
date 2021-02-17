<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<style>


#wrapperArea {
	margin-top: 200px;
	margin-bottom: 200px;
	width:100%;
	height:200px;
}


#choiceArea{
	width:500px;
	height:100%;
	margin: 0 auto;
}
#realChoice{
	height:100%;
	margin: 0 auto;
}
.choice{

background-color:#f6d257;
border-radius:100%;
width:200px;
height:200px;
display:inline-block;
float:left;
text-align:center;
line-height:200px;
font-size:1.3rem;
}

#sitterJoin{
	margin-left:100px;
}


</style>
</head>
<body>

	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
		integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
		crossorigin="anonymous">

	<header> <%@ include file="/WEB-INF/views/commons/header.jsp"%>
	</header>

	<div id="wrapperArea">
				<div id="choiceArea">
				<div id="realChoice">
					<div class="choice" id="parentJoin"><a href="/parentJoinPage.sms"><b>부모 회원 가입</b></a></div>
					<div class="choice" id="sitterJoin"><a href="/sitterJoinPage.sms"><b>시터 회원 가입</b></a></div>
					</div>
				</div>
		

	</div>

	<footer> <%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>
	
</body>
</html>