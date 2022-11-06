<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
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

.imageTitle {
	position: relative;
}

.titleMSG1 {
	position: absolute;
	top: 50%;
	width: 100%;
	display: inline-block;
	text-align: center;
	color: white;
	font-size: 25px;
}

.titleMSG2 {
	position: absolute;
	top: 70%;
	width: 100%;
	display: inline-block;
	text-align: center;
	color: white;
	font-size: 20px;
}

.titleMSG1 strong, .titleMSG2 strong {
	color: white;
}

.contentSmall{
	margin-bottom: 1em;
	padding-bottom: 5px;
	border-bottom: solid 1px #b71c1c;
	width: 18%;	
}

.spotlights h2{
	font-size: 25px;
	margin: 1px;
}

.spotlights p{
	font-size: 16px;
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


/* Spotlights */
.spotlights {
	margin: 0 0 2rem 0;
}

.spotlights section {
	-moz-align-items: center;
	-webkit-align-items: center;
	-ms-align-items: center;
	align-items: center;
	display: -moz-flex;
	display: -webkit-flex;
	display: -ms-flex;
	display: flex;
	margin-top: -3rem;
}

.spotlights section .image {
	-moz-flex-grow: 0;
	-webkit-flex-grow: 0;
	-ms-flex-grow: 0;
	flex-grow: 0;
	-moz-flex-shrink: 0;
	-webkit-flex-shrink: 0;
	-ms-flex-shrink: 0;
	flex-shrink: 0;
	border-radius: 100%;
	box-shadow: 0 1rem 3rem 0 rgba(0, 0, 0, 0.25);
	margin: 0 6rem 0 0;
	width: 30rem;
}

.spotlights section .image img {
	border-radius: 100%;
	display: block;
	width: 100%;
}

.spotlights section .content {
	-moz-flex-grow: 1;
	-webkit-flex-grow: 1;
	-ms-flex-grow: 1;
	flex-grow: 1;
	-moz-flex-shrink: 1;
	-webkit-flex-shrink: 1;
	-ms-flex-shrink: 1;
	flex-shrink: 1;
}


.spotlights section:first-child {
	margin-top: 0;
}

.spotlights section:nth-child(2n) {
	-moz-flex-direction: row-reverse;
	-webkit-flex-direction: row-reverse;
	-ms-flex-direction: row-reverse;
	flex-direction: row-reverse;
	text-align: right;
}

.spotlights section:nth-child(2n) .image {
	margin: 0 0 0 6rem;
}

.spotlights section:nth-child(2n) .content header.major h3:after {
	margin-left: auto;
	margin-right: 0;
}

/* 미디어쿼리 */
@media screen and (max-width: 1280px) {
	.spotlights section {
		margin-top: 3rem;
	}
	.spotlights section .image {
		margin: 0 4rem 0 0;
		width: 20rem;
	}
	.spotlights section:nth-child(2n) .image {
		margin: 0 0 0 4rem;
	}
}

@media screen and (max-width: 980px) {
	.spotlights section {
		display: block;
		text-align: center;
	}
	.spotlights section .image {
		margin: 0 0 3rem 0;
		max-width: 100%;
	}
	.spotlights section .content header.major h3:after {
		margin-left: auto;
		margin-right: auto;
	}
	.spotlights section:nth-child(2n) {
		text-align: center;
	}
	.spotlights section:nth-child(2n) .image {
		margin: 0 0 3rem 0;
	}
	.spotlights section:nth-child(2n) .content header.major h3:after {
		margin-left: auto;
		margin-right: auto;
	}
	.titleMSG2 {
	font-size: 15px;
	}	
}
</style>
<head>
<title>일하는 혈액들이란? | 일하는 혈액들</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png"/>
<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload" style="margin: 0 auto; width: 95%; padding:100px">

	<%@ include file="header.jsp"%>

	<!-- Main -->
	<section id="main" class="wrapper">
		<div class="inner">

			<header class="align-center">
			
				<!-- 카테고리 연결 -->
				<div class="loacation_wrap">
					<nav class="location">
						<ul>
							<li><a href="${pageContext.request.contextPath}/user/Index.us"><img src="${pageContext.request.contextPath}/images/iconHome.png" style="width:1.5em;"></a></li>									
							<li><a>&gt;&nbsp;&nbsp;일하는 혈액들 소개</a></li>							
							<li><a href="${pageContext.request.contextPath}/introduce/what_is_WorkingBlood.in">&gt;&nbsp;&nbsp;일하는 혈액들이란?</a></li>							
						</ul>
					</nav>
				</div>	
			
				<h2 id="title">일하는 혈액들이란?</h2>
				<p>헌혈증 나눔을 통해 혈액들이 새로운 생명을 돕는다는 뜻 입니다.</p>
			</header>

			<!-- Content -->
			<div class="content">
				<div class="imageTitle">
					<img class="image fit" src="${pageContext.request.contextPath}/images/what_is_workingBlood1.jpeg" alt="" />
					<span class="titleMSG1"><strong>헌혈증 나눔,</strong> 누군가의 생명을 살릴 때 더 빛이 납니다</span>
					<span class="titleMSG2">우리 주변엔 지금도 수혈을 간절히 기다리는 분들이 있습니다 
					<br> 여러분의 <strong>헌혈증</strong>만이 우리의 가족과 이웃을 살릴 수 있습니다
					</span>
				</div>
				<h2 class="contentSmall">헌혈증 나눔</h2>
				<p>수혈에 필요한 환자들의 건강과 생명을 보호할 수 있는 혈액제제는 오직 헌혈을 통해서만 얻을 수 있습니다.
					따라서 헌혈은 수혈자들을 위해 자신의 생명을 나누는 숭고한 행위입니다. 우리나라는 급속한 저출산·고령화로 인하여 헌혈자
					수는 지속적으로 감소하는 반면, 수혈자 수는 계속 증가할 것으로 예상됩니다. 혈액의 안정적인 공급을 위해서는
					국민여러분들의 헌혈 참여가 절실히 필요합니다.</p>
				<p>일하는 혈액들은 수혈이 필요한 분들이 언제 어디서나 안전하고 효과적인 혈액증을 받을 수 있도록 끊임없이
					노력하고 있습니다. 모든 헌혈증 기증자 분들의 사랑실천에 감사드리며 일하는 혈액들은 항상 최선의 공급을 위해
					나아가겠습니다.</p>
				<h2 class="contentSmall">헌혈증 기부절차</h2>
				<div class="spotlights">
					<section>
						<div class="image">
							<img src="${pageContext.request.contextPath}/images/write3.jpeg" alt="">
						</div>
						<div class="content">
							<header>
								<h2>첫 번째, 헌혈증 기부 양식 작성하기</h2>
							</header>
							<p>'헌혈참여 - 헌혈증 기부 신청'에서 양식을 작성하고, 일하는 혈액들로 헌혈증을 발송 해 주세요</p>
						</div>
					</section>
					<section>
						<div class="image">
							<img src="${pageContext.request.contextPath}/images/check.jpg" alt="">
						</div>
						<div class="content">
							<header>
								<h2>두 번째, 헌혈증 확인하기</h2>
							</header>
							<p>적혈구님이 발송하신 소중한 헌혈증을 받은 후 확인절차를 거쳐요.</p>
						</div>
					</section>
					<section>
						<div class="image">
							<img src="${pageContext.request.contextPath}/images/approved.jpg" alt="">
						</div>
						<div class="content">
							<header>
								<h2>세 번째, 헌혈증 요청 양식 승인하기</h2>
							</header>
							<p>다른 적혈구님들이 '헌혈참여 - 헌혈증 요청 신청'에서 작성한 헌혈증 요청 양식을 꼼꼼히 검토한 후 승인해요</p>
						</div>
					</section>
					<section>
						<div class="image">
							<img src="${pageContext.request.contextPath}/images/delivery1.jpeg" alt="">
						</div>
						<div class="content">
							<header>
								<h2>네 번째, 헌혈증 전달하기</h2>
							</header>
							<p>승인된 헌혈증 요청 중 신청한 순서대로 헌혈증이 혈액이 필요한 적혈구님들에게 전달돼요!</p>
						</div>
					</section>
				</div>
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
</html>