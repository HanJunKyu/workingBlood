<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<title>고객의 소리 | 일하는 혈액들</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png"/>
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<style>
			table tbody tr:nth-child(2n + 1) {
			    background-color: #ffffff;
			}
			
			table {
			    margin: 0 0 2em 0;
			    width: 75%;
			}			
			
			
			ul.actions{
				justify-content: center;
				padding: 1em;				
			}
			
			h2:after{
				width: 0rem;
			}
			
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

		<%@ include file="header.jsp" %>
		
		<!-- <c:if test="${session_id eq null}">
         <script>
            alert("로그인 후 이용하세요.");
            location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
         </script>
      </c:if>-->
      
		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner" align="center">

					<header class="major">
						<div class="loacation_wrap">
			               <nav class="location">
			                  <ul>
			                     <li class="homeList"><a href="index.jsp"><img src="images/iconHome.png" style="width:1.5em;"></a></li>                           
			                     <li class="list"><a>&gt;&nbsp;&nbsp;일하는 혈액들 소개</a></li>                     
			                     <li class="list"><a href="bloodCenterFind.jsp">&gt;&nbsp;&nbsp;헌혈의 집 찾기</a></li>                     
			                  </ul>
			               </nav>
			            </div>
						<h2>고객의 소리</h2>
						<p>저희 사이트를 이용하시면서 불편하셨던 점들을 남겨주시면 적극 반영하겠습니다!</p>
					</header>
					<div class="col-6 col-12-medium">
							<ul class="actions stacked" style= "padding: 0 150px">
									<li><a href="#" class="button primary fit">글쓰기</a></li>
							</ul>
					</div>
					
					<form action="${pageContext.request.contextPath}/board/BoardWriteOk.bo" name="writeForm" method="post" enctype="multipart/form-data">
                	<table class = "table2" style= "padding: 0 150px">
                        <tr>
                        <td>작성자</td>
                        <td><input type = text name = name size=20 readonly > <c:out value="${session_id}"/> </td>
                        <td><input type="hidden" name="board_id" value="${session_id}"></td>
                        </tr>
 
                        <tr>
                        <td>제목</td>
                        <td><input>${board.getBoard_title()}</td>
                        </tr>
 
                        <tr>
                        <td>내용</td>
                        <td><textarea name = content cols=85 rows=15 ${board.getBoard_content()}></textarea></td>
                        </tr>
 
                        <tr>
                        <td>비밀번호</td>
                        <td><input type = password name = pw size=10 maxlength=10 placeholder="비밀번호 찾기는 어려우니 잘 기억해주세요!"></td>
                        </tr>
                  </table>
                  </form>
                        
                
				  <section>
						<div class="col-12">
							<ul class="actions">
								<li><input type="button" value="저장하기" class="primary" onclick="send()"/></li>
								<li><input type="button" value="취소하기" onclick="history.back()"/></li>
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