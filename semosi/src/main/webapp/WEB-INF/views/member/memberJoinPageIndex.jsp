<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

* {
	box-sizing: border-box;
}

#wrapper {
	margin-top: 100px;
	margin-bottom: 200px;
}

.container {
	width: 100%;
	margin:0 auto;
}

.formArea{
	padding-top:100px;
	padding-bottom:100px;
	width:100%;
	height:700px;
	border:1px solid red;
}

#choiceArea{
	width:50%;
	heigh:100%;
}

#nbspArea{
display:inline-block;
float:left;
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

<!--미디어 쿼리로 페이지줄어들었을때 원 크기 줄어들게-->
@media {

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

	<section id="wrapper">
	<div class="container">
		<div class="formArea">
		<div id="choiceArea">
			<div class="choice" id="parentJoin"><b>부모 회원 가입</b></div>
			<div id="nbspArea" style="width:100px;">&nbsp;</div>
			<div class="choice" id="sitterJoin"><b>시터 회원 가입</b></div>
</div>
		</div>

	</div>

	</section>

	<footer> <%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>
	
</body>
</html>