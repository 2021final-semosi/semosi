<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	
	div{
		border: 0px solid black;
		margin: 0px;
		padding: 0px;
		box-sizing:border-box;
	}

/*---- contents ----*/
	#sitterApplicationReceive_contents{
		width: 100%;
		height: 100%;
		margin: 0px auto;
	}

/*---- mypage-title ----*/
	#interest-title{
		margin-top:20px;
		font-size:1.1rem;
		font-weight:600;
		display:block;
		padding-bottom: 10px;
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
		margin: 10px 0px 10px 0px;
		cursor: pointer;
	}
	
	#interest-card-img{
		height: 100%;
		width : 100%;
		padding: 8px 0px 8px 0px;
		margin: 10px 0px 10px 0px;
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
	padding-left: 10px;
	
	
	}
	.userInfo-p{
		padding: 0px;
		font-size: 14px;
	}
	#userInfo-4>svg{
		padding: 0px;
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
	.bi:hover{
		background-color: #f3f1f1;
	}
	.care-days{
		width: 25px;
		height: 25px;
		text-align: center;
		border:0px;
		background-color: #f3f1f1;
		pointer-events: none;
	}
	#care-days{
		width: 25px;
		height: 25px;
		text-align: center;
		border:0px;
		background-color: #848484;
		pointer-events: none;
	}
	#userInfo-br{
		height: 10px;
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
		<%@ include file="/view/mypage/common/sitterSidebar.jsp"%>
	</div>
	<div id="content">
<!-- 여기서 부터 적용 -->

	<div id="sitterApplicationReceive_contents">
  		<div id="interest-title">
  			<div id="interest-title-1"><span>내게 지원한 구직 현황</span></div>	
  		</div>
  		<hr class="menu-hr">
  		<div id="interest-info" class="row">
  			<div id="interest-card-img" class="col-2">
  				<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" class="card-img" alt="...">
  			</div>
  			<div id="interest-card-info" class="col-10" >
  				<div id="userInfo" class="row">
  					<div class="userInfo-p col-11">
  						<div id="userInfo-1" class="userInfo-p col-12"><span><b>영아 1명, 유아 1명</b> <sub>하루 전 작성</sub></span></div>
  						<div id="userInfo-2" class="userInfo-p col-12"><span>매주 토요일 6시간정도 돌봐주실분 구합니다.</span></div>
  						<div id="userInfo-3" class="userInfo-p col-12"><span>서울시 은평구 녹번동 |김○규 | 02/13 시작</span></div>
  						<div id="userInfo-4" class="userInfo-p col-12">
  							<!-- 달러 아이콘 -->
  						<svg xmlns="http://www.w3.org/2000/svg" style="width: 17px; height: 13px; margin-right: 5px; fill: rgb(189, 189, 189);">
  							<g fill="none" fill-rule="evenodd">
  							<g fill="#ACC9C3">
  							<path fill-rule="nonzero" d="M16.981 6.49c0-3.578-2.99-6.48-6.677-6.48-.412 0-.816.037-1.208.107 3.112.551 5.47 3.195 5.47 6.374s-2.358 5.823-5.47 6.374c.392.07.796.106 1.208.106 3.688 0 6.677-2.901 6.677-6.48z"></path>
  							<path d="M12.93 6.49c0 3.466-2.895 6.275-6.466 6.275C2.894 12.765 0 9.955 0 6.49 0 3.026 2.894.217 6.464.217c3.57 0 6.465 2.809 6.465 6.274zM2.785 6.057v.831h.99l.741 3.058h1.16l.697-3.066h.714l.696 3.066h1.17l.732-3.058h1v-.831H9.82l.616-2.478h-1.08l-.518 2.478h-.991l-.545-2.478H6.16l-.545 2.478h-1l-.508-2.478h-1.08l.607 2.478h-.848zm3.713.017l.17-.823.062-.546.072.546.151.823H6.5zm2.196.797l-.241 1.265-.098.624-.098-.624L7.98 6.87h.714zm-3.231 0l-.268 1.265-.09.624-.098-.624-.25-1.265h.706z"></path>
  							</g>
  							</g>
  						</svg>
  						<span>희망시급 13,500원 협의가능</span>
  						</div>
  						<div id="userInfo-br"></div>
  						<div id="userInfo-5" class="userInfo-p col-12"><span>단기-15일 동안</span> 
						<input type="button" value="월" class="care-days"/>
						<input type="button" value="화" class="care-days"/>
						<input type="button" value="수" class="care-days"/>
						<input type="button" value="목" class="care-days"/>
						<input type="button" value="금" class="care-days"/>
						<input type="button" value="토" id="care-days"/>
						<input type="button" value="일" class="care-days"/>
						</div>
  					</div>
  					<div id="userInfo-6" class="userInfo-p col-1">
  						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  							<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
						</svg>
					</div>
  				</div>
  			</div>
  		</div>
  		<hr class="hr">
  		<div id="interest-info" class="row">
  			<div id="interest-card-img" class="col-2">
  				<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" class="card-img" alt="...">
  			</div>
  			<div id="interest-card-info" class="col-10" >
  				<div id="userInfo" class="row">
  					<div class="userInfo-p col-11">
  						<div id="userInfo-1" class="userInfo-p col-12"><span><b>영아 1명, 유아 1명</b> <sub>하루 전 작성</sub></span></div>
  						<div id="userInfo-2" class="userInfo-p col-12"><span>매주 토요일 6시간정도 돌봐주실분 구합니다.</span></div>
  						<div id="userInfo-3" class="userInfo-p col-12"><span>서울시 은평구 녹번동 |김○규 | 02/13 시작</span></div>
  						<div id="userInfo-4" class="userInfo-p col-12">
  							<!-- 달러 아이콘 -->
  						<svg xmlns="http://www.w3.org/2000/svg" style="width: 17px; height: 13px; margin-right: 5px; fill: rgb(189, 189, 189);">
  							<g fill="none" fill-rule="evenodd">
  							<g fill="#ACC9C3">
  							<path fill-rule="nonzero" d="M16.981 6.49c0-3.578-2.99-6.48-6.677-6.48-.412 0-.816.037-1.208.107 3.112.551 5.47 3.195 5.47 6.374s-2.358 5.823-5.47 6.374c.392.07.796.106 1.208.106 3.688 0 6.677-2.901 6.677-6.48z"></path>
  							<path d="M12.93 6.49c0 3.466-2.895 6.275-6.466 6.275C2.894 12.765 0 9.955 0 6.49 0 3.026 2.894.217 6.464.217c3.57 0 6.465 2.809 6.465 6.274zM2.785 6.057v.831h.99l.741 3.058h1.16l.697-3.066h.714l.696 3.066h1.17l.732-3.058h1v-.831H9.82l.616-2.478h-1.08l-.518 2.478h-.991l-.545-2.478H6.16l-.545 2.478h-1l-.508-2.478h-1.08l.607 2.478h-.848zm3.713.017l.17-.823.062-.546.072.546.151.823H6.5zm2.196.797l-.241 1.265-.098.624-.098-.624L7.98 6.87h.714zm-3.231 0l-.268 1.265-.09.624-.098-.624-.25-1.265h.706z"></path>
  							</g>
  							</g>
  						</svg>
  						<span>희망시급 13,500원 협의가능</span>
  						</div>
  						<div id="userInfo-br"></div>
  						<div id="userInfo-5" class="userInfo-p col-12"><span>단기-15일 동안</span> 
						<input type="button" value="월" class="care-days"/>
						<input type="button" value="화" class="care-days"/>
						<input type="button" value="수" class="care-days"/>
						<input type="button" value="목" class="care-days"/>
						<input type="button" value="금" class="care-days"/>
						<input type="button" value="토" id="care-days"/>
						<input type="button" value="일" class="care-days"/>
						</div>
  					</div>
  					<div id="userInfo-6" class="userInfo-p col-1">
  						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  							<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
						</svg>
					</div>
  				</div>
  			</div>
  		</div>
  		<hr class="hr">
  		<div id="interest-info" class="row">
  			<div id="interest-card-img" class="col-2">
  				<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" class="card-img" alt="...">
  			</div>
  			<div id="interest-card-info" class="col-10" >
  				<div id="userInfo" class="row">
  					<div class="userInfo-p col-11">
  						<div id="userInfo-1" class="userInfo-p col-12"><span><b>영아 1명, 유아 1명</b> <sub>하루 전 작성</sub></span></div>
  						<div id="userInfo-2" class="userInfo-p col-12"><span>매주 토요일 6시간정도 돌봐주실분 구합니다.</span></div>
  						<div id="userInfo-3" class="userInfo-p col-12"><span>서울시 은평구 녹번동 |김○규 | 02/13 시작</span></div>
  						<div id="userInfo-4" class="userInfo-p col-12">
  							<!-- 달러 아이콘 -->
  						<svg xmlns="http://www.w3.org/2000/svg" style="width: 17px; height: 13px; margin-right: 5px; fill: rgb(189, 189, 189);">
  							<g fill="none" fill-rule="evenodd">
  							<g fill="#ACC9C3">
  							<path fill-rule="nonzero" d="M16.981 6.49c0-3.578-2.99-6.48-6.677-6.48-.412 0-.816.037-1.208.107 3.112.551 5.47 3.195 5.47 6.374s-2.358 5.823-5.47 6.374c.392.07.796.106 1.208.106 3.688 0 6.677-2.901 6.677-6.48z"></path>
  							<path d="M12.93 6.49c0 3.466-2.895 6.275-6.466 6.275C2.894 12.765 0 9.955 0 6.49 0 3.026 2.894.217 6.464.217c3.57 0 6.465 2.809 6.465 6.274zM2.785 6.057v.831h.99l.741 3.058h1.16l.697-3.066h.714l.696 3.066h1.17l.732-3.058h1v-.831H9.82l.616-2.478h-1.08l-.518 2.478h-.991l-.545-2.478H6.16l-.545 2.478h-1l-.508-2.478h-1.08l.607 2.478h-.848zm3.713.017l.17-.823.062-.546.072.546.151.823H6.5zm2.196.797l-.241 1.265-.098.624-.098-.624L7.98 6.87h.714zm-3.231 0l-.268 1.265-.09.624-.098-.624-.25-1.265h.706z"></path>
  							</g>
  							</g>
  						</svg>
  						<span>희망시급 13,500원 협의가능</span>
  						</div>
  						<div id="userInfo-br"></div>
  						<div id="userInfo-5" class="userInfo-p col-12"><span>단기-15일 동안</span> 
						<input type="button" value="월" class="care-days"/>
						<input type="button" value="화" class="care-days"/>
						<input type="button" value="수" class="care-days"/>
						<input type="button" value="목" class="care-days"/>
						<input type="button" value="금" class="care-days"/>
						<input type="button" value="토" id="care-days"/>
						<input type="button" value="일" class="care-days"/>
						</div>
  					</div>
  					<div id="userInfo-6" class="userInfo-p col-1">
  						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  							<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
						</svg>
					</div>
  				</div>
  			</div>
  		</div>
  		<hr class="hr">
  		<div id="interest-info" class="row">
  			<div id="interest-card-img" class="col-2">
  				<img src="https://momsitter-service.s3.ap-northeast-2.amazonaws.com/momsitter-app/static/public/defaultProfileImage/profile-infant.png" class="card-img" alt="...">
  			</div>
  			<div id="interest-card-info" class="col-10" >
  				<div id="userInfo" class="row">
  					<div class="userInfo-p col-11">
  						<div id="userInfo-1" class="userInfo-p col-12"><span><b>영아 1명, 유아 1명</b> <sub>하루 전 작성</sub></span></div>
  						<div id="userInfo-2" class="userInfo-p col-12"><span>매주 토요일 6시간정도 돌봐주실분 구합니다.</span></div>
  						<div id="userInfo-3" class="userInfo-p col-12"><span>서울시 은평구 녹번동 |김○규 | 02/13 시작</span></div>
  						<div id="userInfo-4" class="userInfo-p col-12">
  							<!-- 달러 아이콘 -->
  						<svg xmlns="http://www.w3.org/2000/svg" style="width: 17px; height: 13px; margin-right: 5px; fill: rgb(189, 189, 189);">
  							<g fill="none" fill-rule="evenodd">
  							<g fill="#ACC9C3">
  							<path fill-rule="nonzero" d="M16.981 6.49c0-3.578-2.99-6.48-6.677-6.48-.412 0-.816.037-1.208.107 3.112.551 5.47 3.195 5.47 6.374s-2.358 5.823-5.47 6.374c.392.07.796.106 1.208.106 3.688 0 6.677-2.901 6.677-6.48z"></path>
  							<path d="M12.93 6.49c0 3.466-2.895 6.275-6.466 6.275C2.894 12.765 0 9.955 0 6.49 0 3.026 2.894.217 6.464.217c3.57 0 6.465 2.809 6.465 6.274zM2.785 6.057v.831h.99l.741 3.058h1.16l.697-3.066h.714l.696 3.066h1.17l.732-3.058h1v-.831H9.82l.616-2.478h-1.08l-.518 2.478h-.991l-.545-2.478H6.16l-.545 2.478h-1l-.508-2.478h-1.08l.607 2.478h-.848zm3.713.017l.17-.823.062-.546.072.546.151.823H6.5zm2.196.797l-.241 1.265-.098.624-.098-.624L7.98 6.87h.714zm-3.231 0l-.268 1.265-.09.624-.098-.624-.25-1.265h.706z"></path>
  							</g>
  							</g>
  						</svg>
  						<span>희망시급 13,500원 협의가능</span>
  						</div>
  						<div id="userInfo-br"></div>
  						<div id="userInfo-5" class="userInfo-p col-12"><span>단기-15일 동안</span> 
						<input type="button" value="월" class="care-days"/>
						<input type="button" value="화" class="care-days"/>
						<input type="button" value="수" class="care-days"/>
						<input type="button" value="목" class="care-days"/>
						<input type="button" value="금" class="care-days"/>
						<input type="button" value="토" id="care-days"/>
						<input type="button" value="일" class="care-days"/>
						</div>
  					</div>
  					<div id="userInfo-6" class="userInfo-p col-1">
  						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  							<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
						</svg>
					</div>
  				</div>
  			</div>
  		</div>
  		<hr class="menu-hr">
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