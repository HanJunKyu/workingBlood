<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>헌혈증 요청 양식 | 일하는 혈액들</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="shortcut icon" type="image/x-icon" href="images/favicon2.png"/>
<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
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
p{
	text-align:center;
	margin: 100px 0px 2em 0;
}
</style>
</head>
<body class="is-preload" style="margin:0 auto; width:95%;">

	<%@ include file="header.jsp"%>

	<!-- Main -->
	<section id="main" class="wrapper">
		<div class="inner">

			<header class="align-center">
			
				<!-- 카테고리 연결 -->
				<div class="loacation_wrap">
					<nav class="location">
						<ul>
							<li><a href="${pageContext.request.contextPath}/user/index.us"><img src="${pageContext.request.contextPath}/images/iconHome.png" style="width:1.5em;"></a></li>									
							<li><a>&gt;&nbsp;&nbsp;일하는 혈액들 소개</a></li>							
							<li><a href="${pageContext.request.contextPath}/bloodDonor_CardForm.jsp">&gt;&nbsp;&nbsp;헌혈증 기부 신청</a></li>							
						</ul>
					</nav>
				</div>	
			
				<h2 id="title"style="margin-bottom: 75px;">헌혈증 기부 신청</h2>
			</header>
                  
                 <table>
						<thead style="border-bottom-color:#b71c1c;">
							<tr style="background-color:#b71c1c;">
								<th style="padding: 0.5em 0.75em 0.5em 0.75em;color: #fff;">신청서</th>
							</tr>
						</thead>
				</table>
				<div>
					<p style="margin: 100px;"> 신청이 완료 되었습니다. 나의 신청 목록은 마이페이지에서 확인하실 수 있습니다.</p>
					<div class="col-12">
								<ul class="actions">
									<li><a href="${pageContext.request.contextPath}/user/Index.us" class="button">메인 화면으로</a></li>
								</ul>
					</div>
								<hr>
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