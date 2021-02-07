<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- BootStrap 4.6.0 라이브러리 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>



<style>
div{
	border: 0px solid black;
}
a{
	text-decoration: none;
	color: black;
	display: inline-block;
}
a:hover{
	text-decoration: none;
}
#naviContents{
	height: 100%;
	width: 100%;
	padding: 50px 0px 50px 0px;
}
	#fixedNavi{
		width: 100%;
		height: 100%;
		padding: 0px;
		border: 1px solid black;
		
	}
	.menu-main{
		width: 100%;
    	font-size: 17px;
    	padding: 10px 10px 10px 20px;
    	margin: 0px;
    	height: 50px;
    }
    .menu-main>a{
    	text-decoration: none;
		color: black;
    }
    .menu-title{
    	padding: 0px;
    }
    .menu-title>a{
    	text-decoration: none;
		color: black;
    }
    .menu-svg{
    	text-align:right;
    	padding: 5px 10px 0px 0px;
    }
	.hide{
		margin: 0px;
		padding: 10px 10px 10px 40px;
		text-decoration: none;
		height: 40px;
	}
    .hide>a{
		color: black;
		width:100%;
		height: 100%;
		display: block;
		text-decoration: none;
    }
    .menu-sub{
    	height: 100%;
    	padding: 0px;
    }
    .menu-sub>a{
    	text-decoration: none;
		color: black;
    }
    svg{
    	text-align:right;
    	padding-top: 5px;
    }
    .menu-main:hover {
    	background-color: #f6d257;
    }
    
    .hide:hover {
    	background-color: #f6d257;
    }
    
    .line {
    	margin: 0px;
    	border: 5px solid #f3f1f1;
    }
    #icon-up{
    	display: inline;
    }
    #icon-down{
    	display: none;
    }

</style>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script>
     $(document).ready(function(){
        $(".menu-main").click(function(){
            var submenu = $(this).next(".menu-sub");
            var icon = $(this).children(".menu-svg");
 
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
            	submenu.slideUp();
            	$(icon.children("#icon-up")).css("display","none");
            	$(icon.children("#icon-down")).css("display","inline");
            }else{
                submenu.slideDown();
                $(icon.children("#icon-up")).css("display","inline");
            	$(icon.children("#icon-down")).css("display","none");
            }
          });
       });


</script>

            <div id="naviContents">
                <div id="navigation">
                    <div id="fixedNavi">
                    	<div class="menu-main"><a href="/sitterProfile.do"><span>마이페이지</span></a></div>
                    	<hr class="line">
                        <div class="menu-main row m-0">
                        	<div class="menu-title col-9 p-0">
                           	<a href="#"><span>내 구직 현황<span></a>
                           	</div>
                           	<div class="menu-svg col-3">
                           	<svg xmlns="http://www.w3.org/2000/svg" id="icon-down" width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" id="icon-up" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
							</svg>
							</div>
                        </div>
                       	<div class="menu-sub">
                                <div class="hide"><a href="/sitterApplicationSent.do"><span>내가 신청한 구직 현황</span></a></div>
                                <div class="hide"><a href="/sitterApplicationReceive.do"><span>내게 지원한 구직 현황</span></a></div>
                        </div>
                        <div class="menu-main"><a href="/sitterApplicaionScrap.do"><span>찜한 일자리</span></a></div>
                        <div class="menu-main"><a href="/sitterApplication.do"><span>내 신청서 조회</span></a></div>
                        <hr class="line">
                        <div class="menu-main row m-0">
                        	<div class="menu-title col-9 p-0">
                        	<a href="#"><span>후기 관리<span></a> 
                        	</div>
                        	<div class="menu-svg col-3">
                           	<svg xmlns="http://www.w3.org/2000/svg" id="icon-down" width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" id="icon-up" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
							</svg>
							</div>
                        </div>
                        <div class="menu-sub">
                               <div class="hide"><a href="/sitterReviewReceive.do"><span>작성한 후기</span></a></div>
                               <div class="hide"><a href="/sitterReviewWrite.do"><span>받은 후기</span></a></div>
                            </div>
                        <div class="menu-main"><a href="/sitterCertification.do"><span>인증 관리</span></a></div>
                        <div class="menu-main"><a href="#"><span>내 맘시터 채용 내역</span></a></div>
                        <div class="menu-main"><a href="/sitterReport.do"><span>신고 내역</span></a></div>
                        
                        <hr class="line">
                        <div class="menu-main row m-0">
                        	<div class="menu-title col-9 p-0">
                        	<a href="#"><span>이용권 관리<span></a> 
                        	</div>
                        	<div class="menu-svg col-3">
                           	<svg xmlns="http://www.w3.org/2000/svg" id="icon-down" width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" id="icon-up" width="16" height="16" fill="currentColor" class="bi bi-chevron-up" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M7.646 4.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 5.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
							</svg>
							</div>
                        </div>
                        <div class="menu-sub">
                               <div class="hide"><a href="/sitterVoucherBuy.do"><span>이용권 구매</span></a></div>
                               <div class="hide"><a href="/sitterVoucherPayView.do"><span>이용권 조회</span></a></div>
                            </div>
                       
                        
                    </div>
                </div>
            </div>
</body>
</html>