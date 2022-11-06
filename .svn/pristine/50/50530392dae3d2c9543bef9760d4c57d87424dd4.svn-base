<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Working Blood</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Caramel&display=swap" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png" />
<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
<style>
input[type="radio"]:checked + label:before {display: none;}
input[type="checkbox"] + label:before, input[type="radio"] + label:before {display: none;}
.tab_content{margin: 10px auto;}
input[type="radio"]{display: none !important;}
input[type="radio"] + label {display: inline-block; padding: 20px; background: #fff; color: #000; font-size: 14px; cursor:pointer; font-size: 1.2em;}
input[type="radio"]:checked + label {background: #fff; color: red; border-bottom: 3px solid red;}
.conbox{width:500px; height: 600px; background: #fff; margin:0 auto; display: none;}
input[id="tab01"]:checked ~ .con1{display: inline;}
input[id="tab02"]:checked ~ .con2{display: inline;}
.d{margin: 50px auto; background: #fff;}
.d h3{margin-bottom: 5px;}
.d p{color: darkgrey;}
</style>
</head>
<body class="is-preload" style="background: #fff;">
	<%@ include file="header.jsp"%>
	<form>
	<section id="sec">
	<div style="display: flex; background: #fff; margin:42px auto 0px;; width: 30%; height: 100%; border: 1px solid darkgrey; border-radius: 50px;">
	<div class="tab_content" style="background: #fff; text-align: center;">
		<input type="radio" id="tab01" name="tabmenu" checked>
		<label for="tab01">아이디 찾기</label>
		<input type="radio" id="tab02" name="tabmenu">
		<label for="tab02">비밀번호 찾기</label>
		
		<div class="conbox con1" style="text-align: center;">
		
			<div class="d">
				<div><img src="images2/phone.png"></div>
				<h3>등록된 휴대폰 번호로 찾기</h3>
				<p>가입 당시 입력한 휴대폰 번호로 아이디를 발송합니다.</p>
				<a href="${pageContext.request.contextPath}/user/Find_id_phone.us" class="button primary">확인</a>
			</div>
			
			<hr>
	
			<div class="d">
				<div><img src="images2/email.png"></div>
				<h3>등록된 이메일로 찾기</h3>
				<p>가입 당시 입력한 이메일 주소로 아이디를 발송합니다.</p>
				<a href="${pageContext.request.contextPath}/user/Find_id_email.us" class="button primary">확인</a>
			</div>

		</div>
		<div class="conbox con2" style="text-align: center;">

			<div class="d">
				<div><img src="images2/phone.png"></div>
				<h3>등록된 휴대폰 번호로 찾기</h3>
				<p>가입 당시 입력한 휴대폰 번호로 인증번호를 발송합니다.</p>
				<a href="${pageContext.request.contextPath}/user/Find_pw_phone.us" class="button primary">확인</a>
			</div>
			
			<hr>
	
			<div class="d">
				<div><img src="images2/email.png"></div>
				<h3>등록된 이메일로 찾기</h3>
				<p>가입 당시 입력한 이메일 주소로 임시 비밀번호를 발송합니다.</p>
				<a href="${pageContext.request.contextPath}/user/Find_pw_email.us" class="button primary">확인</a>
			</div>
			
		</div>
	</div>
	</div>
	</section>	
	</form>
	<%@ include file="footer.jsp"%>
</body>
</html>