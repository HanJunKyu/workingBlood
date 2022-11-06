<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<title>감동후기 게시판 | 일하는 혈액들</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png"/>
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
<style>
#title {
	font-size: 30px;
	padding-bottom: 0em;
	margin-bottom: 10px;
}
table tbody tr:nth-child(2n + 1) {
    background-color: #ffffff;
}

ul.pagination{
	justify-content: space-evenly;			
}

ul.actions{
	justify-content: space-evenly
	
}

ul.actions.small{
	justify-content: flex-end
	
}

h2:after{
	width: 0rem;
}

.actions .small{
	align:right;
}

/* 카테고리 연결 */
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
</style>
	</head>
	<body class="is-preload" style="margin: 0 auto; width: 95%; padding: 100px;">
		<%-- 전달받은 객체들 --%>
		<c:set var="totalCnt" value="${totalCnt}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="nowPage" value="${nowPage}"/>
		<c:set var="boardList" value="${boardList}"/>
		<c:set var="files" value="${files}"/>
		<%@ include file="header.jsp" %>
		
		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner" align="center">

					<header class="major">
						<div class="loacation_wrap">
			               <nav class="location">
			                  <ul>
			                     <li class="homeList"><a href="${pageContext.request.contextPath}/user/Index.us"><img src="${pageContext.request.contextPath}/images/iconHome.png" style="width:1.5em;"></a></li>                           
			                     <li class="list"><a>&gt;&nbsp;&nbsp;커뮤니티</a></li>                     
			                     <li class="list"><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co">&gt;&nbsp;&nbsp;감동후기 게시판</a></li>                     
			                  </ul>
			               </nav>
			            </div>
						<h2 id="title">감동후기 게시판</h2>
						<p>아래의 후기들은 기부자 분들이 직접 작성한 후기 입니다. 후기 작성을 통해 다양한 경험을 나누어보아요!</p>
					</header>
					<form method="post" action="#">
						<span style="display: flex; float: left;">총 ${totalCnt} 개의 감동후기가 있습니다.</span>
						<ul class="actions small" style="margin-bottom:-1em;">
							<li><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardWrite.co" class="button primary small">글쓰기</a></li>										
						</ul>
					</form>
					<div class="posts">
						<c:choose>
							<c:when test="${boardList != null and fn:length(boardList) > 0}">
								<c:forEach var="review_board" items="${boardList}">
								<section class="post">
									<div class="content">
			          				<c:choose>
				          				<c:when test="${review_board.getBoard_img_name() != null}">
											<%-- 사용자가 첨부한 사진으로 변경하기 --%>
											<span class="image"><img src="${pageContext.request.contextPath}/upload/${review_board.getBoard_img_name()}" alt="" onclick="location.href='${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}'" style="border: 1px solid black; object-fit: cover;"/></span>			          				
										</c:when>	
										<c:otherwise>
											<span class="image"><img src="${pageContext.request.contextPath}/images/iconShare.png" alt="" onclick="location.href='${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}'" style="border: 1px solid black;padding: 5em;"/></span>
										</c:otherwise>	
									</c:choose>	
										<h3 style="margin-bottom: -5px;"><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}">${review_board.getBoard_title()}</a>
										<br><span>${review_board.getBoard_id()} 님</span></h3>
										<a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}">
										<%-- 글내용이 56 자 이상일 경우 자르기 --%>
										<c:choose>
											<c:when test="${fn:length(review_board.getBoard_content()) > 56 }">
												<c:out value="${fn:substring(review_board.getBoard_content(), 0, 55)}" /><span>&hellip;</span>
											</c:when>
											<c:otherwise>
												${review_board.getBoard_content()}											
											</c:otherwise>
										</c:choose> 
										</a>
										<ul class="actions">
											<li><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}" class="button small" style="margin-top: 2em;">More</a></li>
										</ul>
										<p>${review_board.getBoard_date()}<span style="padding-left: 2em;">조회수 ${review_board.getReadCount()}</span></p>
									</div>
								</section>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<section class="post">
									<div class="content">
										<span class="image"><img src="${pageContext.request.contextPath}/images/pic03.jpg" alt="" /></span>
										<h3>등록된 게시글이 없습니다.</h3>
										<p>글쓰기 버튼을 눌러 감동 후기를 남겨주세요!</p>
										<ul class="actions">
											<li><a href="#" class="button small">More</a></li>
										</ul>
										<p>게시일<span style="padding-left: 5em;">조회수</span></p>
									</div>
								</section>
							</c:otherwise>
						</c:choose>
					</div>	
							
					<ul class="pagination">
							<c:if test="${nowPage > 1}">
								<li><a class="button small" href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co?page=${nowPage-1}">이전</a></li>
							</c:if>
							
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
								<c:choose>
									<%-- 현재 페이지인 페이징번호는 색상처리 --%>
									<c:when test="${i eq nowPage}">	
										<li>
										<a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co?page=${i}" class="page active">
										<c:out value="${i}"/>
										</a>
										</li>
									</c:when>
									<%-- 현재 페이지가 아닌 페이징번호 --%>
									<c:otherwise>
										<li>
										<a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co?page=${i}" class="page">
										<c:out value="${i}"/>
										</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${nowPage != realEndPage}">
								<a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co?page=${nowPage+1}" class="button small">다음</a>
							</c:if>
						
					</ul>
					<form method="post" action="#">
					<div style="display: flex;">
						<ul class="actions small" style="margin: 0 auto;float:right;">			
							<li style="margin: 0 auto; display: flex;"><input type="text" name="search" value="" style="width:300px; height:32.26px;margin-right:1%;float:left;" /><a href="#" class="button primary small">검색</a></li>
						</ul>
					</div>
					</form>
					<!-- Content -->
					<!-- Sidebar -->						
				</div>
			</section>


		<%@ include file="footer.jsp" %>

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