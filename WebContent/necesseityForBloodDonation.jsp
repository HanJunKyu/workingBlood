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
	width: 90px;
	height: 90px;
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

</style>
<head>
<title>헌혈의 필요성 | 일하는 혈액들</title>
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
							<li><a>&gt;&nbsp;&nbsp;헌혈지식</a></li>							
							<li><a href="${pageContext.request.contextPath}/knowledge/necesseityForBloodDonation.kn">&gt;&nbsp;&nbsp;헌혈의 필요성</a></li>							
						</ul>
					</nav>
				</div>	
			
				<h2 id="title">헌혈의 필요성</h2>
				<p>헌혈은 수혈이 필요한 환자의 생명을 구하는 유일한 수단입니다. 혈액은 아직 인공적으로 만들 수 있거나, 대체할 물질이 존재하지 않습니다.</p>
			</header>

			<!-- Content -->
			<div class="content">
				<div class="imageTitle">
					<img class="image fit" src="${pageContext.request.contextPath}/images/necesseity_background.jpeg" alt="" style="height: 27em;"/>
					<span class="titleMSG1">생명을 살리는 <strong>힘</strong>, 지금 당신의 <strong>헌혈</strong> 입니다.</span>
				</div>
				<h2 class="contentSmall">헌혈이란</h2>
				<p>혈액의 성분 중 한 가지 이상이 부족하여 건강과 생명을 위협받는 다른 사람을 위해, 건강한 사람이 자유의사에 따라 아무 대가 없이 자신의 혈액을 기증하는 사랑의 실천이자, 생명을 나누는 고귀한 행동입니다.</p>
				<h2 class="contentSmall">헌혈, 왜 해야할까요?</h2>
				<div class="transport">
					<div class="img_left_cont">
						<img src="${pageContext.request.contextPath}/images/iconFirst.png" alt="헌혈 아이콘1">
						<h4>- 첫 번째</h4>
						<p>
						헌혈한 혈액은 장기간 보관이 불가능합니다.(농축적혈구 35일, 혈소판 5일) 따라서 적정 혈액보유량인 5일분을 유지하기 위해 헌혈자분들의 지속적이고 꾸준한 헌혈이 필요합니다.
						</p>
					</div>
					<div class="img_left_cont">
						<img src="${pageContext.request.contextPath}/images/iconSecond.png" alt="헌혈 아이콘2">
						<h4>- 두 번째</h4>
						<p>
						우리나라는 수혈용혈액의 경우 자급자족하고 있지만, 의약품의 원재료가 되는 혈장성분의 경우 외국으로부터 수입을 하고 있습니다
						외국으로부터 수입하지 않고 혈액을 자급자족하기 위해서는 연간 약 300만명의 헌혈자가 헌혈에 참여해야 합니다.
						</p>
					</div>
					<div class="img_left_cont">
						<img src="${pageContext.request.contextPath}/images/iconThird.png" alt="헌혈 아이콘3">
						<h4>- 세 번째</h4>
						<p>
						우리는 언제 수혈을 받을 상황에 처할지 모릅니다. 건강할 때 헌혈하는 것은 자신과 사랑하는 가족을 위하여, 더 나아가 모두를 위한 사랑의 실천입니다.
						</p>
					</div>
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