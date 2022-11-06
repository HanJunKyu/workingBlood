<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<style>
h2, p {
	text-align: center;
}

h2:after {
	width: 0rem;
}

header.major h2 {
	font-size: 1.25em;
	font-weight: 800;
	margin: 0 0 0.7em 0;
	padding-bottom: 0.75em;
}

.table-wrapper {
	font-family: 'MaruBuri-Regular';
	border-radius: 2em;
	border: 5px solid #444;
}

section {
	border-radius: 50px;
	border: 1px solid darkgrey;
}

.col {
	margin: 0 auto;
	padding: 5%;
	border: 5px solid darkblue;
	border-radius: 22px;
	font-size: 1.2em;
	width: 28%;
	background: #fff;
}
</style>
<title>FAQ | 일하는 혈액들</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png" />
<noscript>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" />
</noscript>
</head>

<body class="table-wrapper" style="border: none;">
<c:if test="${session_id eq null}">
		<script>
            alert("로그인 후 이용하세요.");
            location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
		</script>
	</c:if>
	<c:if test="${param.code == 1}">
		<script>
			alert("회원 정보가 수정되었습니다. 감사합니다.");
		</script>
	</c:if>  
	<!--style="background-color: cornsilk;"  -->
	<%@ include file="header.jsp"%>
	<!-- main -->
	<section>
		<div class="table-wrapper" id="table" style="margin: 59px auto; width: 948px; height: 600px; padding: 0 30px; background: ghostwhite;">
			<header class="major">
				<h2 style="margin-top: 52px;">MYPAGE</h2>
				<p>원하시는 항목을 눌러주세요!</p>
			</header>
			<div style="display: flex; text-align: center; height: 250px;">

				<div class="col">
					<div>
						<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my">
							<img src="${pageContext.request.contextPath}/images2/write.png" style="width: 64%;"></a>
						<div style="margin-top: 11px;">
							<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my">내가 쓴 글</a>
						</div>
					</div>
				</div>

				<div class="col">
					<div>
						<a href="${pageContext.request.contextPath}/myPage/MyPageEditProfileCheck.my">
							<img src="${pageContext.request.contextPath}/images2/repair.png" style="width: 70%;"></a>
						<div>
							<a href="${pageContext.request.contextPath}/myPage/MyPageEditProfileCheck.my">내정보수정</a>
						</div>
					</div>
				</div>

				<div class="col">
					<div>
						<a href="${pageContext.request.contextPath}/myPage/MyPageDelete.my">
						<img src="${pageContext.request.contextPath}/images2/delete.png" style="width: 70%;"></a>
						<div>
							<a href="${pageContext.request.contextPath}/myPage/MyPageDelete.my">회원탈퇴</a>
						</div>
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
<script type="text/javascript">
	var bDisplay=true;
	function doDisplay(){
		var con = document.getElement("underPage");
		if(con.style.diplay=='none'){
			con.style.diplay = 'block';
		}else{
			con.style.diplay = 'none'
		}
	}
</script>
</html>