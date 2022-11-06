<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>고객의 소리 | 일하는 혈액들</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="images/favicon2.png"/>
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
	</head>
	<style>
	#title {
		font-size: 30px;
		padding-bottom: 0em;
		margin-bottom: 10px;
	}
	
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
	.table-wrapper th{
		padding: 0.5em 0.75em 0.5em 0.75em;
	    color: #fff;
	}
	h2:after{
		width: 0rem;
	}
	textarea{
		resize: none;
	}
	
	table tbody tr:nth-child(2n + 1) {
	    background-color: #ffffff;
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
	<body class="is-preload" style="margin:0 auto; width:95%;padding: 100px;">
	
		<%@ include file="header.jsp"%>
		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner" align="center">

					<header class="major">
						<div class="loacation_wrap">
			               <nav class="location">
			                  <ul>
			                     <li class="homeList"><a href="index.jsp"><img src="images/iconHome.png" style="width:1.5em;"></a></li>                           
			                     <li class="list"><a>&gt;&nbsp;&nbsp;일하는 혈액들 소개</a></li>                     
			                     <li class="list"><a href="community_Customer_Write.jsp">&gt;&nbsp;&nbsp;고객의 소리</a></li>                     
			                  </ul>
			               </nav>
			            </div>
						<h2 id="title">고객의 소리</h2>
						<p>저희 사이트를 이용하시면서 불편하셨던 점들을 남겨주시면 적극 반영하겠습니다!</p>
					</header>
					
					<form action="${pageContext.request.contextPath}/community_Customer_Board/Customer_BoardWriteOk.co" name="writeForm" method="post">
					<div class="table-wrapper">
						<table style="margin-bottom: 0em;">
							<thead style="border-bottom-color:#b71c1c;">
								<tr style="background-color:#b71c1c;">
									<th>고객의 소리 글쓰기</th>
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
		                        <td><input type ="text" name = "board_title" size="60"></td>
		                        </tr>
		 
		                        <tr>
		                        <td>내용</td>
		                        <td><textarea name ="board_content" cols="85" rows="15" placeholder="어떤점이 불편하셨나요? 내용을 작성해주시면 관리자가 댓글을 통해 피드백드리겠습니다."></textarea></td>
		                        </tr>
		                        		                        
		              		</tbody>
	                  </table>
                  </div>
                                       
				  <section>
						<div class="col-12">
							<ul class="actions">
								<li><input type="button" value="등록" class="primary" onclick="send()"/></li>
							</ul>
						</div>
				  </section>	

	</form>
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
	
	<script>		
	var frm = document.writeForm;
			function send(){
				
				if(!frm.board_title.value){
					alert("제목을 작성해주세요.");
					frm.board_title.focus();
					return false;
				}

				if(!frm.board_content.value){
					alert("내용을 작성해주세요.");
					frm.board_content.focus();
					return false;
				}
					
				frm.submit();
				}
	</script>
</html>