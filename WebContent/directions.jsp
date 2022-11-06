<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
#title {
	font-size: 30px;
	padding-bottom: 0em;
	margin-bottom: 10px;
}

.contentSmall {
	margin-bottom: 1em;
	padding-bottom: 5px;
	border-bottom: solid 1px #b71c1c;
	width: 18%;
}

.iconImg {
	width: 100px;
	height: 100px;
	margin-bottom: 2em;
}

.iconImg.mgn {
	margin-top: 2em;
}

ul.actions {
	float: right;
}

#map {
	margin: 0 0 1em 0;
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
</style>
<head>
<title>오시는 길 | 일하는 혈액들</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon2.png"/>
<noscript>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload" style="margin: 0 auto; width: 95%; padding:100px">

	<%@ include file="header.jsp"%>
	<!-- Main -->
	<section id="main" class="wrapper">
		<div class="inner">
			<header class="align-center">
				
				<!-- 카테고리 연결 -->
				<div class="loacation_wrap">
					<nav class="location">
						<ul>
							<li><a href="${pageContext.request.contextPath}/user/Index.us"><img src="${pageContext.request.contextPath}/images/iconHome.png" style="width:1.5em;"></a></li>									
							<li><a>&gt;&nbsp;&nbsp;일하는 혈액들 소개</a></li>							
							<li><a href="${pageContext.request.contextPath}/introduce/directions.in">&gt;&nbsp;&nbsp;오시는길</a></li>							
						</ul>
					</nav>
				</div>			
				
				<h2 id="title">오시는길</h2>
				<p>저희 위치를 지도로 보실 수 있으며, 버스 및 지하철 등 교통수단을 이용하여 방문하는 방법에 대한 안내 정보를 확인하실 수 있습니다.</p>
			</header>

			<!-- Content -->
			<div class="content">
				<div id="map" style="width: 100%; height: 400px;"></div>
				<!-- 지도 이미지 -->
				<!-- <a href="#" class="image fit" id="imagefit"><img src="images/map3.PNG" alt=""/></a> -->
				<ul class="actions">
					<li><a href="http://kko.to/hVe6w3rfp" target="_blank" class="button primary">카카오맵으로 보기</a></li>
				</ul>
			</div>
			<div class="transport">
				<div class="img_left_cont">
					<img src="${pageContext.request.contextPath}/images/iconLocation.png" alt="위치 아이콘">
					<h4>- 위치</h4>
					<p>
						서울 강남구 테헤란로 146 현익빌딩 4층 (우)06236<br>지번: 역삼동 736-7
					</p>
				</div>
				<div class="img_left_cont">
					<img src="${pageContext.request.contextPath}/images/iconPhone.png" alt="연락 아이콘">
					<h4>- 연락처</h4>
					<p>일하는 혈액들 콜센터☎ 02-577-1234 / 팩스 012 - 442 - 0000</p>
				</div>
				<h2 class="contentSmall">대중교통 이용</h2>
				<div class="img_left_cont">
					<img src="${pageContext.request.contextPath}/images/iconBus.png" alt="버스 아이콘">
					<h4>- 버스 이용(역삼역.포스코타워역삼 정류장)</h4>
					<p>
						간선: 146, 341, 360, 740<br> 지선: 3412<br> 직행: 1100, 1700,
						2000, 2000-1, 3600, 7007, 8001, 9303
					</p>
				</div>
				<div class="img_left_cont">
					<img src="${pageContext.request.contextPath}/images/iconSubway.png" alt="지하철 아이콘">
					<h4>- 지하철 이용</h4>
					<p>역삼역 3번 출구 1분거리 / 강남역 1번 출구 11분거리 / 언주역 7번 출구 15분거리</p>
				</div>
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
	<!-- 카카오 API -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9100a80d80e0218a548db8b79b8981a5&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3	// 지도의 확대 레벨
			};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('서울 강남구 테헤란로 146 현익빌딩 4층',function(result, status) {
							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {
								var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">일하는 혈액들</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>

</body>
</html>