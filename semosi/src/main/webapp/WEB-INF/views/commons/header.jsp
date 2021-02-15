<%@page import="kr.co.semosi.member.model.vo.SitterMember"%>
<%@page import="kr.co.semosi.member.model.vo.ParentMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="/resources/css/commons/header.css" rel="stylesheet" type="text/css"/>

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

<%
	ParentMember pm = (ParentMember)session.getAttribute("pMember");
	SitterMember sm = (SitterMember)session.getAttribute("sMember");
%>
		<div id="header-wrap" class="wrap">
			<div id="logo-panel">
				<a href="/"><img alt="세모시 로고" src="/resources/images/semosi-logo-color.png"></a>
			</div>
			<ul id="main-nav-panel">
			<%if(pm != null){ %>
			
				<li><a href="/parentVoucherBuy.sms">이용권 구매</a></li>
				<li><a href="/moveCsMain.sms">고객센터</a></li>

			<%}else if(sm != null){ %>
				<li><a href="/sitterVoucherBuy.sms">이용권 구매</a></li>
				<li><a href="/moveCsMain.sms">고객센터</a></li>
			<%} else { %>
				<li><a href="/moveCsMain.sms">고객센터</a></li>
			
			<%} %>	
			</ul>
			
			<%if(pm != null){ %>
			
			<ul id="btn-nav-panel">
				<li><a href="/parentProfile.sms">마이페이지</a></li>
				<li><a href="/logout.sms">로그아웃</a></li>
			</ul>

			<%}else if(sm != null){ %>
			<ul id="btn-nav-panel">
				<li><a href="/sitterProfile.sms">마이페이지</a></li>
				<li><a href="/logout.sms">로그아웃</a></li>
			</ul>
			<%} else { %>
			<ul id="btn-nav-panel">
				<li><a href="/memberJoinPageIndex.sms">가입하기</a></li>
				<li><a href="/loginPage.sms">로그인</a></li>
			</ul>
			<%} %>
			
			<ul id="sub-nav-panel">
				<li><a href="/jobofferPage.sms">맘시터 찾기</a> &nbsp|</li>
				<li><a href="/jobsearchPage.sms">일자리 찾기</a></li>
			</ul>
		</div>