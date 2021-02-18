<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page isELIgnored="false" %>
<%@page import="kr.co.semosi.index.model.vo.IndexReviews"%>
<%@page import="kr.co.semosi.mypage.model.vo.WriteOfferReview" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commons/footer.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commons/header.css">
</head>
<body>
<style>
@media(min-width:1500px){
	#mypage-wrap{
		margin: 0 auto;
		padding:0px;
		height: 100%;
		width: 70%;
	}
	#sideBar{
		margin: 0px;
		height: 100%;
		width: 22%;
		position: sticky;
		top: 52px;
	}
	#content{
		margin: 0px;
		padding: 30px;
		height: 100%;
		width: 78%;
	}
	}
@media(max-width:1500px){
		#mypage-wrap{
		margin: 0 auto;
		padding:0px;
		height: 100%;
		width: 80%;
	}
	#sideBar{
		height: 100%;
		width: 23%;
		position: sticky;
		top: 52px;
	}
	#content{
		height: 100%;
		width: 77%;
	}
	}
@media(max-width:1220px){
		#mypage-wrap{
		margin: 0 auto;
		padding:0px;
		height: 100%;
		width: 90%;
	}
	#sideBar{
		height: 100%;
		width: 30%;
		position: sticky;
		top: 52px;
	}
	#content{
		height: 100%;
		width: 70%;
	}
	}
@media(max-width:900px){
		#mypage-wrap{
		margin: 0 auto;
		padding:0px;
		height: 100%;
		width: 100%;
	}
	#sideBar{
		height: 100%;
		width: 30%;
		position: sticky;
		top: 52px;
	}
	#content{
		height: 100%;
		width: 70%;
	}
	}
@media(max-width:760px){
		#mypage-wrap{
			margin: 0 auto;
			padding:0px;
			height: 100%;
			width: 100%;
		}
		#content{
		margin: 0px;
		height: 100%;
		width: 100%;
		}
		#sideBar{
		display: none;
		}
	}
	/*-----------------------------------*/
* {
	box-sizing: border-box;
}

.title {
	margin-top:50px;
		font-size:28px;
		font-weight:600;
		display:block;
		padding-bottom: 25px;
}

#wrapper {
	margin-top: 30px;
	margin-bottom: 200px;
}

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

/*---- interest-card ----*/
#interest-info {
	height: 100%;
	width: 100%;
	margin: 0px;
	padding: 5px;
}

#interest-card {
	height: 100%;
	width: 100%;
	margin: 0px;
	padding: 0px;
}

#interest-card-info {
	height: 100%;
	width: 100%;
	margin: 10px 0px 10px 0px;
	cursor: pointer;
}

#interest-card-img {
	height: 100%;
	width: 100%;
	padding: 8px 0px 8px 0px;
	margin: 5px 0px 5px 0px;
	text-align: center;
}
#interest-card-img img{
	height: 80px;
	width: 80px;
}
#userInfo {
	width: 100%;
	height: 100%;
	margin: 0px;
	padding: 0px;
}
#userInfo-1 {
	width: 100%;
	height: 100%;
	margin: 0px;
	padding: 0px;
}
#userInfo-2 {
	width: 100%;
	height: 100%;
	margin: 0px;
	padding: 0px;
}
 #deleteBtn:hover{
		background-color: #f3f1f1;
	}
.menu-hr{
		margin: -1px 0px 0px; 
		height: 15px; 
		background-color: #f3f1f1;
	}
.hr{
		margin: 0px auto; 
		height: 0.5px; 
		background-color: #f3f1f1; 
		width: 95%;
		color: rgb(172, 193, 191);
		text-align: center;
	}
	/*-----------------------------------*/
	#kakao-talk-channel-chat-button{
	float:right;
	margin-right:50px;
}
</style>

<%--카카오톡 채팅 스크립트--%>
<script>
  window.kakaoAsyncInit = function() {
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button',
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://developers.kakao.com/sdk/js/kakao.channel.min.js';
    fjs.parentNode.insertBefore(js, fjs);
  })(document, 'script', 'kakao-js-sdk');
</script>

<header>
	<%@ include file="/WEB-INF/views/commons/header.jsp"%>
</header>
<div id="mypage-wrap" class="row">
	<div id="sideBar">
		<%@ include file="/WEB-INF/views/mypage/common/parentSidebar.jsp"%>
	</div>
	<div id="content">
<!-- 여기서 부터 적용 -->
	<%
		//ArrayList<IndexReviews> RList=(ArrayList<IndexReviews>)request.getAttribute("list");
		List<WriteOfferReview> wor = (List<WriteOfferReview>)request.getAttribute("list");
	%>
	<section id="wrapper">
	<div class="container">
		<div id="review">
			<div class="title row">
				<div class="col-sm-12">
					<center><span>받은 후기</span></center>
				</div>
			</div>

		</div>
		<hr class="menu-hr">

		<c:choose>
			<c:when test="${!empty list }">
				<div id="interest-info" class="row">
					<div id="interest-card-info" class="col-md-10 col-sm-12">
						<div  id="userInfo" class="row">
							<div id="userInfo-1" class="col-11">	
								<span><b> </b> <span> 채용 후기 </span> <sub>${list.writeDate}</sub><br>
							<%-- 	<% for(WriteOfferReview wor : list) { 
									for(int i=0; i<wor.getGrade(); i++) { %>
									★
									<% } for(int i=0; i<5-wor.getGrade(); i++) { %>
									☆
									<% } 
									}%> --%>
								<br><br><span>${list.content }</span>
		
							</div>
							<div id="userInfo-2" class="col-1">
								<svg id="deleteBtn" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  									<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
								</svg>
							</div>
						</div>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class=" row m-0">
				<div class="col-sm-12 m-0 p-0"><center><H5>작성한 후기가 존재하지않습니다. 후기를 작성해주세요.</H5></center></div>
			</div>
			</c:otherwise>
				</c:choose>		
				<hr class="hr">	
	</div>
	</section>
<!-- 여기까지 적용 -->
	</div>
</div>


<%-- 카카오톡 채팅 아이콘 --%>
<div id="kakao-talk-channel-chat-button" data-channel-public-id="_xaExoNK" data-title="consult" data-size="small" data-color="yellow" data-shape="pc" data-support-multiple-densities="true"></div>
<footer>
	<%@ include file="/WEB-INF/views/commons/footer.jsp"%>
</footer>
</body>
</html>