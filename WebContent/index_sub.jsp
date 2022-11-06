<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets2/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets1/css/main.css" />
</head>
<style>
   #h{font-size: 2em; color: #444; margin: 0 0 1.5em 0;}
   #sh{color:#444;}
   li a p{margin-top: 1em;}
   .label img {width:200px;}
   li a {text-decoration: none; color:#444;}
   .image {position:relative;}
   .image .text {position: absolute; top: 23px; left: 21px; font-weight: bold;}
   .text a{color: #fff;}
   article{margin-bottom: 0;}
   .row > .col-3 {width: 25%; margin: 0 auto;}
</style>
<body>
<c:set var="boardList" value="${boardList}"/>
<!-- Main -->
            <section style="margin-bottom: 0;">
            <div class="col-3 col-12-medium" style="position: sticky; top:0; float: right; margin-right: 70px;">
                                          <h4 style="font-size: 1em; text-align: center; height: 57px; background: #e55; margin-bottom: 0; padding-top: 1px; padding-top: 20px; color: white; width: 137%;">헌혈증 보유량</h4>
                                       <div class="sidebar" style="background: #fff; text-align: center; border: 1px solid #e7eae8; width: 137%; padding:0;" >
                                          <!-- Archives -->
                                                 <article class="bloodDiv">
                                                   
                                                   <article class="box post-summary image">
                                                      <img src="${pageContext.request.contextPath}/images/blood-donation.png"><div class="text" style="left: 26px; top: 20px;"><a href="#">A</a></div></h3>
                                                      <ul class="meta">
                                                         <li class="icon fa-comments"><a href="#" style="color:#444;">27</a></li>
                                                      </ul>
                                                   </article>
                                                   
                                                   <article class="box post-summary image">
                                                      <img src="${pageContext.request.contextPath}/images/blood-donation.png"><div class="text" style="left: 26px; top: 20px;"><a href="#">B</a></div></h3>
                                                      
                                                      <ul class="meta">
                                                         <li class="icon fa-comments"><a href="#" style="color:#444;">184</a></li>
                                                      </ul>
                                                   </article>
                                                    </article>
                                                   <article>
                                                   <article class="box post-summary image">
                                                      <img src="${pageContext.request.contextPath}/images/blood-donation.png"><div class="text"><a href="#">AB</a></div></h3>
                                                      <ul class="meta">
                                                         <li class="icon fa-comments"><a href="#" style="color:#444;">286</a></li>
                                                      </ul>
                                                   </article>
                                                   <article class="box post-summary image">
                                                      <img src="${pageContext.request.contextPath}/images/blood-donation.png"><div class="text" style="left: 26px; top: 20px;"><a href="#">O</a></div></h3>
                                                      <ul class="meta">
                                                         <li class="icon fa-comments"><a href="#" style="color:#444;">8,086</a></li>
                                                      </ul>
                                                   </article>
                                                   </article>
                                                   <article>
                                                      
                                                      <a href="#" class="button" style="width: 100%;">TOP</a>
                                                   </article>

                                       </div>
                                    </div>
            <section id="main" style="padding-bottom: 0; margin-bottom: 8%;">
               <div class="container">
                  <div class="row gtr-200">
                     <div class="col-12">

                        <!-- Highlight -->
                           <section class="box highlight">
                              <header>
                                 <h2 id="h">주요 서비스</h2>
                              </header>
                              <ul class="special">

                                 <li><a href="${pageContext.request.contextPath}/what_is_WorkingBlood.jsp"><span class="label"><img src="${pageContext.request.contextPath}/images/ic9.png"></span><br><p>사이트 소개</p></a></li>
                                 <li><a href="${pageContext.request.contextPath}/bloodDonor_CardForm.jsp"><span class="label"><img src="${pageContext.request.contextPath}/images2/ic1.png"></span><p>헌혈증 기부</p></a></li>
                                 <li><a href="${pageContext.request.contextPath}/bloodDonor_RequestCardForm.jsp"><span class="label"><img src="${pageContext.request.contextPath}/images2/ic3.png"></span><p>헌혈증 요청</p></a></li>
                                 <li><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co"><span class="label"><img src="${pageContext.request.contextPath}/images2/ic2.png"></span><p>감동후기</p></a></li>
                              </ul>
                           </section>

            <section id="main">
               <div class="container">
                  <div class="row gtr-200">
                     <div class="col-12">
                     
                     <div class="col-12">

                        <!-- Features -->
                           <section class="box features">
                              <h2 class="major"><span id="sh">생생한 감동후기!</span></h2>
                              <div>
                                 <div class="row d">
                                  <%--   <c:choose>
                                       <c:when test="${boardList != null and fn:length(boardList) > 0}">
                                       <c:forEach var="review_board" items="${boardList}"> 
                                          <div class="col-3 col-6-medium col-12-small">
                                             <!-- Feature -->
                                                <section class="box feature">
                                                
                                                   <a href="#" class="image featured"><img src="${pageContext.request.contextPath}/images2/pic01.jpg" alt="" /></a>
                                                   <h3><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}">${review_board.getBoard_title()}</a></h3>
                                                   <p>
                                                      <a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}">${review_board.getBoard_content()}</a>
                                                   </p> 
                                                </section>
                                          </div>
                                         </c:forEach>
                                          </c:when>
                                          <c:otherwise>
                                             <div class="col-3 col-6-medium col-12-small" style="width: 100%; margin-bottom: 139px;">
                                             <!-- Feature -->
                                                <section class="box feature">
                                                   <a href="#" class="image featured" style="display: none"><img src="${pageContext.request.contextPath}/images2/pic01.jpg" alt="" /></a>
                                                   <h3>등록된 게시글이 없습니다.</h3>
                                                   <p>
                                                   </p>
                                                </section>
                                          </div>
                                          </c:otherwise>
                                          </c:choose> 
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                          <section class="box feature">
                                             <a href="#" class="image featured"><img src="${pageContext.request.contextPath}/images2/pic02.jpg" alt="" /></a>
                                             <h3><a href="#">Title</a></h3>
                                             <p>
                                                Content
                                             </p>
                                          </section>

                                    </div>
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                          <section class="box feature">
                                             <a href="#" class="image featured"><img src="${pageContext.request.contextPath}/images2/pic03.jpg" alt="" /></a>
                                             <h3><a href="#">Title</a></h3>
                                             <p>
                                                Content
                                             </p>
                                          </section>

                                    </div>
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                          <section class="box feature">
                                             <a href="#" class="image featured"><img src="${pageContext.request.contextPath}/images2/pic04.jpg" alt="" /></a>
                                             <h3><a href="#">Title</a></h3>
                                             <p>
                                                Content
                                             </p>
                                          </section>
                                    </div> --%>
                                 </div>
                              </div>
                           </section>

                     </div>
                     
                     </div>
                  </div>
               </div>
            </section>
            </section>
               <section id="main" style="background: antiquewhite; margin-bottom: 0;">
               <div class="container">
                  <div class="row gtr-200">
                     <div class="col-12">
                     
                     <div class="col-12">

                        <!-- Blog -->
                           <section class="box blog">
                              <h2 class="major" style="background: antiquewhite;"><span id="sh" style="background: antiquewhite;">헌혈 나누기 캠페인</span></h2>
                              <div>
                                 <div class="row">
                                    <div class="col-9 col-12-medium" style="margin: 0 auto; text-align: center;">
                                       <div class="content">

                                          <!-- Featured Post -->
                                             <article class="box post">
                                                <header>
                                                   <h3><a href="#" style="color:#444;">헌혈 홍보 영상</a></h3>
                                                   <!-- <ul class="meta">
                                                      <li class="icon fa-clock">15 minutes ago</li>
                                                      <li class="icon fa-comments"><a href="#">8</a></li>
                                                   </ul> -->
                                                </header>
                                                <a href="#" class="image featured">
                                                   <video autoplay controls class="player" width="100%" loop muted preload="none" src="${pageContext.request.contextPath}/images/video2.mp4">
                                                   </video>
                                                   </a>
                                                <p style="color: black;">
                                                   세계헌혈자의 날은 전 세계적으로 매혈을 지양하고 자신의 혈액을 무상으로 기증하여 생명나눔을 실천하고 있는 헌혈자들에게 존경과 감사의 마음을 전하기 위한 날입니다.<br>
                                                   세계 각국에서는 2004년부터 헌혈문화 확산과 헌혈자에게 감사의 마음을 전하는 행사를 진행해 오고 있으며 대한적십자사도 2004년부터 매년 6월 14일을 기념하여 헌혈자를 위한 축제의 한마당인 세계헌혈자의 날 행사를 진행하고 있습니다.
                                                </p>
                                                <!-- <a href="#" class="button">Continue Reading</a> -->
                                             </article>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </section>

                     </div>
                  </div>
               </div>
            </section>
            </section>
<!-- Scripts -->
         <script src="${pageContext.request.contextPath}/assets2/js/jquery.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets2/js/jquery.dropotron.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets2/js/jquery.scrolly.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets2/js/browser.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets2/js/breakpoints.min.js"></script>
         <script src="${pageContext.request.contextPath}/assets2/js/util.js"></script>
</body>
<script>
$(document).ready(function(){getList();/*  getList2(); */});

var pageContext = "${pageContext.request.contextPath}";

function getList(){
	$.ajax({
		url : pageContext + "/user/IndexBoard.us",
		type : "post",
		/* dataType : "json", */
		dataType : "text",
		success : showList
	});
}
function showList(lists){
	lists = JSON.parse(lists);
	list = lists;
	
	var text = "";
	
	if(lists != null && lists.length != 0){
		$.each(lists, function(index, list){
			text += "<div class='col-3 col-6-medium col-12-small'><section class='box feature'>";
			console.log(list.board_image);
			if(list.board_image != null){
				text += "<a href='"+pageContext+"/community_Review_Board/Review_BoardViewOk.co?board_num="+list.board_num+"' class='image featured'><img src='"+pageContext+"/upload/"+list.board_image+"' alt='' style='height: 190px;'/></a>";
			}else{
				text += "<a href='"+pageContext+"/community_Review_Board/Review_BoardViewOk.co?board_num="+list.board_num+"' class='image featured'><img src='"+pageContext+"/images/iconShare.png' alt='' style='height: 190px;'/></a>";
			}
			text += "<h3><a href='"+pageContext+"/community_Review_Board/Review_BoardViewOk.co?board_num="+list.board_num+"'>"+list.board_title+"</a></h3>";
			if(list.board_content.length > 30){
				text += "<p><a href='"+pageContext+"/community_Review_Board/Review_BoardViewOk.co?board_num="+list.board_num+"'>"+list.board_content.substring(0,30)+"\n[더보기]</a></p>";
			}else{
				text += "<p><a href='"+pageContext+"/community_Review_Board/Review_BoardViewOk.co?board_num="+list.board_num+"'>"+list.board_content+"</a></p>";	
			}
			text += "</section></div>";
		});
	}else{		
		text += " <h3>등록된 게시글이 없습니다.</h3>";
	}
	
	$(".d").html(text);
}

<%-- 글내용이 56 자 이상일 경우 자르기 --%>
/* <c:choose>
   <c:when test="${fn:length(review_board.getBoard_content()) > 56 }">
      <c:out value="${fn:substring(review_board.getBoard_content(), 0, 55)}" /><span>&hellip;</span>
   </c:when>
   <c:otherwise>
      ${review_board.getBoard_content()}                                 
   </c:otherwise>
</c:choose> 
 */
<%-- <c:choose>
<c:when test="${review_board.getBoard_img_name() != null}">
사용자가 첨부한 사진으로 변경하기
<span class="image"><img src="${pageContext.request.contextPath}/upload/${review_board.getBoard_img_name()}" alt="" onclick="location.href='${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}'" style="border: 1px solid black; object-fit: cover;"/></span>                               
</c:when>   
<c:otherwise>
<span class="image"><img src="${pageContext.request.contextPath}/images/iconShare.png" alt="" onclick="location.href='${pageContext.request.contextPath}/community_Review_Board/Review_BoardViewOk.co?board_num=${review_board.getBoard_num()}'" style="border: 1px solid black;padding: 5em;"/></span>
</c:otherwise>   
</c:choose>   
 --%>


/* function getList2(){
	$.ajax({
		url : pageContext + "/user/IndexBlood.us",
		type : "post",
		//dataType : "json", 
		dataType : "text",
		success : showList2
	});
}

function showList2(lists){
	lists = JSON.parse(lists);
	list = lists;
	
	var text = "";
	
	if(lists != null && lists.length != 0){
		$.each(lists, function(index, list){
			text += "<article class='bloodDiv'><article class='box post-summary image'>";
			text += "<img src='"+pageContext+"/images/blood-donation.png'><div class='text' style='left: 26px; top: 20px;'><a href='#'>A</a></div></h3>";
			text += "<ul class='meta'><li class='icon fa-comments'><a href='#' style='color:#444;''>"+list.a+"</a></li></ul></article>";
			text += "<article class='box post-summary image'>";
			text += " <img src='"+pageContext+"/images/blood-donation.png'><div class='text' style='left: 26px; top: 20px;'><a href="#">B</a></div></h3>";
			text += "<ul class='meta'><li class='icon fa-comments'><a href='#' style='color:#444;'>"+list.b+"</a></li>";
			text += "<article><article class='box post-summary image'>";
			text += "<img src='"+pageContext+"/images/blood-donation.png'><div class='text'><a href='#'>AB</a></div></h3>";
			text += "<ul class='meta'><li class='icon fa-comments'><a href='#' style='color:#444;''>"+list.ab+"</a></li></ul></article>";
			text += "<article class='box post-summary image'><img src='"+pageContext+"/images/blood-donation.png'><div class='text' style='left: 26px; top: 20px;'><a href='#'>O</a></div></h3>";
			text += "<ul class='meta'><li class='icon fa-comments'><a href='#' style='color:#444;''>"+list.o+"</a></li></ul></article></article>";			
		});
			text += "<article><a href='#' class='button' style='width: 100%;'>TOP</a></article>";
	}else{		
		text += "<article class='bloodDiv'><article class='box post-summary image'>";
		text += "<img src='"+pageContext+"/images/blood-donation.png'><div class='text' style='left: 26px; top: 20px;'><a href='#'>A</a></div></h3>";
		text += "<ul class='meta'><li class='icon fa-comments'><a href='#' style='color:#444;''>0</a></li></ul></article>";
		text += "<article class='box post-summary image'>";
		text += " <img src='"+pageContext+"/images/blood-donation.png'><div class='text' style='left: 26px; top: 20px;'><a href="#">B</a></div></h3>";
		text += "<ul class='meta'><li class='icon fa-comments'><a href='#' style='color:#444;'>0</a></li>";
		text += "<article><article class='box post-summary image'>";
		text += "<img src='"+pageContext+"/images/blood-donation.png'><div class='text'><a href='#'>AB</a></div></h3>";
		text += "<ul class='meta'><li class='icon fa-comments'><a href='#' style='color:#444;''>0</a></li></ul></article>";
		text += "<article class='box post-summary image'><img src='"+pageContext+"/images/blood-donation.png'><div class='text' style='left: 26px; top: 20px;'><a href='#'>O</a></div></h3>";
		text += "<ul class='meta'><li class='icon fa-comments'><a href='#' style='color:#444;''>0</a></li></ul></article></article>";
		text += "<article><a href='#' class='button' style='width: 100%;'>TOP</a></article>";
	}
	
	$(".sidebar").html(text);
} */

</script>
</html>