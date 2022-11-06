<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	width: 50%;
	background: #fff;
	max-height: 90%;
	margin: 177px auto 0px;
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

.inner {margin:0 auto; width: 80%; text-align: center;}

.button {height: 100%; line-height: 1.75em;}

img {width: 100%; height: 100%;}

input[type="text"] {height: 100%; margin: 10px auto; padding: 10px;}

.bac {background: #e55 !important; border-radius: 20px !important;}
table tr{border: none; padding: 0;}

table td{padding: 0;
    background: #fff;}

.p{border-right: 1px solid grey; padding: 0 10px;} 
</style>
</head>
<body class="is-preload" style="background: #fff;">
	<c:if test="${user_pw eq null}">
			<script>
				alert("해당 아이디가 존재하지 않습니다.\n다시 시도해주세요.");
				location.replace("${pageContext.request.contextPath}/user/Find_pw_phone.us");
			</script>
		</c:if>
	
	<%@ include file="header.jsp"%>
	<!-- Main -->
	<section >
		<div class="inner">
			<h2 style="margin-bottom: 20%;">인증이 완료되었습니다.</h2>
			<p style="font-size: 0.8em; text-align: center;"></p>
					<table>
						<tr style="height: 62px; border: none;">
							<td style="height: 100%; vertical-align: middle; border: 1px solid; font-size: 1.3em;">임시비밀번호 : ${user_pw}</td>
						</tr>
						<tr style="border: none" height="62px;">
							<td style="height: 100%; vertical-align: middle;"></td>
						</tr>
						<tr style="border: none;">
							<td colspan="2"><a href="${pageContext.request.contextPath}/user/UserLogin.us" class="button primary" style="height: 49px; line-height: 49px;">로그인하러 가기</a></td>							
						</tr>
					</table>
					
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
</body>
</html>