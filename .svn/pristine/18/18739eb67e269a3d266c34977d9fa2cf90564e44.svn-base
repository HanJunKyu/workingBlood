<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	height: 580px;
	width: 30%;
	background: #fff;
	max-height: 90%;
	margin: 41px auto 28px;
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

.inner {margin:0 auto; width: 80%;}

.button {height: 100%; line-height: 1.75em;}

img {width: 100%; height: 100%;}

input[type="text"] {height: 100%; margin: 10px auto; padding: 10px;}

.bac {background: #e55 !important; border-radius: 20px !important;}
table tr{border: none; padding: 0;}

table td{padding: 0; width:100%;
    background: #fff;}

.p{border-right: 1px solid grey; padding: 0 10px;} 
</style>
</head>
<body class="is-preload" style="background: #fff;">
		

	<%@ include file="header.jsp"%>
	<!-- Main -->
	<section style="border: 1px solid darkgrey;">
		<div class="inner">
			<h2 style="margin-bottom: 20%;">아이디 찾기</h2>
			<p style="font-size: 0.8em; text-align: center;">가입 당시 입력한 휴대폰 번호로 아이디를 발송합니다.</p>
				<form method="post" action="${pageContext.request.contextPath}/user/FindIdPhoneSuccess.us" name="findForm">
					<table>
						<tr style="border: none;">
							<td colspan="2"><input type="text" name="user_name" id="user_name" value="" placeholder="성함" /></td>							
						</tr>
						<tr style="border: none;">
							<td><input type="text" name="user_phonenum" id="user_phonenum" value="" placeholder="휴대폰 번호(-없이 입력)" /></td>
							<td><input type="button" value="인증번호 발송" style="height: 44px;" onclick="sendSMS()"></td>
						</tr>
						<tr style="border: none;">
							<td><input type="text" name="user_phonenum_check" id="user_phonenum_check" value="" placeholder="인증번호" /></td>
							<td><input type="button" value="인증번호 확인" id="smsCheck" style="height: 44px;"/></td>
						</tr>
						<tr style="border: none; height: 44px;">
							<td colspan="2" style="text-align: center; height: 44px; padding-top: 10px;"><input type="button" class="button primary" style="line-height: 41px;" value="확인" onclick="formSubmit()"></td>
						</tr>
					</table>
				</form>
				<hr>
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
	<script>var contextPath = "${pageContext.request.contextPath}";</script>
	<script src="${pageContext.request.contextPath}/app/user/find_id_phone.js"></script>
</body>
</html>