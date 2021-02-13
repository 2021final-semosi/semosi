<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/common_subnavbar.css">
</head>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<body>
<script>
$(function() {
	
	 $(".mainmenu li").click(function() {
		 $(this).children(".submenu").stop().slideDown(); 
		 });
	 
	 $(".mainmenu li").mouseleave(function() {
		 $(this).children(".submenu").stop().slideUp(); 
		 });
	
	$('.submenu>li>a').click(function(){
		$(this).css('display','fixed');
	})
	 });
</script>

  <header class="nav-snb">
        <nav id="navbar">
            <ul class="mainmenu">
                <li id="main-item"><a href="/main.sms"><img src="/resources/img/sub_home.png" /> &nbsp; &nbsp; &nbsp; 대시보드</a></li>

                <li id="main-item"><img src="/resources/img/sub_member.png" /> &nbsp; &nbsp; &nbsp; 회원관리</a>
                	<ul class="submenu">
                		<li><a href="/memberp_board.sms">부모 회원</a></li>
                		<li><a href="/members_board.sms">시터 회원</a></li>
                	</ul>
                </li>

                <li id="main-item"><img src="/resources/img/sub_customer.png" /> &nbsp; &nbsp; &nbsp; 고객센터
                    <ul class="submenu">
                        <li><a href="/notice_list.sms">공지사항</a></li>
                        <li>FAQ
                        	<ul class="submenu" id="sub_submenu">
                            	<li><a href="/faq_parents_list.sms">부모회원</a></li>
                            	<li><a href="/faq_sitter_list.sms">시터회원</a></li>
                           </ul>
                        </li>
                        <li><a href="/inquiry_list.sms">1:1문의</a></li>
                    </ul>
                </li>

                <li id="main-item"><img src="/resources/img/sub_board.png" /> &nbsp; &nbsp; &nbsp; 구인 / 구직
                    <ul class="submenu">
                        <li><a href="/job_offer_list.sms">구인 게시판</a></li>
                        <li><a href="/job_search_list.sms">구직 게시판</a></li>
                        <li><a href="/post_report_list.sms">게시판 신고 리스트</a></li>
                    </ul>
                </li>

                <li id="main-item"><img src="/resources/img/sub_voucher.png" /> &nbsp; &nbsp; &nbsp; 이용권 관리
                    <ul class="submenu">
                        <li><a href="/parents_voucher_list.sms">부모 이용권</a></li>
                        <li><a href="/sitter_voucher_list.sms">시터 이용권</a></li>
                    </ul>
                </li>

                <li id="main-item"><img src="/resources/img/sub_board.png" /> &nbsp; &nbsp; &nbsp; 사용자 후기
                    <ul class="submenu">
                        <li><a href="/offer_review.sms">구인 후기 게시판</a></li>
                        <li><a href="/search_review.sms">구직 후기 게시판</a></li>
                        <li><a href="/review_answer.sms">후기 답변 게시판</a></li>
                    </ul>
                </li>

            </ul>
        </nav>
    </header>
</body>
</html>