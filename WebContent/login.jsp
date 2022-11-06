<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Working Blood</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Caramel&display=swap" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png" />
<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
<style>
section {
	height: 700px;
	width: 55%;
	background: #fff;
	max-height: 90%;
	margin: 28px auto;
	padding: 2.5em 2em 2.5em;
	border-radius: 50px;
}

h2 {
	line-height: 0px;
	margin: 50px auto;
	padding: 0;
	text-align: center;
	font-weight: 900;
	font-size: 40px;
}

.inner {margin: 7% auto; padding: 3%; width: 50%;}

.button {height: 1.75em; line-height: 1.75em;}

img {width: 100%; height: 100%;}

input[type="text"], input[type="password"] {height: 37px; margin: 10px auto; padding: 10px;}

.bac {background: #e55 !important; border-radius: 20px !important;}

div a{text-decoration: none; -webkit-text-stroke: thin;}

.p{border-right: 1px solid grey; padding: 0 10px;} 
</style>
</head>
<body class="is-preload" style="background: #fff;">
	
	<%@ include file="header.jsp"%>
	
	<c:if test="${not empty param.code}">
		<script>
			alert("아이디 또는 비밀번호를 다시 확인해주세요.");
		</script>
	</c:if>  
	
	<!-- Main -->
	
	<form method="post" action="${pageContext.request.contextPath}/user/UserLoginOk.us" name="loginForm">
	<section style="display: flex; border: 1px solid darkgrey;">
		<div class="inner">
			<h2 style="margin-bottom: 15%;">WORKING BLOOD</h2>
			<div style="padding: 0 20%; text-align: center;">
					<input type="text" name="user_id" id="user_id" value="" placeholder="아이디" />
					<input type="password" name="user_pw" id="user_pw" value="" placeholder="비밀번호" onkeyup="enterkey()"/>
				<div>
				<input type="button" onclick="check()" class="button" style="width: 100%; background: black; border: none; color: white !important;"  value="로그인">
				</div>
				<hr>
			</div>
			<div style="display: flex; margin: 0 auto; font-size: 0.8em; padding-left: 23%;">
				<p class="p"><a href="${pageContext.request.contextPath}/find_id_pw.jsp">아이디/비밀번호찾기</a></p>
				<p style="padding-left:10px;"><a href="${pageContext.request.contextPath}/user/UserJoin.us">회원가입</a></p>
			</div>
		</div>
		<div class="inner">
			<img src="${pageContext.request.contextPath}/images2/ad3.jpg" alt="">
		</div>
	</section>
	</form>

	<%@ include file="footer.jsp"%>

	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/app/user/login.js"></script>
</body>
</html>