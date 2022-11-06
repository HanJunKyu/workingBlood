<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<style>
colgroup{
	background-color:white;
}
.type1 {
	float: center;
	margin : auto;
	width : 40%;
}
.major{
	text-align : center;
	margin-bottom: 1em;
}

#tt{
	float: left;
	padding-bottom: 0;
	margin : 0 0 0 0;
}
#caution{
	text-align : center;
	border-bottom: none;
	line-height: 03;
}
#aa{
	vertical-align: none;
}
h2{
	font-height : 0;
	padding-bottom: 0;
	margin : 0 0 0 0;
}
</style>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/font-iropke-batang/1.2/font-iropke-batang.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png"/>
<noscript>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css"/>
</noscript>
</head>
<body class="is-preload">
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

			<header class="major" style="margin-bottom: 1em;">
				<h2>회원 탈퇴</h2>
			</header>
			<div id = "caution">
				<p>본인 확인을 위해 비밀번호를 입력해주세요.</p>
			</div>
			<div>
				<form method="post" action="${pageContext.request.contextPath}/myPage/MyPageDeleteOk.my" name="deleteForm">
				<input type="hidden" name="user_id" id="user_id" value="${session_id}">
			<section id="aa">
				<table class="type1">
					<colgroup>
						<col style="width: 50px;">
						<col>
						<col>
						<col>
						<col>
					</colgroup>
					<tbody>
					<tr style="border: none;">
						<th style="padding: 0;"><img src="${pageContext.request.contextPath}/images/password.png"></th>
						<td style="vertical-align: middle;" colspan="3"><input type="password" name="user_pw" id="user_pw" value="" placeholder="비밀번호를 입력해주세요."/></td>
					</tr>
					</tbody>
				</table>
				<br>
				<div style="text-align: center;">
					<input type="button" value="확인" class="primary bac" onclick="formSubmit()"/>
				</div>
			</section>
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
var frm = document.deleteForm;

function formSubmit(){
	var pageContext = "${pageContext.request.contextPath}";
	
		var user_pw = $("#user_pw").val();
		var user_id = $("#user_id").val();
		
		if(user_pw == ""){
			alert("비밀번호를 입력해주세요.");
			return;
		};
			$.ajax({
				url: pageContext + "/myPage/MyPageCheckPwOk.my",
				type : 'post',
				data: {'user_id': user_id, 'user_pw': user_pw},
				dataType: "json",
				success:function(result){
					
					if(result.status == "ok"){
						alert("회원 탈퇴가 완료되었습니다.");
						frm.submit();
					}else{
						alert("비밀번호가 일치하지 않습니다.");
					}
				},
				error:function(){
					console.log("오류");
				}
			});
	
	};
</script>
</html>