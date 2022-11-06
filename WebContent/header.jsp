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
	<!-- Header -->
	<c:if test="${session_id eq null}">
			<header id="header">
				<h1>
					<a href="${pageContext.request.contextPath}/user/Index.us" style="font-family:'Raleway', Helvetica, sans-serif; display: flex;">
						<img src="${pageContext.request.contextPath}/images/favicon2.png" style="width: 50px; height: 51px; margin-top: 14px; margin-right: 10px;">Working Blood</a>
				</h1>
				<nav id="nav">
					<ul>
						<li>
							<a href="#" class="submenu fa-angle-down">일하는 혈액들 소개</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/introduce/what_is_WorkingBlood.in">일하는 혈액들이란?</a></li>
								<li><a href="${pageContext.request.contextPath}/introduce/bloodCenterFind.in">헌혈의 집 찾기</a></li>
								<li><a href="${pageContext.request.contextPath}/introduce/directions.in">오시는 길</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down">헌혈 지식</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/knowledge/necesseityForBloodDonation.kn">헌혈의 필요성</a></li>
								<li><a href="${pageContext.request.contextPath}/knowledge/bloodDonateFactCheck.kn">헌혈 팩트 체크</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down">헌혈 참여</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/bloodDonor_CardForm.jsp">헌혈증 기부 신청</a></li>
								<li><a href="${pageContext.request.contextPath}/bloodDonor_RequestCardForm.jsp">헌혈증 요청 신청</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down">커뮤니티</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co">감동 후기</a></li>
								<li><a href="${pageContext.request.contextPath}/community_Customer_Write.jsp">고객의 소리</a></li>
								<li><a href="${pageContext.request.contextPath}/community_FAQ.jsp">자주 묻는 질문</a></li>
							</ul>
						</li>
						<%-- <li><a href="${pageContext.request.contextPath}/elements.jsp">Elements</a></li> --%>
						<li><a href="${pageContext.request.contextPath}/user/UserLogin.us" class="button primary small">Login</a></li>
						<li><a href="${pageContext.request.contextPath}/sign_up.jsp" class="button small" style="margin-left:-2em;">Join us</a></li>
					</ul>
				</nav>
			</header>
			</c:if>
			<c:if test="${session_id ne null}">
			<header id="header">
				<h1>
					<a href="${pageContext.request.contextPath}/user/Index.us" style="font-family:'Raleway', Helvetica, sans-serif; display: flex;">
						<img src="${pageContext.request.contextPath}/images/favicon2.png" style="width: 50px; height: 51px; margin-top: 14px; margin-right: 10px;">Working Blood</a>
				</h1>
				<nav id="nav">
					<ul>
						<li>
							<a href="#" class="submenu fa-angle-down">일하는 혈액들 소개</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/introduce/what_is_WorkingBlood.in">일하는 혈액들이란?</a></li>
								<li><a href="${pageContext.request.contextPath}/introduce/bloodCenterFind.in">헌혈의 집 찾기</a></li>
								<li><a href="${pageContext.request.contextPath}/introduce/directions.in">오시는 길</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down">헌혈 지식</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/knowledge/necesseityForBloodDonation.kn">헌혈의 필요성</a></li>
								<li><a href="${pageContext.request.contextPath}/knowledge/bloodDonateFactCheck.kn">헌혈 팩트 체크</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down">헌혈 참여</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/bloodDonor_CardForm.jsp">헌혈증 기부 신청</a></li>
								<li><a href="${pageContext.request.contextPath}/bloodDonor_RequestCardForm.jsp">헌혈증 요청 신청</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="submenu fa-angle-down">커뮤니티</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/community_Review_Board/Review_BoardList.co">감동 후기</a></li>
								<li><a href="${pageContext.request.contextPath}/community_Customer_Write.jsp">고객의 소리</a></li>
								<li><a href="${pageContext.request.contextPath}/community_FAQ.jsp">자주 묻는 질문</a></li>
							</ul>
						</li>
						<%-- <li><a href="${pageContext.request.contextPath}/elements.jsp">Elements</a></li> --%>
						<li><a href="${pageContext.request.contextPath}/myPage/MyPage.my" class="button primary small">Mypage</a></li>
						<li><a href="${pageContext.request.contextPath}/user/UserLogout.us" class="button small" style="margin-left:-2em;">Logout</a></li>
					</ul>
				</nav>
			</header>
			</c:if>
</body>
</html>