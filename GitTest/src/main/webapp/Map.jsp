<%@page import="com.smhrd3.model.RestaurantDTO"%>
<%@page import="com.smhrd3.model.FavoriteTravelDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>주소로 장소 표시하기</title>
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="./assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="./assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<link href="./assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle" href="./assets/css/soft-ui-dashboard.css?v=1.0.7"
	rel="stylesheet" />
<link rel="stylesheet" href="./assets/css/CSS.css">
<style>
body {
	background-color: #f8f9fa;
}

#map {
	margin-left: 25px;
	position: relative;
	top: 20px;
}

#card-body {
	
}

#title>p {
	
}

#local {
	margin-left: 38%;
}

.a {
	font-size: 20px;
}

p {
	font-family: 'WandohopeR';
}

h1 {
	font-family: 'KimjungchulMyungjo-Bold';
}

h2 {
	font-family: 'KimjungchulMyungjo-Bold';
}

h3 {
	font-family: 'KimjungchulMyungjo-Bold';
}

h4 {
	font-family: 'WandohopeR';
}

h5 {
	font-family: 'WandohopeR';
}
</style>

</head>

<body>
	<nav id="km">
		<div class="container-fluid py-4">
			<div class="row">
				<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
					<div class="card">
						<a href="areaGJ">
							<div class="card-body p-3">
								<div class="row">
									<div class="col-8">
										<div class="numbers">
											<p class="text-sm mb-0 text-capitalize font-weight-bold">문화의
												도시</p>
											<h5 class="font-weight-bolder mb-0">
												광주 <span class="text-success text-sm font-weight-bolder"></span>
											</h5>
										</div>
									</div>
									<div class="col-4 text-end">
										<img src="./assets2/css/images/광주광역시.png">
									</div>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
					<div class="card">
						<a href="areaDY">
							<div class="card-body p-3">
								<div class="row">
									<div class="col-8">
										<div class="numbers">
											<p class="text-sm mb-0 text-capitalize font-weight-bold">미식의
												도시</p>
											<h5 class="font-weight-bolder mb-0">
												담양 <span class="text-success text-sm font-weight-bolder"></span>
											</h5>
										</div>
									</div>
									<div class="col-4 text-end">
										<img src="./assets2/css/images/담양.jpg">
									</div>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
					<div class="card">
						<a href="areaMP">
							<div class="card-body p-3">
								<div class="row">
									<div class="col-8">
										<div class="numbers">
											<p class="text-sm mb-0 text-capitalize font-weight-bold">항구의
												도시</p>
											<h5 class="font-weight-bolder mb-0">
												목포 <span class="text-success text-sm font-weight-bolder"></span>
											</h5>
										</div>
									</div>
									<div class="col-4 text-end">
										<img src="./assets2/css/images/목포.jpg">
									</div>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
					<div class="card">
						<a href="areaSC">
							<div class="card-body p-3">
								<div class="row">
									<div class="col-8">
										<div class="numbers">
											<p class="text-sm mb-0 text-capitalize font-weight-bold">자연의
												도시</p>
											<h5 class="font-weight-bolder mb-0">
												순천 <span class="text-danger text-sm font-weight-bolder"></span>
											</h5>
										</div>
									</div>
									<div class="col-4 text-end">
										<img src="./assets2/css/images/순천.jpg">
									</div>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6">
					<div class="card">
						<a href="areaYS">
							<div class="card-body p-3">
								<div class="row">
									<div class="col-8">
										<div class="numbers">
											<p class="text-sm mb-0 text-capitalize font-weight-bold">낭만의
												도시</p>
											<h5 class="font-weight-bolder mb-0">
												여수 <span class="text-success text-sm font-weight-bolder"></span>
											</h5>
										</div>
									</div>
									<div class="col-4 text-end">
										<img src="./assets2/css/images/여수.jpg">
									</div>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
	</nav>
	<div id="card-body">
		<div>
			<h1 style="font-size: 80px color=#343a40;" align="center">오랑께가
				알려주는 맛집 & 인기관광지</h1>
		</div>
	</div>

	<div class="a">
		<form action="map">
			<% String moveURL= (String)request.getAttribute("moveURL"); %>
			<a href="<%=moveURL%>">
				<button id="back">이전 페이지</button>
			</a>
			<div style="top: 8px; position: absolute;">
				<input type="radio" name="관광지" value="인기 관광지">인기 관광지
				&nbsp;
				 <input type="radio" name="관광지" value="지역 맛집">지역 맛집
					&nbsp;&nbsp; 
					<input style="font-size: 20px;" type="submit" value="선택">
			</div>
		</form>
	</div>
	<%
	List<FavoriteTravelDTO> fList = (List) request.getAttribute("fList");
	List<RestaurantDTO> rList = (List) request.getAttribute("rList");
	String loc = (String) request.getAttribute("loc");
	if (loc != null) {
	%>
	<!-- 지도 -->
	<div style="width: 100%; height: 920px; background-color: white;">

		<div id="map" style="width: 63%; height: 95%; float: left;"></div>
		<div id="list" style="float: left;">
			<div class="container-fluid py-4" style="margin-top: 0px;">
				<div class="row">
					<div class="col-12" style="width: 650px; height: 95%;">
						<div class="card mb-4">
							<div class="card-header pb-0" style="margin-top: 0px;">
								<h3><%=request.getSession().getAttribute("area")%>의
									<%=loc%>
									리스트
								</h3>
							</div>
							<div class="card-body px-0 pt-0 pb-2">
								<div class="table-responsive p-0">
									<table class="table align-items-center mb-0">
										<thead>
											<tr style="font-size:20px;">
												<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">순위</th>
												<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">이름 및 주소</th>
											</tr>
										</thead>
										<tbody>
											<%
											if (loc.equals("인기 관광지")) {
											for (int i = 0; i < 10; i++) {
											%>
											<tr>
												<td style="width:20px;">
													<p class="text-xs font-weight-bold mb-0"><%=i + 1%></p>
												</td>
												<td>
													<div class="d-flex px-2 py-1">
														<div class="d-flex flex-column justify-content-center loc">
															<h3 class="mb-0 text-sm"><%=fList.get(i).getTravel_spot_name()%></h3>
															<p class="text-xs text-secondary mb-0"><%=fList.get(i).getTravel_spot_addr()%></p>
														</div>
													</div>
												</td>
											</tr>
											<%}
											} else if (loc.equals("지역 맛집")) {
											for (int i = 0; i < 10; i++) {%>
											<tr>
												<td style="width:20px;">
													<p class="text-xs font-weight-bold mb-0"><%=i + 1%></p>
												</td>
												<td>
													<div class="d-flex px-2 py-1">
														<div class="d-flex flex-column justify-content-center loc">
															<h3 class="mb-0 text-sm"><%=rList.get(i).getRestaurant_name()%></h3>
															<p class="text-xs text-secondary mb-0"><%=rList.get(i).getRestaurant_addr()%></p>
														</div>
													</div>
												</td>
											</tr>
											<%}
											}%>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				

		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8baa64f319aa790ee9e2e48123cf3e4e&libraries=services"></script>
		<script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
        		<%String area = (String) request.getSession().getAttribute("area");
				if (area.equals("광주")) {%>
                	center: new kakao.maps.LatLng(35.176526445801024, 126.86876961961522), // 지도의 중심좌표
                <%} else if (area.equals("목포")) {%>
                	center: new kakao.maps.LatLng(34.80669672817822, 126.40576752194544), // 지도의 중심좌표
                <%} else if (area.equals("담양")) {%>
                	center: new kakao.maps.LatLng(35.32400365304959, 126.99720654629182), // 지도의 중심좌표
                <%} else if (area.equals("순천")) {%>
                	center: new kakao.maps.LatLng(34.95113855753754, 127.4881392650499), // 지도의 중심좌표
                <%} else if (area.equals("여수")) {%>
                	center: new kakao.maps.LatLng(34.7644094466046, 127.66285261134806), // 지도의 중심좌표
                <%}%>
                level: 6 // 지도의 확대 레벨
            };

        // 지도를 생성합니다    
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new kakao.maps.services.Geocoder();

        // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
        <%if (loc.equals("인기 관광지")) {%>
        var markers = [
        	<%for (int i = 0; i < 10; i++) {%>
        		"<%=fList.get(i).getTravel_spot_addr()%>",
        	<%}%>
        ]
        var m_name = [
        	<%for (int i = 0; i < 10; i++) {%>
    			"<%=fList.get(i).getTravel_spot_name()%>",
    		<%}%>
        ]
		<%} else if (loc.equals("지역 맛집")) {%>
		var markers = [
			<%for (int i = 0; i < 10; i++) {%>
    			"<%=rList.get(i).getRestaurant_addr()%>",
    		<%}%>
		]
	    var m_name = [
	    	<%for (int i = 0; i < 10; i++) {%>
    			"<%=rList.get(i).getRestaurant_name()%>",
    		<%}%>
	    ]
		<%}%>
       

        var locList = document.getElementsByClassName("loc");

        // 주소로 좌표를 검색합니다
        for (let i = 0; i <= markers.length; i++) {
            geocoder.addressSearch(markers[i], function (result, status) {

                // 정상적으로 검색이 완료됐으면 
                if (status === kakao.maps.services.Status.OK) {

                    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                   /*  function addMarker(position) {

                        // 마커를 생성합니다
                        var marker = new kakao.maps.Marker({
                            position: position
                        });

                        // 마커가 지도 위에 표시되도록 설정합니다
                        marker.setMap(map);

                        // 생성된 마커를 배열에 추가합니다
                        markers.push(marker);
                    } */

                    // 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
                    function setMarkers(map) {
                        for (var i = 0; i < markers.length; i++) {
                            markers[i].setMap(map);
                        }
                    }

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                        map: map,
                        position: coords
                    });

                    // 인포윈도우로 장소에 대한 설명을 표시합니다
                    // var infowindow = new kakao.maps.InfoWindow({
                    //   content: `<div style="width:150px; text-align:center; padding:6px 0;">${m_name[i]}</div>`
                    // });
                    // infowindow.open(map, marker);

                    //var iwContent = `<div style="width:150px; text-align:center; padding:6px 0;">${m_name[i]}</div>`; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

                    // 인포윈도우를 생성합니다
                    // var infowindow = new kakao.maps.InfoWindow({
                    //     content: iwContent
                    // });


                    // infowindow를 list 사용해서 띄우기

                    // 1) mouse 올렸을 때 이벤트를 등록
                    // all.addEventListener('mouseover', function () {
                       // allinfowindow(marker, m_name[i]);
                        // infowindow.open(map, marker);
                    //})

                    // 1) mouse가 빠져 나갔을 때 infowindow 닫는 작업
                   // all.addEventListener('mouseout', function () {
                      //  infowindow.close();
                    //})

                    locList[i].addEventListener('mouseover', function () {
                    	console.log(m_name[i]);
                        displayInfowindow(marker, m_name[i], coords);
                    });

                    locList[i].addEventListener('mouseout', function () {
                        infowindow.close();
                    })


                    // 마커에 마우스오버 이벤트를 등록합니다
                    kakao.maps.event.addListener(marker, 'mouseover', function () {
                        // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
                        console.log(m_name[i]);
                        mouseinfowindow(marker, m_name[i]);
                        // infowindow.open(map, marker);
                    });

                    // 마커에 마우스아웃 이벤트를 등록합니다
                    kakao.maps.event.addListener(marker, 'mouseout', function () {
                        // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
                        infowindow.close();
                    });


                }
            });
        }

        function displayInfowindow(marker, m_name, coords) {
            var iwContent = '<div style="width:150px; text-align:center; padding:6px 0;">'+m_name+'</div>';

            infowindow.setContent(iwContent);
            infowindow.open(map, marker);
            map.setCenter(coords);

        }

        function mouseinfowindow(marker, m_name) {
        	 var iwContent = '<div style="width:150px; text-align:center; padding:6px 0;">'+m_name+'</div>';

            infowindow.setContent(iwContent);
            infowindow.open(map, marker);
        }


        // for문과 if문을 사용하여 원하는 마커에만 인포윈도우 뜨게하기



    // 첫 화면시 인기 관광지 화면과 라디오에 인기관광지로 체크 되어있게 하기



    </script>
		<%
		}
		%>
	
</body>

</html>