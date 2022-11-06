<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- jsp에서 jstl 사용하기 위함 - 앞에 c:로 시작 -->	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<style>
body{
	padding-top: 3.5em;
	margin: 0px auto;
	width: 95%;
}

h1:after, h2:after, h3:after, h4:after, h5:after, h6:after {
	border-bottom: solid 1px;
	bottom: 0;
	content: '';  
	display: inline-block;
	left: 0;
	position: absolute;
	width: 3rem;
		}

#title {
	font-size: 30px;
	padding-bottom: 0em;
	margin-bottom: 10px;
}

.contentSmall{
	margin-bottom: 1em;
	padding-bottom: 5px;
	border-bottom: solid 1px #b71c1c;
	width: 18%;	
}

#bloodCnt{
	font-weight: initial;
	font-size: small;
	color: gray;
}

/* 질별관리청 카테고리 연결 */
.loacation_wrap {
	position: absolute;
	right: 5em;
	top: 2em;
		}
.location {
	padding: .5rem 0;
	font-size: 1rem;
	}
.location li {
	float: left;
	margin-right: 5px;
	}
.location li:last-child a {
	color:#000;
	font-weight:bold;
	}

.location ul{
	list-style: none;
}
.location a{
	border-bottom: none;
}


/* 질병관리청-오시는길 복붙 */
.location_map, .transport, .owncar {
	border-bottom: 1px solid #eaeef3;
	padding: 20px 0;
	margin: 0;
}

.transport>div, .owncar>div {
	margin-left: 0.55rem;
}

.img_left_cont::after {
	content: "";
	clear: both;
	display: table;
}

.img_left_cont>img {
	float: left;
	margin-right: 2rem;
	margin-bottom: 2rem;
	width: 100px;
	height: 100px;
}

.img_left_cont h2, .img_left_cont h3, .img_left_cont h4 {
	color: #e55;
	overflow: hidden;
	padding-top: 0.8em;
	padding-bottom: 0em;
	margin-bottom: 1em;
}

.img_left_cont>ul, .img_left_cont>p {
	overflow: hidden;
	padding-left: 1.2rem
}

ul {
	margin-left: 1.2rem;
}

/* 헌혈양식요청 */		
ul {
    margin: 0 0 0;
}
ul.actions{
	justify-content: center;
	padding: 1em;				
}

h2:after{
	width: 0rem;
}

.row p{
	font-weight: bolder;
    font-size: large;
}
textarea{
	resize: none;
}

</style>
<head>
<title>헌혈증 요청 양식 | 일하는 혈액들</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="shortcut icon" type="image/x-icon" href="images/favicon2.png"/>
<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload" style="margin:0 auto; width:95%;">
	<c:if test="${session_id eq null}">
         <script>
            alert("로그인 후 이용하세요.");
            location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
         </script>
      </c:if>
	<%@ include file="header.jsp"%>

	<!-- Main -->
	<section id="main" class="wrapper">
		<div class="inner">

			<header class="align-center">
			
				<!-- 카테고리 연결 -->
				<div class="loacation_wrap">
					<nav class="location">
						<ul>
							<li><a href="index.jsp"><img src="images/iconHome.png" style="width:1.5em;"></a></li>									
							<li><a>&gt;&nbsp;&nbsp;일하는 혈액들 소개</a></li>							
							<li><a href="bloodDonorRequestCardForm.jsp">&gt;&nbsp;&nbsp;헌혈증 요청 신청</a></li>							
						</ul>
					</nav>
				</div>	
			
				<h2 id="title">헌혈증 요청 신청서</h2>
				<p><strong>※헌혈증을 필요로하는 분들은 아래의 신청서를 작성해주시기 바랍니다.</strong></p>
			</header>

			<!-- Content -->
			<div class="content">
				<h2 class="contentSmall">구비서류</h2>
				<div class="transport">
					<div class="img_left_cont">
						<img src="images/iconPaper.PNG" alt="구비서류 아이콘">
						<p>
							1. 신청자의 신분증 사본 (또는 등·초본)<br>
							<span style="color:gray">- 신청자가 본인이 아닐 경우 : 신청자와 환자와의 관계를 증명할 수 있는 서류(가족인 경우), 위임장(가족이 아닌 경우)</span><br>
							2. 실제혈액 수혈(사용)량 확인이 가능한 의료기관 발급 증빙서류<br>
							3. 기타서류 및 궁금하신 사항은 혈액원에 문의  ☎<u>1588-5890</u>
						</p>
					</div>
				</div>
                  
                 <!-- 헌혈증 요청 양식(새로만듬) -->
                 <table>
						<thead style="border-bottom-color:#b71c1c;">
							<tr style="background-color:#b71c1c;">
								<th style="padding: 0.5em 0.75em 0.5em 0.75em;color: #fff;">신청서</th>
							</tr>
						</thead>
				</table>
                  <form method="post" action="${pageContext.request.contextPath}/dona/DonaTicketReqWriteOk.do" name="writeForm" enctype="multipart/form-data">
                  <input type="hidden" name="user_id" value="${session_id}">
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<p>1. 신청자</p>
							<input type="radio" id="demo-priority-low" name="req_applicant" value="oneself" checked="checked">
							<label for="demo-priority-low">본인</label>
							<input type="radio" id="demo-priority-normal" name="req_applicant" value="agent">
							<label for="demo-priority-normal" style="position:absolute; margin:auto 5em;">대리인</label>
							<hr>
						</div>
						<div class="col-6 col-12-xsmall">
							<p style="margin-bottom: revert;">2. 헌혈증 신청 수량(매수)<br><span id="bloodCnt">※ 10매까지 신청가능 합니다.</span></p>
							<input type="number" name="req_blood_ticket_cnt" id="demo-name" style="width: 52px;" required/> 매
							<hr style="margin: 1.4em 0;"><!-- min="1" max="10" -->
						</div>
						<div class="col-12">
							<p>3. 신청사유</p>
							<textarea name="req_application_reason" id="demo-message" placeholder="신청사유" rows="6"></textarea>
							<hr>
						</div>
						<div class="col-6 col-12-xsmall">
							<p>4. 의료기관 명</p>
							<input type="text" name="req_hospital_name" id="demo-name" value="" placeholder="의료기관 명" />
							<hr>
						</div>
						<div class="col-6 col-12-xsmall">
							<p>5. 수혈일자(기간)</p>
							<input type="date" name="req_blood_first_date" value="">
							~ <input type="date" name="req_blood_last_date" value="">
							<hr style="margin: 2.7em 0;">
						</div>
						<div class="col-6 col-12-xsmall">
							<p>6. 수혈량(unit)</p>							
							<input type="number" name="req_blood_amount" id="demo-name" min="1" max="10000" required/> unit
							<hr style="margin: 2.7em 0;">
						</div>
						<div class="col-6 col-12-xsmall">
							<p>7. 수혈사유(병명입력)</p>
							<input type="text" name="req_blood_reason" id="demo-email" value="" placeholder="수혈사유" />
							<hr>
						</div>
						<div class="col-12">
							<ul class="actions">
								<li><input type="button" value="신청하기" class="button primary fit" onclick="formSubmit()"/></li>
							</ul>
						</div>
					</div>
				</form>
                 
           
				
				
			</div>
		</div>
	</section>


	<%@ include file="footer.jsp"%>

	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	
</body>
<script>
//제목이나 내용을 작성하지 않았을 경우 알림창 띄우기
function send(){
	document.writeForm.submit();
}


var frm = document.writeForm;
function formSubmit(){
	
		/* if(!frm.req_applicant.value){
			alert("신청자(본인 혹은 대리인)를 선택해주세요.");
			frm.user_id.focus();
			return false;
		} -->무조건 눌러지게 되어있음*/
		
		if(!frm.req_blood_ticket_cnt.value){
			alert("헌혈증 신청 수량을 입력해주세요.");//개수 제한 둬야함.
			frm.req_blood_ticket_cnt.focus();
			return false;
		}
		if(frm.req_blood_ticket_cnt.value < 1 ){
			alert("헌혈증 신청 수량은 최소 1개부터 가능합니다.");//개수 제한 둬야함.
			frm.req_blood_ticket_cnt.focus();
			return false;
		}
		if(frm.req_blood_ticket_cnt.value > 10 ){
			alert("헌혈증 신청 수량은 최대 10개까지 가능합니다.");//개수 제한 둬야함.
			frm.req_blood_ticket_cnt.focus();
			return false;
		}
		
		if(!frm.req_application_reason.value){
			alert("신청 사유를 입력해주세요.");
			frm.req_application_reason.focus();
			return false;
		
		}
		
		if(!frm.req_hospital_name.value){
			alert("의료기관 명을 입력해주세요.");
			frm.req_hospital_name.focus();
			return false;
		}
		
		if(!frm.req_blood_first_date.value){
			alert("수혈일자를 입력해주세요.");
			frm.req_blood_first_date.focus();
			return false;
		}
		
		if(!frm.req_blood_amount.value){
			alert("수혈량을 입력해주세요.");
			frm.req_blood_amount.focus();
			return false;
		}
		if(!frm.req_blood_reason.value){
			alert("수혈 사유를 입력해주세요.");
			frm.req_blood_reason.focus();
			return false;
		}
			
		frm.submit();
}
</script>
</html>