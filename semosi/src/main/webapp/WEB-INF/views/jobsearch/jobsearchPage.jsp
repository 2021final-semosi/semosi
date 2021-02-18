<%@page import="kr.co.semosi.jobsearch.model.vo.JobSearchList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세모시 - 세상의 모든 시터</title>
<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

<link href="/resources/css/jobsearch/jobsearchPage.css" rel="stylesheet" type="text/css"/>
</head>
<body>

	<script>
		$(function() {
			/* 지역 검색 스크립트 */
			var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
			var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
			var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
			var area3 = ["대덕구","동구","서구","유성구","중구"];
			var area4 = ["광산구","남구","동구","북구","서구"];
			var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
			var area6 = ["남구","동구","북구","중구","울주군"];
			var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
			var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
			var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
			var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
			var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
			var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
			var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
			var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
			var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
			var area16 = ["서귀포시","제주시","남제주군","북제주군"];
			
			// 시/도 선택 박스 초기화

			$("select[name^=sido]").each(function() {
				$selsido = $(this);
				$.each(eval(area0), function() {
					$selsido.append("<option value='"+this+"'>"+this+"</option>");
				});
				$selsido.next().append("<option value=''>구/군 선택</option>");
			});
			
			// 시/도 선택시 구/군 설정

			$("select[name^=sido]").change(function() {
				var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
				var $gugun = $(this).next(); // 선택영역 군구 객체
				$("option",$gugun).remove(); // 구군 초기화

				if(area == "area0")
					$gugun.append("<option value=''>구/군 선택</option>");
				else {
					$.each(eval(area), function() {
						$gugun.append("<option value='"+this+"'>"+this+"</option>");
					});
				}
			});
			
			
			/* 슬라이드 스크립트 */
			$("#slider-range").slider({
                range: true,
                min: 8000,
                max: 50000,
                step: 1000,
                values: [8000, 12000],
                slide: function(event, ui) {
                    $("#amount").val(ui.values[0] + " 원 - " + ui.values[1] + " 원");
                }
            });
            $("#amount").val($("#slider-range").slider("values", 0) + " 원 - " + $("#slider-range").slider("values", 1) + " 원");
            
            
            /* 페이징 처리 스크립트 */
            var page=1;
            $("#btn-panel>a").click(function(){
            	page=page+10;
            	$.ajax({
    				url : "/moreJobsearchPage.sms",
    				type : "post",
    				data : {page : page},
    				success : function(result){
    					if(result.length==0){
    						alert("마지막 글입니다.");
    						page=page-10;
    					}
    					else{
    						for(var i=0; i<result.length; i++){
    							var content="";
    							var startDay=result[i].startDate;
    							var test=startDay.split(",");
    							content+='<li>';
    							content+='<a href="/moveSearchJobPost.sms">';
    							content+='<div>';
    							content+='<img alt="프로필사진" src="/resources/images/profile/'+result[i].originalName+'" onerror="this.src='+"'"+'/resources/images/sitter_image.png'+"'"+'">';
    							content+='</div>';
    							content+='<div>';
    							if(result[i].age<=3){
    								content+='<p>'+result[i].months+' 개월</p>';
    							} else {
    								content+='<p>만 '+result[i].age+'세</p>';
    							}
    							if(result[i].careType=="CT1"){
    								content+='<p>정기</p>';
    							} else if(result[i].careType=="CT2"){
    								content+='<p>단기</p>';
    							} else {
    								content+='<p>협의</p>';
    							}
    							content+='</div>';
    							content+='<div>';
    							content+='<p>'+result[i].title+'</p>';
    							content+='<p>'+result[i].location+'</p>';
    							content+='</div>';
    							content+='<div>';
    							content+='<p>희망 시급 '+result[i].pay+'원</p>';
    							content+='<p>'+test[0]+'일 시작</p>';
    							content+='</div>';
    							content+='</a>';
    							content+='</li>';
    							$("#joboffer-list-panel>ul>li:last-child").after(content);
    						}
    					}
    				}
    			});
            });
		});
	</script>

	<%
		ArrayList<JobSearchList> list=(ArrayList<JobSearchList>)request.getAttribute("list");
	%>
	
	<header>
		<%@ include file="/WEB-INF/views/commons/header.jsp" %>
	</header>
	
	<section>
		<div class="wrap" id="bug-fix">
			<div id="search-panel">
				<div>
					<p>일자리 찾기</p>
				</div>
				<div>
					<h4>지역</h4>
					<select name="sido1" id="sido1"></select>
					<select name="gugun1" id="gugun1"></select>
				</div>
				<hr>
				<div>
					<h4>아이 나이</h4>
					<input type="checkbox"><span>1개월 ~ 6개월</span><br>
					<input type="checkbox"><span>7개월 ~ 12개월</span><br>
					<input type="checkbox"><span>13개월 ~ 24개월</span><br>
					<input type="checkbox"><span>25개월 ~ 36개월</span><br>
					<input type="checkbox"><span>만 3세 ~ 만 5세</span><br>
					<input type="checkbox"><span>만 6세 ~ 초등학생</span><br>
				</div>
				<hr>
				<div>
					<h4>희망 시급</h4>
					<input type="text" id="amount" readonly>
					<div id="slider-range"></div>
				</div>
				<hr>
				<div>
					<h4>시작일</h4>
					<input type="date">
				</div>
				<hr>
				<div>
					<h4>주기</h4>
					<input type="checkbox"><span>정기</span>
					<input type="checkbox"><span>단기</span>
					<input type="checkbox"><span>협의</span>
				</div>
				<div>
					<button type="button">검색</button>
				</div>
			</div>
			
			
			
			
			<div id="joboffer-list-panel">
				<ul>
				<% for(JobSearchList jsl : list) { %>
					<li>
						<a href="/moveSearchJobPost.sms?MemberPNo=<%=jsl.getMemberpNo() %>">
							<div>
								<img alt="프로필사진" src="/resources/images/profile/<%=jsl.getOriginalName() %>" onerror="this.src='/resources/images/sitter_image.png'">
							</div>
							<div>
							<% if(jsl.getnAge()<3) { %>
								<p><%=jsl.getMonths() %> 개월</p>
							<% } else { %>
								<p>만 <%=jsl.getnAge() %>세</p>
							<% } %>
							<% if(jsl.getCareType().equals("CT1")) { %>
								<p>정기</p>
							<% } else if(jsl.getCareType().equals("CT2")) { %>
								<p>단기</p>
							<% } else { %>
								<p>협의</p>
							<% } %>
							</div>
							<div>
								<p><%=jsl.getTitle() %></p>
								<p><%=jsl.getLocation() %></p>
							</div>
							<div>
								<p>희망 시급 <%=jsl.getPay() %>원</p>
								<p><%=jsl.getStartDate().getMonth()+1 %>월 <%=jsl.getStartDate().getDate() %>일 시작</p>
							</div>
						</a>
					</li>
				<% } %>
				</ul>
				<div id="btn-panel">
					<a href="#review-panel">+ 더 보기</a>
				</div>
			</div>
		</div>
	</section>
	
	<footer>
		<%@ include file="/WEB-INF/views/commons/footer.jsp" %>
	</footer>
</body>
</html>