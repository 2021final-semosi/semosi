<%@page import="kr.co.semosi.mypage.model.vo.ResidentDocu"%>
<%@page import="kr.co.semosi.mypage.model.vo.TeacherDocu"%>
<%@page import="kr.co.semosi.mypage.model.vo.FamilyDocu"%>
<%@page import="kr.co.semosi.mypage.model.vo.HealthDocu"%>

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

.title {
	padding-top: 40px;
	color: gray;
}

#wrapper {
	margin-top: 100px;
	margin-bottom: 200px;
}

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

#mainCertification {
	border: 7px solid #FF8C00;
	border-radius: 10px;
}

.certification {
	padding-top: 40px;
	padding-bottom: 40px;
}

#dividingLine {
	width: 95%;
}

.certificationText {
	float: left;
}

.certificationBtn {
	width: 85%;
}
</style>

</head>
<body>
	<script>
		function resiDocuApply() {

			//작은 창 하나 띄워서 
			window.open("/resiDocuUploadPage.sms", "세모시 - 세상의 모든 시터",
					"width=500px,height=300px");
			child.close();
		}

		function healthDocuApply() {

			window.open("/healthDocuUploadPage.sms", "세모시 - 세상의 모든 시터",
					"width=500px,height=300px");
			window.close();
		}

		function familyDocuApply() {

			window.open("/familyDocuUploadPage.sms", "세모시 - 세상의 모든 시터",
					"width=500px,height=300px");
			window.close();
		}

		function teacherDocuApply() {
			window.open("/teacherDocuUploadPage.sms", "세모시 - 세상의 모든 시터",
					"width=500px,height=300px");
		}
	</script>
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
		integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
		crossorigin="anonymous">

	<header> <%@ include file="/WEB-INF/views/commons/header.jsp"%>
	</header>
	<%
		ResidentDocu resiDocu = (ResidentDocu) request.getAttribute("resiDocu");
		HealthDocu healthDocu = (HealthDocu) request.getAttribute("healthDocu");
		FamilyDocu familyDocu = (FamilyDocu) request.getAttribute("familyDocu");
		TeacherDocu teacherDocu = (TeacherDocu) request.getAttribute("teacherDocu");
	%>

	<section id="wrapper">
	<div class="container">

		<div id="mainCertification">
			<div class="title row m-0">
				<div class="col-sm-12 m-0 p-0">
					<center>
						<H1>내 인증 관리</H1>
						<br>
						<H5>인증을 많이 받을수록, 내 프로필에 인증 뱃지가 추가되어 다른 맘시터보다 훨씬 돋보이게 됩니다.</H5>
						<br>
					</center>
				</div>
			</div>

			<div class="certification row m-0">

				<%
					if (resiDocu != null && resiDocu.getCertYn() == 'Y') {
				%>

				<div class="col-sm-4 m-0 p-0">
					<center>
						<img src="/resources/images/registration.png"><br>인증 뱃지
					</center>
				</div>
				<div class="col-sm-8 m-0 p-0">
					<H3 class="certificationText">등초본 인증</H3>
					<H3 class="certificationText" style="color: red;">(필수)</H3>
					<br> <br> <br>
					<H5>
						주민 등록 등본 또는 주민 등록 초본으로 인증받으세요.
						</H1>
						<H5 style="color: blue;">
							* 발급일 6개월 이내만 유효
							</H1>
							<br> <input type="button" id="primaryCertification"
								class="btn btn-warning certificationBtn"
								value="주민 등록 등/초본 인증 완료!" />
							<%
								} else if (resiDocu != null && resiDocu.getCertYn() == 'N') {
							%>

							<div class="col-sm-4 m-0 p-0">
								<center>
									<img src="/resources/images/none_certification.PNG"><br>인증
									뱃지
								</center>
							</div>
							<div class="col-sm-8 m-0 p-0">
								<H3 class="certificationText">등초본 인증</H3>
								<H3 class="certificationText" style="color: red;">(필수)</H3>
								<br> <br> <br>
								<H5>
									주민 등록 등본 또는 주민 등록 초본으로 인증받으세요.
									</H1>
									<H5 style="color: blue;">
										* 발급일 6개월 이내만 유효
										</H1>
										<br> <input type="button" id="primaryCertification"
											class="btn btn-warning certificationBtn" value="인증이 진행중입니다." />

										<%
											} else {
										%>

										<div class="col-sm-4 m-0 p-0">
											<center>
												<img src="/resources/images/none_certification.PNG"><br>인증
												뱃지
											</center>
										</div>
										<div class="col-sm-8 m-0 p-0">
											<H3 class="certificationText">등초본 인증</H3>
											<H3 class="certificationText" style="color: red;">(필수)</H3>
											<br> <br> <br>
											<H5>
												주민 등록 등본 또는 주민 등록 초본으로 인증받으세요.
												</H1>
												<H5 style="color: blue;">
													* 발급일 6개월 이내만 유효
													</H1>
													<br> <input type="button" id="primaryCertification"
														class="btn btn-warning certificationBtn"
														onclick="resiDocuApply();" value="주민 등록 등/초본 인증 받기" />

													<%
														}
													%>
												
										</div>
							</div>

							<center>
								<hr id="dividingLine">
							</center>

							<div class="certification row m-0">

								<%
									if (healthDocu != null && healthDocu.getCertYn() == 'Y') {
								%>
								<div class="col-sm-4 m-0 p-0">
									<center>
										<img src="/resources/images/health.png"><br>인증 뱃지
									</center>
								</div>
								<div class="col-sm-8 m-0 p-0">
									<H3>건강 인증</H3>
									<br>
									<H5>건강 진단 결과서 (보건소 발급)</H5>
									<br> <input type="button" id="subCertification1"
										class="btn btn-warning certificationBtn" value="인증 받기" />
								</div>
								<%
									} else if (healthDocu != null && healthDocu.getCertYn() == 'N') {
								%>
								<div class="col-sm-4 m-0 p-0">
									<center>
										<img src="/resources/images/none_certification.PNG"><br>인증
										뱃지
									</center>
								</div>
								<div class="col-sm-8 m-0 p-0">
									<H3>건강 인증</H3>
									<br>
									<H5>건강 진단 결과서 (보건소 발급)</H5>
									<br> <input type="button" id="subCertification1"
										class="btn btn-warning certificationBtn" value="인증이 진행중입니다" />
								</div>
								<%
									} else {
								%>
								<div class="col-sm-4 m-0 p-0">
									<center>
										<img src="/resources/images/none_certification.PNG"><br>인증
										뱃지
									</center>
								</div>
								<div class="col-sm-8 m-0 p-0">
									<H3>건강 인증</H3>
									<br>
									<H5>건강 진단 결과서 (보건소 발급)</H5>
									<br> <input type="button" id="subCertification1"
										class="btn btn-warning certificationBtn"
										onclick="healthDocuApply();" value="인증 받기" />
								</div>
								<%
									}
								%>

							</div>
							<center>
								<hr id="dividingLine">
							</center>
							<div class="certification row m-0">


								<%
									if (familyDocu != null && familyDocu.getCertYn() == 'Y') {
								%>

								<div class="col-sm-4 m-0 p-0">
									<center>
										<img src="/resources/images/parents.png"><br>인증 뱃지
									</center>
								</div>
								<div class="col-sm-8 m-0 p-0">
									<H3>부모 인증</H3>
									<br>
									<H5>가족 관계 증명서</H5>
									<H5 style="color: gray;">- 발급일 6개월 이내만 유효</H5>
									<br> <input type="button" id="subCertification2"
										class="btn btn-warning certificationBtn" value="인증 받기" />
								</div>
								<%
									} else if (familyDocu != null && familyDocu.getCertYn() == 'N') {
								%>

								<div class="col-sm-4 m-0 p-0">
									<center>
										<img src="/resources/images/none_certification.PNG"><br>인증
										뱃지
									</center>
								</div>
								<div class="col-sm-8 m-0 p-0">
									<H3>부모 인증</H3>
									<br>
									<H5>가족 관계 증명서</H5>
									<H5 style="color: gray;">- 발급일 6개월 이내만 유효</H5>
									<br> <input type="button" id="subCertification2"
										class="btn btn-warning certificationBtn" value="인증이 진행중입니다." />
								</div>
								<%
									} else {
								%>

								<div class="col-sm-4 m-0 p-0">
									<center>
										<img src="/resources/images/none_certification.PNG"><br>인증
										뱃지
									</center>
								</div>
								<div class="col-sm-8 m-0 p-0">
									<H3>부모 인증</H3>
									<br>
									<H5>가족 관계 증명서</H5>
									<H5 style="color: gray;">- 발급일 6개월 이내만 유효</H5>
									<br> <input type="button" id="subCertification2"
										class="btn btn-warning certificationBtn"
										onclick="familyDocuApply();" value="인증 받기" />
								</div>
								<%
									}
								%>
							</div>
							<center>
								<hr id="dividingLine">
							</center>
							<div class="certification row m-0">


								<%
									if (teacherDocu != null && teacherDocu.getCertYn() == 'Y') {
								%>
								<div class="col-sm-4 m-0 p-0">
									<center>
										<img src="/resources/images/teacher.png"><br>인증 뱃지
									</center>
								</div>
								<div class="col-sm-8 m-0 p-0">
									<H3>선생님 인증</H3>
									<br>
									<H5>보육교사 자격증, 유치원/특수교사/초등학교 정교사 자격증</H5>
									<br> <input type="button" id="subCertification2"
										class="btn btn-warning certificationBtn" value="인증 받기" />
								</div>
								<%
									} else if (teacherDocu != null && teacherDocu.getCertYn() == 'N') {
								%>
								<div class="col-sm-4 m-0 p-0">
									<center>
										<img src="/resources/images/none_certification.PNG"><br>인증
										뱃지
									</center>
								</div>
								<div class="col-sm-8 m-0 p-0">
									<H3>선생님 인증</H3>
									<br>
									<H5>보육교사 자격증, 유치원/특수교사/초등학교 정교사 자격증</H5>
									<br> <input type="button" id="subCertification2"
										class="btn btn-warning certificationBtn" value="인증 받기" />
								</div>
								<%
									} else {
								%>
								<div class="col-sm-4 m-0 p-0">
									<center>
										<img src="/resources/images/none_certification.PNG"><br>인증
										뱃지
									</center>
								</div>
								<div class="col-sm-8 m-0 p-0">
									<H3>선생님 인증</H3>
									<br>
									<H5>보육교사 자격증, 유치원/특수교사/초등학교 정교사 자격증</H5>
									<br> <input type="button" id="subCertification2"
										class="btn btn-warning certificationBtn"
										onclick="teacherDocuApply();" value="인증 받기" />
								</div>
								<%
									}
								%>
							</div>
				</div>

				<center>
					<br> <br> <br> 로고<br> <br>
					<H5 style="color: gray;">많은 인증을 받을수록 부모님에게 더 많은 선택을 받게 됩니다!</H5>
				</center>
			</div>
	</section>

	<footer> <%@ include file="/WEB-INF/views/commons/footer.jsp"%>
	</footer>

</body>
</html>
