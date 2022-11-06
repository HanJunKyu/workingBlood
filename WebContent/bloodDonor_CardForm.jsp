<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<title>헌혈증 요청 양식 | 일하는 혈액들</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="shortcut icon" type="image/x-icon" href="images/favicon2.png"/>
<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
<style>
body{
	padding-top: 3.5em;
	margin: 0px auto;
	width: 95%;
}

h1:after, h2:after, h3:after, h4:after, h5:after, h6:after {
	border-bottom: solid 1px;
	bottom: 0;
	content: '';
	display: inline-block;
	left: 0;
	position: absolute;
	width: 3rem;
		}

#title {
	font-size: 30px;
	padding-bottom: 0em;
	margin-bottom: 10px;
}

.contentSmall{
	margin-bottom: 1em;
	padding-bottom: 5px;
	border-bottom: solid 1px #b71c1c;
	width: 18%;	
}


/* 질별관리청 카테고리 연결 */
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


/* 질병관리청-오시는길 복붙 */
.location_map, .transport, .owncar {
	border-bottom: 1px solid #eaeef3;
	padding: 20px 0;
	margin: 0;
}

.transport>div, .owncar>div {
	margin-left: 0.55rem;
}

.img_left_cont::after {
	content: "";
	clear: both;
	display: table;
}

.img_left_cont>img {
	float: left;
	margin-right: 2rem;
	margin-bottom: 2rem;
	width: 100px;
	height: 100px;
}

.img_left_cont h2, .img_left_cont h3, .img_left_cont h4 {
	color: #e55;
	overflow: hidden;
	padding-top: 0.8em;
	padding-bottom: 0em;
	margin-bottom: 1em;
}

.img_left_cont>ul, .img_left_cont>p {
	overflow: hidden;
	padding-left: 1.2rem
}

ul {
	margin-left: 1.2rem;
}

/* 헌혈양식요청 */		
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

.row p{
	font-weight: bolder;
    font-size: large;
}
</style>
</head>
<body class="is-preload" style="margin:0 auto; width:95%;">
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

			<header class="align-center">
			
				<!-- 카테고리 연결 -->
				<div class="loacation_wrap">
					<nav class="location">
						<ul>
							<li><a href="${pageContext.request.contextPath}/Index.us"><img src="${pageContext.request.contextPath}/images/iconHome.png" style="width:1.5em;"></a></li>									
							<li><a>&gt;&nbsp;&nbsp;일하는 혈액들 소개</a></li>							
							<li><a href="${pageContext.request.contextPath}/bloodDonor_CardForm.jsp">&gt;&nbsp;&nbsp;헌혈증 기부 신청</a></li>							
						</ul>
					</nav>
				</div>	
			
				<h2 id="title">헌혈증 기부 신청서</h2>
				<p><strong>※헌혈증을 기부하시는 분들은 아래의 신청서를 작성해주시기 바랍니다.</strong></p>
			</header>

			<!-- Content -->
			<div class="content">
				<h2 class="contentSmall">주의사항</h2>
				<div class="transport">
					<div class="img_left_cont">
						<img src="${pageContext.request.contextPath}/images/iconAlert.png" alt="본인만가능 아이콘">
						<p>
							1. 헌혈증 기부는 회원 <span style="color:#b71c1c;font-weight:400;"><u>본인만</u></span> 가능합니다.<br>
							2. 사진에 헌혈증 전체가 나와야 하며  <span style="color:#b71c1c;font-weight:400;">특히, 바코드와 바코드 번호 부분이 흐릿해서는 안됩니다.</span><br>
							3. 사용불가능하거나 조작된 헌혈증이 적발 될 경우 회원 강퇴를 당할 수 있습니다.<br>
							4. 기타 궁금하신 사항은 고객센터에 문의 ☎<u>1588-5890</u>
						</p>
					</div>
				</div>
                  
                 <!-- 헌혈증 기부 양식(새로만듬) -->
                 <table>
						<thead style="border-bottom-color:#b71c1c;">
							<tr style="background-color:#b71c1c;">
								<th style="padding: 0.5em 0.75em 0.5em 0.75em;color: #fff;">신청서</th>
							</tr>
						</thead>
				</table>
                  <form method="post" action="${pageContext.request.contextPath}/dona/DonaTicketWriteOk.do" name="writeForm" enctype="multipart/form-data">
					<input type="hidden" name="user_id" value="${session_id}">
					<div class="row gtr-uniform">
					
						<div class="col-6 col-12-xsmall">
							<p>헌혈증 번호(증서 번호)</p>
							<input type="text" name="dona_ticket_num" id="dona_ticket_num" value="" placeholder="*숫자만 입력해주세요" />
						</div>
						<div class="col-6 col-12-xsmall">
							<p>헌혈증 사진</p>
							<input type="file" accept="image/gif,image/jpeg,image/png,image/jpg" name="board_file" id="board_file" required />
						</div>
						<%--<div class="col-12">
						<input type="button" id="insertFile" value="헌혈증 추가하기"/> 
						<hr>
						</div>--%>
						
						
						
						
						<div class="col-6 col-12-xsmall" style="display: none;" id="div1">
							<p>헌혈증 번호(증서 번호)</p>
							<input type="text" name="dona_ticket_num1" id="dona_ticket_num1" value="" placeholder="증서번호" />
						</div>
						<div class="col-6 col-12-xsmall" style="display: none;" id="div2">
							<p>헌혈증 사진</p>
							<input type="file" accept="image/gif,image/jpeg,image/png,image/jpg" name="board_file1" id="board_file1" required />
						</div>
						<div class="col-12" style="display: none;" id="div3">
						
						<hr>
						</div>
						<div class="col-6 col-12-xsmall" style="display: none;" id="div4">
							<p>헌혈증 번호(증서 번호)<span style="color:gray;">
							<input type="text" name="dona_ticket_num2" id="dona_ticket_num2" value="" placeholder="증서번호" />
						</div>
						<div class="col-6 col-12-xsmall" style="display: none;" id="div5">
							<p>헌혈증 사진</p>
							<input type="file" accept="image/gif,image/jpeg,image/png,image/jpg" name="board_file2" id="board_file2" required />
						</div>
						<div class="col-12" style="display: none;" id="div6">
						
						<hr>
						</div>
						<!-- ※자바스크립트 연산 for문 필요 -->
						<%-- <div class="col-6 col-12-xsmall" id="appendForm1" ></div>
						<div class="col-6 col-12-xsmall" id="appendForm2" ></div>
						<div class="col-12" id="appendForm3">
						<hr>		
						</div>--%>
						<div class="col-12">
							<hr>
							<ul class="actions">
								<li><input type="button" value="신청하기" class="button primary fit" onclick="formSubmit()"/></li>
							</ul>
						</div>
					</div>
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
	/* ※자바스크립트 연산 for문 필요 */
		var index = 1;
		$(document).ready(function() {
		

			$("#insertFile").click(function() {
				
				if(index == 1){
			$("#div1").css("display", "block");
			$("#div2").css("display", "block");
			$("#div3").css("display", "block");
				index++;
				}else if(index == 2){
					
			$("#div4").css("display", "block");
			$("#div5").css("display", "block");
			$("#div6").css("display", "block");
					
				}
				
			/*$("#appendForm1").append("<p>헌혈증 번호(증서 번호)</p><input type='text' name='dona_ticket_num' id='dona_ticket_num' value='' placeholder='증서번호' />");
		    $("#appendForm2").append("<p>헌혈증 사진</p><input type='file' accept='image/gif,image/jpeg,image/png,image/jpg' required />");
		    $("#appendForm3").append("<p></p>");
		 */  
		    
		  });
		});

		var frm = document.writeForm;
		function formSubmit(){
				if(!frm.dona_ticket_num.value){
					alert("헌혈증 증서 번호를 입력해주세요.");
					frm.dona_ticket_num.focus();
					return false;
				}
				if(frm.dona_ticket_num.length>10||frm.dona_ticket_num.length<10){
					alert("헌혈증 증서 번호 10자리를 확인해주세요.");//중복검사도 해야겠네
					frm.dona_ticket_num.focus();
					return false;
				}else{
					//공백을 포함할 수 없다.
					if(frm.dona_ticket_num.value.search(/\s/) != -1){
						alert("헌혈증 번호란에 공백 없이 입력해주세요.");
						frm.dona_ticket_num.focus();
						return false;
					}
					//영어 포함 x
					if(frm.dona_ticket_num.value.search(/[a-zA-Z]/) != -1){
						alert("헌혈증 번호란에 영어를 제외하고 입력해주세요.");
						frm.dona_ticket_num.focus();
						return false;
					}
					//한글 포함 x
					if(frm.dona_ticket_num.value.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/) != -1){
						alert("헌혈증 번호란에 한글을 제외하고 입력해주세요.");
						frm.dona_ticket_num.focus();
						return false;
					}
				}	
				
				if(!frm.board_file.value){
					alert("헌혈증 사진을 올려주세요.");
					frm.board_file.focus();
					return false;
				
				}
				frm.submit();
		}
	</script>
</html>