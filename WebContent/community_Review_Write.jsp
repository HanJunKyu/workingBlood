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
		<c:set var="board" value="${board}"/>
		<c:set var="files" value="${files}"/>
		
		<%@ include file="header.jsp" %>
		<%-- 
		<c:if test="${session_id eq null}">
			<script>
	            alert("로그인 후 이용하세요.");
	            location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
	         </script>
	  	</c:if>
	  	--%>
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
			                     <li class="list"><a href="">&gt;&nbsp;&nbsp;</a>감동 후기 글쓰기</li>                     
			                  </ul>
			               </nav>
			            </div>
					</header>
				<form action="${pageContext.request.contextPath}/community_Review_Board/Review_BoardWriteOk.co" name="writeForm" id="writeForm" method="post" enctype="multipart/form-data">
	                <div class="table-wrapper">
							<table style="margin-bottom: 0em;">
								<thead style="border-bottom-color:#b71c1c;">
									<tr style="background-color:#b71c1c;">
										<th>감동 후기 글쓰기</th>
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
			                        <td><input type = text name="board_title" id="board_title" size=60></td>
			                        </tr>
			 
			                        <tr>
			                        <td>내용</td>
			                        <td><textarea name="board_content" id="board_content" cols=85 rows=15 placeholder="양식에 맞게 내용을 작성해주세요"></textarea></td>
			                        </tr>
			                        
			                        <tr>
			                       	<td style="vertical-align: middle;">대표사진</td>
			                       	<td class="files" style="background-color: #fff;">
										<label for="board_file1" style="display:inline;">
											<img id="board_img_nameImg" src="${pageContext.request.contextPath}/images/iconPlus2.png" accept="image/*" width="100px" height="100px" style="display:block;margin-bottom: inherit;">
										</label>
										<input type="file" id="board_img_name" name="board_img_name" style="display:none;"/>
										<input type="hidden" name="target_url"/>
										<input type="hidden" name="target_url1" value="iconNoimg.png"/>
										<input type="button"  onclick="cancelFile('board_img_name')" value="삭제" class="button small" style="opacity: 0.25;">
										<p style="margin:0em; font-size:smaller; color:gray;">※ 감동후기 게시판의 대표사진으로 올라갈 사진입니다. 사진을 선택하지 않을 경우 기본 이미지로 올라갑니다.</p>
									</td>                       
			                       </tr>
			                        
			                        <tr>
			                       	<td style="vertical-align: middle;">첨부파일</td>
			                       	<td class="files" style="background-color: #fff;">
										<label for="board_file1" style="display:inline;">
											<img id="file1Img" src="${pageContext.request.contextPath}/images/iconPlus2.png" width="60px" height="60px" style="display:block;margin-bottom: inherit;">
										</label>
										<input type="file" id="file1" name="file1" style="display:none;"/>
										<input type="hidden" name="target_url2" />
										<input type="button"  onclick="cancelFile('file1')" value="삭제" class="button small" style="opacity: 0.25;">
									</td>                      
			                       </tr>
			              		</tbody>
		                  </table>
	                  </div>
                  </form>      
				  <section>
						<div class="col-12">
							<ul class="actions">
								<li><input type="submit" value="등록" class="primary" id="writeOk"/></li>
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
	   <script>
	  /* 
	 //제목이나 내용을 작성하지 않았을 경우 알림창 띄우기
		function send(){
			if(!$("input#board_title").val()){
				alert("제목을 작성해주세요.");
				return;
			}
			
			if(!$("textarea[name='board_content']").val()){
				alert("내용을 작성해주세요.");
				return;
			}
		}
	 */
	 	
		$('#writeOk').click(function(e){
			if(!$("input#board_title").val()){
				alert("제목을 작성해주세요.");
				return;
			}
			
			if(!$("textarea[name='board_content']").val()){
				alert("내용을 작성해주세요.");
				return;
			}
			
			location.href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardWriteOk.co"
			//글 등록이 완료되면 알림창 띄우기
			alert("글 등록이 완료되었습니다.")
			document.writeForm.submit();
			return true;
		});
 	
	 	/* 이미지 클릭시 파일 첨부 */
	 	$('#board_img_nameImg').click(function(e){
	 		document.writeForm.target_url.value= document.getElementById('board_img_nameImg').src;
	 		$('#board_img_name').click();
	 	});
	 	
	 	 
	 	/* 이미지 클릭시 파일 첨부 */
	 	$('#file1Img').click(function(e){
	 		document.writeForm.target_url2.value= document.getElementById('file1Img').src;
	 		$('#file1').click();
	 	});
	 	 
	 	
		/* 
	 	$('.files img').each(function (index, item){
	 		$(this).click(function(){
		 		$("input[name='target_url" + (index+1)"']").val(document.getElementById('board_file' + (index+1) + 'Img').src);
		 		$('#file' + (index + 1)).click();
	 		});
	 	});
		*/
	 	
	 	/* 첨부파일 이미지 변경 */
		$(".files").change(function(e){
			var file = e.target.files[0];
			var img = $(this).find("img");
			img.css("border","black solid 1px");
			
				 
			if(!file.type.match("image.*")){
				img.attr("src", "${pageContext.request.contextPath}/images/noImage.png");
			}else{
				var reader = new FileReader();
				reader.onload = function(e){
					img.attr("src", e.target.result)
				}
				reader.readAsDataURL(file);
			}
		})
		 
		//첨부 파일 삭제
		function cancelFile(fileTagName){
			$("input[name='" + fileTagName + "']").val("");	//파일 이름을 없앤다.
			$("img#" + fileTagName + "Img").attr("src", "${pageContext.request.contextPath}/images/iconPlus2.png");
			$("img#" + fileTagName + "Img").css("border","");
		}
	   </script>

	</body>
</html>