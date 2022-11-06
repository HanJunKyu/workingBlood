<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 글 | 일하는 혈액들</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/font-iropke-batang/1.2/font-iropke-batang.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png"/>
<noscript>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" />
</noscript>
<style>
.major{
	text-align : center;
}
.content {
	float: center;
	margin : auto;
	width : 95%;
	padding : 0 150px;
}
#tt{
	float: left;
	padding-bottom: 0;
	margin : 0 0 0 0;
	font-size : 22px;
}
#post{
	text-align : center;
}
#board{
	/* background-color:#de5b5b; */
	background-color:#b71c1c;
}
.number{
	width : 10%;
	color : #ffffff;
	padding: 0.5em 0.75em 0.5em 0.75em;
}
.title{
	width : 60%;
	text-align : left;
	color : #ffffff;
	padding: 0.5em 0.75em 0.5em 0.75em;
}
.applicant{
	width : 50%;
	color : #ffffff;
	padding: 0.5em 0.75em 0.5em 0.75em;
}
.view{
	width : 10%;
	color : #ffffff;
	padding: 0.5em 0.75em 0.5em 0.75em;
}
.cnt{
	width : 10%;
	color : #ffffff;
	padding: 0.5em 0.75em 0.5em 0.75em;
	text-align : center;
}
.date{
	width : 20%;
	text-align : left;
	color : #ffffff;
	padding: 0.5em 0.75em 0.5em 0.75em;
	text-align : center;
}
.pagination{
	text-align : center;
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
<body class="is-preload">
	<%-- 전달받은 객체들 --%>
	<c:set var="totalCnt_co" value="${totalCnt_co}"/>
	<c:set var="realEndPage_co" value="${realEndPage_co}"/>
	<c:set var="startPage_co" value="${startPage_co}"/>
	<c:set var="endPage_co" value="${endPage_co}"/>
	<c:set var="nowPage_co" value="${nowPage_co}"/>
	<c:set var="boardList_co" value="${boardList_co}"/>
	
	<c:if test="${session_id eq null}">
		<script>
			alert("로그인 후 이용하세요.");
            location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
		</script>
	</c:if>
	<%@ include file="header.jsp"%>
	<!-- Main -->
	<section id="main" class="wrapper">
	<header class="align-left">
		<div class="loacation_wrap">
			<nav class="location">
				<ul>
					<li class="homeList"><a href="${pageContext.request.contextPath}/user/Index.us"><img src="${pageContext.request.contextPath}/images/iconHome.png" style="width:1.5em;"></a></li>                   
					<li class="list"><a href="${pageContext.request.contextPath}/myPage/MyPage.my">&gt;&nbsp;&nbsp;마이 페이지</a></li>                     
					<li class="list"><a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my">&gt;&nbsp;&nbsp;내 글 보기</a></li>                     
				</ul>
			</nav>
		</div>  
	</header>
		<div class="inner">

			<header class="major">
				<h2>내가 쓴 글</h2>
			</header>

			<!-- Content -->
			<div class="content">
				<%-- 헌혈증 기부 신청 --%>
				<div class="table-wrapper">
				<h3 id="tt">헌혈증 기부 신청서</h3>
				<br>
				<table>
					<thead>
					<tr id="board">
						<th scope="col" class="number">NO.</th>
						<th scope="col" class="applicant">신청인</th>
						<th scope="col" class="cnt">매수</th>
						<th scope="col" class="date">날짜</th>
					</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${boardList_co != null and fn:length(boardList_co) > 0}">
						<c:forEach var="review_board" items="${boardList_co}">
						<tr>	
							<td>${review_board.getBoard_num()}</td>
							<td><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}">${review_board.getBoard_title()}</a></td>
							<td style="text-align: center;">${review_board.getReadCount()}</td>
							<td style="text-align: center;">${review_board.getBoard_date()}</td>
						</tr>
						</c:forEach>
						</c:when>
						<c:otherwise>
						<tr>
							<td colspan="6" style="height:200px; "><p id="post">작성한 게시글이 없습니다.</p></td>
						</tr>					
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
				</div>
				
				<ul class="pagination">
					<c:if test="${nowPage > 1}">
						<li><a class="button small" href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${nowPage-1}">이전</a></li>
					</c:if>
					
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<%-- 현재 페이지인 페이징번호는 색상처리 --%>
							<c:when test="${i eq nowPage}">	
								<li>
								<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${i}" class="page active">
								<c:out value="${i}"/>
								</a>
								</li>
							</c:when>
							<%-- 현재 페이지가 아닌 페이징번호 --%>
							<c:otherwise>
								<li>
								<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${i}" class="page">
								<c:out value="${i}"/>
								</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${nowPage != realEndPage}">
						<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${nowPage+1}" class="button small">다음</a>
					</c:if>
				</ul>
				<br>
				
				
				<%-- 헌혈증 요청신청 --%>
				<div>
				<h3 id="tt">헌혈증 요청 신청서</h3>
				<br>
				
				<table>
					<thead>
					<tr id="board">
						<th scope="col" class="number">NO.</th>
						<th scope="col" class="applicant">신청인</th>
						<th scope="col" class="cnt">매수</th>
						<th scope="col" class="date">날짜</th>
					</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${boardList_co != null and fn:length(boardList_co) > 0}">
						<c:forEach var="review_board" items="${boardList_co}">
						<tr>	
							<td>${review_board.getBoard_num()}</td>
							<td><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}">${review_board.getBoard_title()}</a></td>
							<td style="text-align: center;">${review_board.getReadCount()}</td>
							<td style="text-align: center;">${review_board.getBoard_date()}</td>
						</tr>
						</c:forEach>
						</c:when>
						<c:otherwise>
						<tr>
							<td colspan="6" style="height:200px; "><p id="post">작성한 게시글이 없습니다.</p></td>
						</tr>					
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
				</div>
				
				<ul class="pagination">
					<c:if test="${nowPage > 1}">
						<li><a class="button small" href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${nowPage-1}">이전</a></li>
					</c:if>
					
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<%-- 현재 페이지인 페이징번호는 색상처리 --%>
							<c:when test="${i eq nowPage}">	
								<li>
								<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${i}" class="page active">
								<c:out value="${i}"/>
								</a>
								</li>
							</c:when>
							<%-- 현재 페이지가 아닌 페이징번호 --%>
							<c:otherwise>
								<li>
								<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${i}" class="page">
								<c:out value="${i}"/>
								</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${nowPage != realEndPage}">
						<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${nowPage+1}" class="button small">다음</a>
					</c:if>
				</ul>
				<br>
				
				
				
				<%-- 감동후기 글 --%>
				<div>
				<h3 id="tt">감동후기</h3>
				<br>
				<table>
					<thead>
					<tr id="board">
						<th scope="col" class="number">NO.</th>
						<th scope="col" class="title">제목</th>
						<th scope="col" class="view" style="text-align: center;">조회수</th>
						<th scope="col" class="date">날짜</th>
					</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${boardList_co != null and fn:length(boardList_co) > 0}">
						<c:forEach var="review_board" items="${boardList_co}">
						<tr>	
							<td>${review_board.getBoard_num()}</td>
							<td><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}">${review_board.getBoard_title()}</a></td>
							<td style="text-align: center;">${review_board.getReadCount()}</td>
							<td style="text-align: center;">${review_board.getBoard_date()}</td>
						</tr>
						</c:forEach>
						</c:when>
						<c:otherwise>
						<tr>
							<td colspan="6" style="height:200px; "><p id="post">작성한 게시글이 없습니다.</p></td>
						</tr>					
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
				</div>
				
				<ul class="pagination">
					<c:if test="${nowPage_co > 1}">
						<li><a class="button small" href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${nowPage_co-1}">이전</a></li>
					</c:if>
					
					<c:forEach var="i" begin="${startPage_co}" end="${endPage_co}">
						<c:choose>
							<%-- 현재 페이지인 페이징번호는 색상처리 --%>
							<c:when test="${i eq nowPage_co}">	
								<li>
								<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${i}" class="page active">
								<c:out value="${i}"/>
								</a>
								</li>
							</c:when>
							<%-- 현재 페이지가 아닌 페이징번호 --%>
							<c:otherwise>
								<li>
								<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${i}" class="page">
								<c:out value="${i}"/>
								</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${nowPage_co != realEndPage_co}">
						<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${nowPage_co+1}" class="button small">다음</a>
					</c:if>
				</ul>
				<br>
				
				
				
				<%-- 고객의소리--%>
				<div>
				<h3 id="tt">고객의 소리</h3>
				<br>
				<table>
					<thead>
					<tr id="board">
						<th scope="col" class="number">NO.</th>
						<th scope="col" class="title">제목</th>
						<th scope="col" class="date">날짜</th>
					</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${boardList_co != null and fn:length(boardList_co) > 0}">
						<c:forEach var="review_board" items="${boardList_co}">
						<tr>	
							<td>${review_board.getBoard_num()}</td>
							<td><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}">${review_board.getBoard_title()}</a></td>
							<td style="text-align: center;">${review_board.getBoard_date()}</td>
						</tr>
						</c:forEach>
						</c:when>
						<c:otherwise>
						<tr>
							<td colspan="6" style="height:200px; "><p id="post">작성한 게시글이 없습니다.</p></td>
						</tr>					
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
				</div>
				
				<ul class="pagination">
					<c:if test="${nowPage > 1}">
						<li><a class="button small" href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${nowPage-1}">이전</a></li>
					</c:if>
					
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<%-- 현재 페이지인 페이징번호는 색상처리 --%>
							<c:when test="${i eq nowPage}">	
								<li>
								<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${i}" class="page active">
								<c:out value="${i}"/>
								</a>
								</li>
							</c:when>
							<%-- 현재 페이지가 아닌 페이징번호 --%>
							<c:otherwise>
								<li>
								<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${i}" class="page">
								<c:out value="${i}"/>
								</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${nowPage != realEndPage}">
						<a href="${pageContext.request.contextPath}/myPage/MyPageWriteListOk.my?page=${nowPage+1}" class="button small">다음</a>
					</c:if>
				</ul>
				<br>
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