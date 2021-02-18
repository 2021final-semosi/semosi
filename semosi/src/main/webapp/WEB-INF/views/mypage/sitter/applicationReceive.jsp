<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
<%@page import="kr.co.semosi.mypage.model.vo.ApplicationReceived"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commons/footer.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commons/header.css">
</head>
<body>
<!-- BootStrap 4.6.0 라이브러리 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

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
		padding: 30px;
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
		padding: 30px;
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
		padding: 30px;
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
		padding: 30px;
		height: 100%;
		width: 100%;
		}
		#sideBar{
		display: none;
		}
	}
	
	/*-----------------------------------*/
	
	div{
		border: 0px solid black;
		margin: 0px;
		padding: 0px;
		box-sizing:border-box;
	}

/*---- contents ----*/
	#parentsApplicationReceive_contents{
		width: 100%;
		height: 100%;
		margin: 0px auto;
	}

/*---- mypage-title ----*/
	#interest-title{
		margin-top:20px;
		font-size:28px;
		font-weight:600;
		display:block;
		padding-bottom: 25px;
	}
	#interest-title-1{
		height: 70px;
		padding-top: 30px;
		margin: 0px;
		text-align: center;
	}
	

/*---- interest-card ----*/
	#interest-info{
		height: 100%;
		width: 100%;
		margin: 0px;
		padding: 5px;
	}
	
	#interest-card{
		height: 100%;
		width: 100%;
		margin: 0px;
		padding: 0px;
	}
	
	#interest-card-info{
		height: 100%;
		width: 100%;
		padding: 0px;
		margin: 10px 0px 10px 0px;
		cursor: pointer;
	}
	
	#interest-card-img{
		height: 100%;
		width : 100%;
		padding: 8px 0px 8px 0px;
		margin: 5px 0px 5px 0px;
		text-align: center;
	}
	#interest-card-img>img{
		width: 80px;
		height: 80px;
	}
	#userInfo{
	width: 100%;
	height: 100%;
	margin:0px;
	padding: 0px;
	
	
	}
	.userInfo-p{
		padding: 0px;
		font-size: 14px;
	}

/*---------------------------------*/	
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

	#hr-title{
		margin: 0px auto; 
		height: 0.5px; 
		background-color: #f3f1f1; 
		color: rgb(172, 193, 191);
		text-align: center;
	}
	 #deleteBtn:hover{
		background-color: #f3f1f1;
	}
	
	/*-----------------------------------*/
	#kakao-talk-channel-chat-button{
	float:right;
	margin-right:50px;
}
</style>

<%
	ArrayList<ApplicationReceived> list=(ArrayList<ApplicationReceived>)request.getAttribute("list");
%>

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
  
  
  /* 구직 현황 클릭 시 페이지 이동 */
  $(function(){
	 var postNo=$("#postNo").val();
	 $("#userInfo").click(function(){
		 $(location).attr('href', '/moveSearchSitterPost.sms?postNo='+postNo);
	 }); 
  });
  
</script>



<header>
	<%@ include file="/WEB-INF/views/commons/header.jsp"%>
</header>
<div id="mypage-wrap" class="row">
	<div id="sideBar">
		<%@ include file="/WEB-INF/views/mypage/common/sitterSidebar.jsp"%>
	</div>
	<div id="content">
<!-- 여기서 부터 적용 -->

	<div id="parentsApplicationReceive_contents">
  		<div id="interest-title">
  			<div id="interest-title-1"><span>내게 지원한 구직 현황</span></div>	
  		</div>
  		<% for(ApplicationReceived ar : list) { %>
  		<%
  			LocalDate present=LocalDate.now();
  			LocalDate applyDate=new java.sql.Date(ar.getApplyDate().getTime()).toLocalDate();
  			long days=ChronoUnit.DAYS.between(applyDate, present);
  			
  			String gender="";
  			if(ar.getGender()=='F'){
  				gender="여";
  			} else {
  				gender="남";
  			}
  		%>
  		<input type="hidden" id="postNo" val="<%=ar.getPostNo() %>"/>
  		<div id="interest-info" class="row">
  			<div id="interest-card-img" class="col-md-2 col-sm-12">
  				<img src="/resources/images/profile/<%=ar.getOriginalName() %>" class="card-img" alt="...">
  			</div>
  			<div id="interest-card-info" class="col-md-10 col-sm-12" >
  				<div id="userInfo" class="row">
  					<div class="userInfo-p col-11">
  						<div id="userInfo-1" class="userInfo-p col-12"><span><b><%=ar.getMemberName() %></b> <sub><%=days %>일 전 지원</sub></span></div>
  						<div id="userInfo-2" class="userInfo-p col-12"><span><%=ar.getAddress() %> | 연락처 : <%=ar.getPhone() %></span></div>
  						<div id="userInfo-3" class="userInfo-p col-12"><span><%=ar.getAge() %>세 | <%=gender %> | 희망시급 <%=ar.getPay() %>원</span></div>
  						<div id="userInfo-4" class="userInfo-p col-12">
  						<% for(int i=0; i<ar.getAvgGrade(); i++) { %>
  							★
  						<% } %>
  						<% for(int i=0; i<5-ar.getAvgGrade(); i++) { %>
  							☆
  						<% } %>
  						</div>
  					</div>
  					<div id="userInfo-6" class="userInfo-p col-1">
  						<svg id="deleteBtn" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  							<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
						</svg>
					</div>
  				</div>
  			</div>
  		</div>
  		<hr class="menu-hr">
  		<% } %>
  	</div>	

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