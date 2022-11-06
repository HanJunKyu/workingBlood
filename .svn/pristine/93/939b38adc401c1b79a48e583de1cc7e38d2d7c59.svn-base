<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<title>감동 후기 | 일하는 혈액들</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png"/>
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
	<style>
	table {
	    margin: 0 0 2em 0;
	    width: 90%;
	}			
	
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
	
	.table-wrapper th{
		padding: 0.5em 0.75em 0.5em 0.75em;
	    color: #fff;
	}
	
	textarea{
		resize: none;
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
	<body class="is-preload" style="margin: 0 auto; width: 95%;">
		<%-- 컨트롤러에서 받아온 객체 --%>
		<c:set var="board" value="${board}"/>
		<c:set var="files" value="${files}"/>
		
		<%@ include file="header.jsp" %>
		<!--  
		<c:if test="${session_id eq null}">
			<script>
	            alert("로그인 후 이용하세요.");
	            location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
	         </script>	         
	  	</c:if>
	  	-->
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
			                     <li class="list"><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardWrite.co">&gt;&nbsp;&nbsp;</a>감동 후기 글</li>                     
			                  </ul>
			               </nav>
			            </div>
					</header>
				<form action="${pageContext.request.contextPath}/community_Customer_Board/Customer_BoardWriteOk.co" name="writeForm" method="post">
	                <div class="table-wrapper">
							<table style="margin-bottom: 0em;">
								<thead style="border-bottom-color:#b71c1c;">
									<tr style="background-color:#b71c1c;">
										<th>고객의 소리 글</th>
									</tr>
								</thead>
							</table>
		                	<table>
								<tbody>
			                        <tr>
			                        <td>작성자</td>
			                        <td><c:out value="${session_id}"/><input type="hidden" name="board_id" value="${session_id}"></td>
			                        </tr>
			                        
			                        <tr>
			                        <td>제목</td>
			                        <td><input type="hidden" name="board_title">${board.getBoard_title()}</td>
			                        </tr>
			                        
			                        <tr>
			                        <td>내용</td>
			                        <td><textarea name="board_content" id="board_content" cols=85 rows=15 style="border:none; margin:0px 0 0 -5em;" readonly>${board.getBoard_content()}
			                        </textarea></td>
			                        </tr>
			                        			                       			                        
			              		</tbody>
		                  </table>
	                  </div>
                  </form>      
				  <section>
						<div class="col-12">
							<ul class="actions">
								<li><input type="submit" value="수정" class="button" onclick="location.href='${pageContext.request.contextPath}/community_Customer_Board/Customer_BoardModify.co?board_num=${board.getBoard_num()}'"/></li>
								<li><input type="submit" value="삭제" class="primary" onclick="location.href='${pageContext.request.contextPath}/community_Customer_Board/Customer_BoardDeleteOk.co'"/></li>								
							</ul>
						</div>	
				  </section>	


			     </div>
					<!-- Content -->
					<!-- Sidebar -->
						
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