<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<title>Working Blood</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main2.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/font-iropke-batang/1.2/font-iropke-batang.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png" />
<noscript>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">
	
   <!-- Header -->
   <%@ include file="main_header.jsp"%>
   <c:if test="${param.code == 1}">
		<script>
			alert("로그아웃 되었습니다. 감사합니다.");
		</script>
	</c:if>  
   <c:if test="${param.code == 2}">
		<script>
			alert("회원 탈퇴가 완료되었습니다.\n좀 더 나은 일하는 혈액들로 발전하겠습니다.");
		</script>
	</c:if>  
   <!-- Banner -->
   <section id="banner">
      <article>
         <img src="${pageContext.request.contextPath}/images/33.jpg" alt="" />
         <div class="inner">
            <h2>
               <a href="#"><br>
               <br>
               <br>
               <br>
               <br>
               <br>오늘 여러분의 헌혈이 소중한 생명을 살립니다.</a>
            </h2>
         </div>
      </article>
      <article>
         <img src="${pageContext.request.contextPath}/images/2.png" alt="" />
         <div class="inner">
            <h2>
               <a href="#">
               <br>
               <br>
               <br>
               생명을 구하는 실천, 헌혈은 생명입니다.</a>
            </h2>
         </div>
      </article>
      <article>
         <img src="${pageContext.request.contextPath}/images/3.png" alt="" />
         <div class="inner">
            <h2>
               <a href="#"></a>
            </h2>
         </div>
      </article>
   </section>

   <%@ include file="index_sub.jsp"%>

   <%@ include file="main_footer.jsp"%>

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