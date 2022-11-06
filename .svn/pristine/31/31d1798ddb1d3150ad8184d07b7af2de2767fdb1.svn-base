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

#keyword{
	height: 45px;
    font-size: 15px;
    border-radius: 23px;
}

ul.actions {
	float: right;
}

/* 헌혈의집 목록 */
table {
    margin: 0 0 2em 0;
}

.table-wrapper tr:nth-child(2n + 1) {
    background-color: #fff;
}

.table-wrapper th{
	padding: 0.5em 0.75em 0.5em 0.75em;
    color: #fff;
}
		
h2:after{
	width: 0rem;
}



/* 올리브영 검색창 복붙 */
.store_sch .store_schInner{position:relative}
.store_sch input[type="text"] {width: 100%;height: 45px;border-radius:23px;font-weight:500;border: 1px solid #a5a5a5;background: #fff;line-height: 43px;padding: 0 80px 0 20px;font-size: 13px;letter-spacing:-0.015em;color: #999;}/* 200210 */
.store_sch input[type="text"]:focus {color:#333;}
.store_schInner.on input[type="text"]{border:1px solid #9bce26;border-bottom:0;border-radius:23px 23px 0 0;}
.store_sch .btn_sch_del {position:absolute;top:50%;margin-top:-10px;right:50px;width:20px;height:20px;background:url("https://image.oliveyoung.co.kr/pc-static-root/image/comm/ico_inp_del.png") no-repeat center;background-size:20px auto}
.store_sch .btn_sch{position: absolute;top: 70%;margin-top:-15px;right: 15px;display: inline-block;width: 30px;height: 30px;background: url("https://image.oliveyoung.co.kr/pc-static-root/image/comm/ico_search3_24x24.png") no-repeat 50% 50%;z-index: 0;text-indent:-99999px}/* 200224 */
.store_sch .btn_sch_del {display:none;text-indent:-99999px}
.store_sch .btn_sch_del.on {display:block}


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


/* 카카오맵 API */
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;margin-bottom:1em;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:400px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>
<head>
<title>헌혈의 집 찾기 | 일하는 혈액들</title>
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
							<li><a href="${pageContext.request.contextPath}/introduce/bloodCenterFind.in">&gt;&nbsp;&nbsp;헌혈의 집 찾기</a></li>							
						</ul>
					</nav>
				</div>			
				
				<h2 id="title">헌혈의 집 찾기</h2>
				<p>원하시는 혈액원을 쉽고 편리하게 찾으실 수 있습니다. 검색 후 자세한 혈액원정보를 확인하세요</p>
			</header>

			<!-- Content -->
			
			<div class="content">
				<div class="map_wrap">
				    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
				
				    <div id="menu_wrap" class="bg_white">
				        <div class="option">
				            <div>
				                <form onsubmit="searchPlaces(); return false;">
				                <!-- 주석처리 올리브영 코드 -->
				                <div class="store_sch">
					                <div class="store_schInner">
				                    가까운 혈액원을 검색하세요 : <input type="text" value="헌혈의 집 강남센터" id="keyword" size="15" placeholder="혈액원명/주소 입력(ex.헌혈의집 강남)">              
										<button type="submit" class="btn_sch"><span class="blind">검색하기</span></button> 
										<!-- <input type="text" name="" id="searchWord" value="" onkeyup="javascript:store.main.searchStoreList(event);" title="혈액원명 또는 주소를 입력해주세요." placeholder="혈액원명/주소 입력 (ex.헌혈의집)"> -->
										<!-- <button type="submit" class="btn_sch"><span class="blind">검색</span></button> -->
									</div>
				                </div>
				                </form>
				            </div>
				        </div>
				        <hr>
				        <ul id="placesList"></ul>
				        <div id="pagination"></div>
				    </div>				    
				</div>
               	<ul class="actions">
					<li><a href="${pageContext.request.contextPath}/upload/전국 헌혈의집 운영현황(2021.06).xlsx" class="button primary" download>전국 헌혈의 집 주소 파일 다운로드</a></li>
				</ul>
				<br><br>
				<h4 class="alt">- 소속기관 주소 및 연락처</h4>
				<div class="table-wrapper">
					<table>
						<thead style="border-bottom-color:#b71c1c;">
							<tr style="background-color:#b71c1c;">
								<th>기관명</th>
								<th>주소</th>
								<th>전화번호</th>
								<th>FAX번호</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>혈장분획센터</td>
								<td>27600 충청북도 음성군 감곡면 대학길232번길16</td>
								<td>043-879-1234</td>
								<td>043-879-1235</td>								
							</tr>
							<tr>
								<td>혈액수혈연구원</td>
								<td>26465 강원 원주시 혁신로 50</td>
								<td>033-811-0200</td>
								<td>033-811-0209</td>
							</tr>
							<tr>
								<td>서울중앙혈액원</td>
								<td>07559 서울특별시 강서구 공항대로 591</td>
								<td>02-6711-0114</td>
								<td>02-6711-0283</td>
							</tr>
							<tr>
								<td>서울남부혈액원</td>
								<td>06304 서울시 강남구 개포로31길 48</td>
								<td>02-570-0600</td>
								<td>02-571-7479</td>
							</tr>
							<tr>
								<td>서울동부혈액원</td>
								<td>01767 서울특별시 노원구 동일로 1329</td>
								<td>02-952-0322~8</td>
								<td>02-952-0329</td>
							</tr>
							<tr>
								<td>부산혈액원</td>
								<td>47306 부산광역시 부산진구 전포대로 168</td>
								<td>051-810-9000</td>
								<td>051-816-9593</td>								
							</tr>
							<tr>
								<td>대구경북혈액원</td>
								<td>41900 대구광역시 중구 태평로 7</td>
								<td>053-605-5600</td>
								<td>053-555-3126</td>
							</tr>
							<tr>
								<td>인천혈액원</td>
								<td>21935 인천광역시 연수구 연수동 함박뫼로 220</td>
								<td>032-815-0631~4</td>
								<td>032-815-0630</td>
							</tr>
							<tr>
								<td>울산혈액원</td>
								<td>44426 울산광역시 중구 함월10길 25</td>
								<td>052-210-8500</td>
								<td>052-210-8519</td>
							</tr>
							<tr>
								<td>경기혈액원</td>
								<td>16571 경기도 수원시 권선구 권광로 129</td>
								<td>031-220-8500~7</td>
								<td>031-220-8567</td>
							</tr>
							<tr>
								<td>강원혈액원</td>
								<td>24427 강원도 춘천시 퇴계공단1길 8</td>
								<td>033-269-1000</td>
								<td>033-269-1069</td>								
							</tr>
							<tr>
								<td>충북혈액원</td>
								<td>28374 충청북도 청주시 흥덕구 가로수로 1000</td>
								<td>043-253-2654~5</td>
								<td>043-253-2656</td>
							</tr>
							<tr>
								<td>대전세종충남혈액원</td>
								<td>34425 대전광역시 대덕구 송촌남로 22</td>
								<td>042-623-2166~8</td>
								<td>042-622-6141</td>
							</tr>
							<tr>
								<td>전북혈액원</td>
								<td>54810 전라북도 전주시 덕진구 혁신로 463</td>
								<td>063-270-5800</td>
								<td>063-270-5809</td>
							</tr>
							<tr>
								<td>광주전남혈액원</td>
								<td>61741 광주시 남구 서문대로 406</td>
								<td>062-600-0600</td>
								<td>062-672-7992</td>
							</tr>
							<tr>
								<td>경남혈액원</td>
								<td>51430 경상남도 창원시 의창구 용지로 226</td>
								<td>055-270-6000</td>
								<td>055-270-6099</td>								
							</tr>
							<tr>
								<td>제주특별자치도혈액원</td>
								<td>63219 제주특별자치도 제주시 오남로 45</td>
								<td>064-720-7800</td>
								<td>064-720-7808</td>
							</tr>
							<tr>
								<td>중앙혈액검사센터</td>
								<td>07559 서울특별시 강서구 공항대로 69길 18</td>
								<td>02-2657-0000</td>
								<td>02-2657-0005</td>
							</tr>
							<tr>
								<td>중부혈액검사센터</td>
								<td>34425 대전광역시 대덕구 송촌남로 22</td>
								<td>042-639-9456~60</td>
								<td>042-639-8131~4</td>
							</tr>
							<tr>
								<td>남부혈액검사센터</td>
								<td>47306 부산광역시 부산진구 전포대로 168</td>
								<td>051-810-9100</td>
								<td>051-810-9191</td>
							</tr>
						</tbody>
					</table>
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
	// 마커를 담을 배열입니다
	var markers = [];
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places();  
	
	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
	// 키워드로 장소를 검색합니다
	searchPlaces();
	
	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces() {
		
	    var keyword = document.getElementById('keyword').value;
	    
	    if (!keyword.replace(/^\s+|\s+$/g, '')) {
	        alert('혈액원명 또는 주소를 입력해주세요!');
	        return false;
	    }
		
	    //영어입력 막기
	    var regex= /[ㄱ-ㅎㅏ-ㅣ가-힣]/g;
	    
	    if (!regex.test(keyword)){
	    	alert('검색옵션에 해당하는 혈액원 명 또는 주소가 없습니다.');
	    	return false;	    	
	    } 
	    
	    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	    ps.keywordSearch( keyword, placesSearchCB); 
	}
	
	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {
	
	        // 정상적으로 검색이 완료됐으면
	        // 검색 목록과 마커를 표출합니다
	        displayPlaces(data);
	
	        // 페이지 번호를 표출합니다
	        displayPagination(pagination);
	
	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	
	        alert('검색 결과가 존재하지 않습니다.');
	        return;
	
	    } else if (status === kakao.maps.services.Status.ERROR) {
	
	        alert('검색 결과 중 오류가 발생했습니다.');
	        return;
	
	    }
	}
	
	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {
	
	    var listEl = document.getElementById('placesList'), 
	    menuEl = document.getElementById('menu_wrap'),
	    fragment = document.createDocumentFragment(),	// createDocumentFragment(): 다른 노르를 담는 임시컨테이너 역할로 메모리 상에서만 존재한다
	    bounds = new kakao.maps.LatLngBounds(),	// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
	    listStr = '';
	    
	    // 검색 결과 목록에 추가된 항목들을 제거합니다
	    removeAllChildNods(listEl);
	
	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    
	    for ( var i=0; i<places.length; i++ ) {
	
	        // 마커를 생성하고 지도에 표시합니다
	        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
	            marker = addMarker(placePosition, i), 
	            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
	
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        bounds.extend(placePosition);
	
	        // 마커와 검색결과 항목에 mouseover 했을때
	        // 해당 장소에 인포윈도우에 장소명을 표시합니다
	        // mouseout 했을 때는 인포윈도우를 닫습니다
	        (function(marker, title) {
	            kakao.maps.event.addListener(marker, 'mouseover', function() {
	                displayInfowindow(marker, title);
	            });
	
	            kakao.maps.event.addListener(marker, 'mouseout', function() {
	                infowindow.close();
	            });
	
	            itemEl.onmouseover =  function () {
	                displayInfowindow(marker, title);
	            };
	
	            itemEl.onmouseout =  function () {
	                infowindow.close();
	            };
	        })(marker, places[i].place_name);
	
	        fragment.appendChild(itemEl);
	    }
	
	    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
	    listEl.appendChild(fragment);
	    menuEl.scrollTop = 0;
	
	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	    map.setBounds(bounds);
	}
	
	// 검색결과 항목을 Element로 반환하는 함수입니다
	function getListItem(index, places) {
	
	    var el = document.createElement('li'),
	    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	                '<div class="info">' +
	                '   <h5>' + places.place_name + '</h5>';
	
	    if (places.road_address_name) {
	        itemStr += '    <span>' + places.road_address_name + '</span>' +
	                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
	    } else {
	        itemStr += '    <span>' +  places.address_name  + '</span>'; 
	    }
	                 
	      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
	                '</div>';           
	
	    el.innerHTML = itemStr;
	    el.className = 'item';
	
	    return el;
	}
	
	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, idx, title) {
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new kakao.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });
	
	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	
	    return marker;
	}
	
	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}
	
	// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
	    var paginationEl = document.getElementById('pagination'),
	        fragment = document.createDocumentFragment(),
	        i; 
	
	    // 기존에 추가된 페이지번호를 삭제합니다
	    while (paginationEl.hasChildNodes()) {
	        paginationEl.removeChild (paginationEl.lastChild);
	    }
	
	    for (i=1; i<=pagination.last; i++) {
	        var el = document.createElement('a');
	        el.href = "#";
	        el.innerHTML = i;
	
	        if (i===pagination.current) {
	            el.className = 'on';
	        } else {
	            el.onclick = (function(i) {
	                return function() {
	                    pagination.gotoPage(i);
	                }
	            })(i);
	        }
	
	        fragment.appendChild(el);
	    }
	    paginationEl.appendChild(fragment);
	}
	
	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
	
	    infowindow.setContent(content);
	    infowindow.open(map, marker);
	}
	
	 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	        el.removeChild (el.lastChild);
	    }
	}
	</script>

</body>
</html>