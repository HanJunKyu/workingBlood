<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<c:if test="${session_id eq null}">
			<header id="header" class="alt" style="background-color: #fff; box-shadow: 0 0 0.125em 0 rgba(0, 0, 0, 0.35); font-family: "Raleway", Helvetica, sans-serif; font-weight: 500; height: 4.5em; left: 0; line-height: 4.5em; text-transform: uppercase; top: 0; width: 100%; z-index: 10000;">
				<h1>
					<a href="${pageContext.request.contextPath}/user/Index.us" style="font-family:'Raleway', Helvetica, sans-serif; display: flex;">
						<img src="${pageContext.request.contextPath}/images/favicon2.png" style="width: 50px; height: 51px; margin-top: 14px; margin-right: 10px;">
						Working Blood
					</a>
				</h1>
				<nav id="nav" style="right:0em; position:pixed;">	<!-- 예진 css수정 -->
					<ul>
						<li>
							<a href="#" class="submenu fa-angle-down headb" >일하는 혈액들 소개</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/introduce/what_is_WorkingBlood.in">일하는 혈액들이란?</a></li>
								<li><a href="${pageContext.request.contextPath}/introduce/bloodCenterFind.in">헌혈의 집 찾기</a></li>
								<li><a href="${pageContext.request.contextPath}/introduce/directions.in">오시는 길</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down headb">헌혈 지식</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/knowledge/necesseityForBloodDonation.kn">헌혈의 필요성</a></li>
								<li><a href="${pageContext.request.contextPath}/knowledge/bloodDonateFactCheck.kn">헌혈 팩트 체크</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down headb">헌혈 참여</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/bloodDonor_CardForm.jsp">헌혈증 기부 신청</a></li>
								<li><a href="${pageContext.request.contextPath}/bloodDonor_RequestCardForm.jsp">헌혈증 요청 신청</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down headb">커뮤니티</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co">감동 후기</a></li>
								<li><a href="${pageContext.request.contextPath}/community_Customer_Write.jsp">고객의 소리</a></li>
								<li><a href="${pageContext.request.contextPath}/community_FAQ.jsp">자주 묻는 질문</a></li>
							</ul>
						</li>
							<li>
								<a href="${pageContext.request.contextPath}/user/UserLogin.us" class="button">Login</a>
								<a href="${pageContext.request.contextPath}/sign_up.jsp" class="button" style="margin-left: -1em;">Join us</a>
							</li>
					</ul>
				</nav>
			</header>
		</c:if>
		<c:if test="${session_id ne null}">
			<header id="header" class="alt" style="background-color: #fff; box-shadow: 0 0 0.125em 0 rgba(0, 0, 0, 0.35); font-family: "Raleway", Helvetica, sans-serif; font-weight: 500; height: 4.5em; left: 0; line-height: 4.5em; text-transform: uppercase; top: 0; width: 100%; z-index: 10000;">
				<h1><a href="index.jsp" style="font-family:'Raleway', Helvetica, sans-serif; display: flex;"><img src="${pageContext.request.contextPath}/images/favicon2.png" style="width: 50px; height: 51px; margin-top: 14px; margin-right: 10px;">Working Blood
					</a></h1>
				<nav id="nav" style="right:0em; position:pixed;">	<!-- 예진 css수정 -->
					<ul>
						<li>
							<a href="#" class="submenu fa-angle-down headb" >일하는 혈액들 소개</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/what_is_WorkingBlood.jsp">일하는 혈액들이란?</a></li>
								<li><a href="${pageContext.request.contextPath}/bloodCenterFind.jsp">헌혈의 집 찾기</a></li>
								<li><a href="${pageContext.request.contextPath}/directions.jsp">오시는 길</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down headb">헌혈 지식</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/necesseityForBloodDonation.jsp">헌혈의 필요성</a></li>
								<li><a href="${pageContext.request.contextPath}/bloodDonateFactCheck.jsp">헌혈 팩트 체크</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down headb">헌혈 참여</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/bloodDonor_CardForm.jsp">헌혈증 기부 신청</a></li>
								<li><a href="${pageContext.request.contextPath}/bloodDonor_RequestCardForm.jsp">헌혈증 요청 신청</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down headb">커뮤니티</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co">감동 후기</a></li>
								<li><a href="${pageContext.request.contextPath}/community_Customer_Write.jsp">고객의 소리</a></li>
								<li><a href="${pageContext.request.contextPath}/community_FAQ.jsp">자주 묻는 질문</a></li>
							</ul>
						</li>
							<li style="vertical-align: -webkit-baseline-middle;">
								 <a href="${pageContext.request.contextPath}/myPage/MyPage.my" class="button" style="padding-left: 0;">
								 <img src="${pageContext.request.contextPath}/images2/mypage.png" style="width: 34px; height: 35px; border: 2px solid #444; border-radius: 50%;"></a>															
							</li>
							<li style="margin-left: 0;">
								 <a href="${pageContext.request.contextPath}/user/UserLogout.us" style="padding-left: 0;" class="button"><span>Logout</span></a>															
							</li>
					</ul>
				</nav>
			</header>
		</c:if>

</body>
</html>