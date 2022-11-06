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
	<body class="is-preload" style="margin: 0 auto; width: 95%; padding: 100px;">
		<%-- 컨트롤러에서 받아온 객체 --%>
		<c:set var="board" value="${board}"/>
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
			                     <li class="list"><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co">&gt;&nbsp;&nbsp;</a>감동 후기 글</li>                     
			                  </ul>
			               </nav>
			            </div>
					</header>
				<form action="${pageContext.request.contextPath}/community_Review_Board/Review_BoardWriteOk.co" name="writeForm" method="post" enctype="multipart/form-data">
	                <div class="table-wrapper">
							<table style="margin-bottom: 0em;">
								<thead style="border-bottom-color:#b71c1c;">
									<tr style="background-color:#b71c1c;">
										<th>감동 후기 글</th>
									</tr>
								</thead>
							</table>
		                	<table>
								<tbody>
			                        <tr>
			                        <td>작성자</td>
			                        <td>${board.getBoard_id()}<input type="hidden" name="board_id" value="${session_id}"></td>
			                        </tr>
			                        
			                        <tr>
			                        <td>제목</td>
			                        <td>${board.getBoard_title()}<input type="hidden" name="board_title"></td>
			                        </tr>
			                        
			                        <tr>
			                        <td></td>
			                        <td><textarea name="board_content" id="board_content" cols=85 rows=15 style="border:none; display:flex; justify-content:center;" readonly>${board.getBoard_content()}
			                        </textarea></td>
			                        </tr>
			                     
				                        <tr>
				                       	<td style="vertical-align: top;">대표사진</td>
				                       	<td class="files">
											<label for="board_file1" style="display:inline;">
			                        	<c:choose>
											<%-- 대표사진을 설정하지 않았을경우 --%>
											<c:when test="${board.getBoard_img_name() eq 'iconNoimg.png'}"><span>대표사진이 존재하지 않습니다.</span></c:when>
											<%-- 대표사진을 설정했을 경우 --%>
											<c:otherwise>
											<img id="board_file1Img" src="${pageContext.request.contextPath}/upload/${board.getBoard_img_name()}" width="300px" height="300px" style="display:block;margin-bottom: inherit;">					                       	
											</c:otherwise>
			                       		</c:choose>
											</label>
										</td>                       
				                       </tr>
        
				                        <tr>
				                       	<td style="vertical-align: top;">첨부파일</td>
				                       	<c:forEach var="file" items="${files}">
					                       	<c:choose>
					                       		<%-- FILE테이블에 있는 '파일이름' 중  REVIEW_BOARD테이블에 있는'대표사진 파일이름'과 중복됐을 경우, 해당 대표사진파일은 첨부파일에 띄우지 않는다. --%>
					                       		<c:when test="${file.getFile_name() eq board.getBoard_img_name()}">
												</c:when>
												<c:otherwise>    
						                       	<td class="files">
						                       		<a href="${pageContext.request.contextPath}/community_Review_Board/Review_FileDownload.co?file_name=${file.getFile_name()}"><c:out value="${file.getFile_name_original()}"/></a>
												</td>
												</c:otherwise>
											</c:choose>                  
										</c:forEach>
				                       </tr>
			              		</tbody>
		                  </table>
	                  </div>
                  </form>
                  <c:choose> 
                  <c:when test="${board.getBoard_id() eq session_id}">     
					  <section>
							<div class="col-12">
								<ul class="actions">
									<li><input type="submit" value="수정" class="button" onclick="location.href='${pageContext.request.contextPath}/community_Review_Board/Review_BoardModify.co?board_num=${board.getBoard_num()}'"/></li>
									<li><input type="button" value="삭제" class="primary" id="deleteOk"/></li>
								</ul>
							</div>	
					  </section>
				  </c:when>
				  <c:otherwise>
				  		<section>
							<div class="col-12">
								<ul class="actions">
									<li><input type="submit" value="목록" class="button" onclick="location.href='${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co'"/></li>
								</ul>
							</div>	
					  </section>
				  </c:otherwise>
				  </c:choose>

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
	   <script>
	   //'삭제'버튼 눌렀을때 확인창
	   $('#deleteOk').click(function(e){
		   if(!confirm("삭제된 글은 복구가 불가능 합니다. 글을 삭제하시겠습니까?")){
			   return false;
		   }else{
			   location.href='${pageContext.request.contextPath}/community_Review_Board/Review_BoardDeleteOk.co?board_num=${board.getBoard_num()}'
			   alert("글이 정상적으로 삭제되었습니다.");
			   return true;
			   document.writeForm.submit();
		   }
	   });
	   
	   /* 이미지 클릭시 파일 첨부 */
	 	$('#board_img_nameImg').click(function(e){
	 		document.writeForm.target_url.value= document.getElementById('board_img_nameImg').src;
	 		$('#board_img_name').click();
	 	});
	   
	   </script>
	</body>
</html>








