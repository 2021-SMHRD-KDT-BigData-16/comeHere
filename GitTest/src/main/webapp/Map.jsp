<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>

    <style>
        body {
            background-color: #f8f9fa;
        }

        #map {
            margin-left: 25px;
            position: relative;
            top: 20px;

        }

        #card-body {}

        #title>p {}

        #local {
            margin-left: 38%;
        }

        .a {
            font-size: 20px;
        }
    </style>

</head>

<body>
    <div id="card-body">
        <div>
            <h1 style="font-size: 80px color=#343a40;" align="center">오랑께가 알려주는 맛집 & 인기관광지</h1>
        </div>
    </div>

    <div class="a">
        <select id="local" name="local" style="width:200px; font-size:20px;">
            <option value="광주">광주</option>
            <option value="담양">담양</option>
            <option value="목포">목포</option>
            <option value="순천">순천</option>
            <option value="여수">여수</option>
        </select>
        &nbsp;&nbsp;&nbsp;
        <span>
            <input type="radio" name="관광지" value="인기 관광지">인기 관광지
            <input type="radio" name="관광지" value="지역 맛집">지역 맛집
        </span>
        &nbsp;&nbsp;&nbsp;
        <input style="font-size: 20px;" type="submit" value="검색">
    </div>

    <!-- 지도 -->
    <div style="width: 100%; height:800px; background-color: white; margin-top: 20px;">

        <div id="map" style="width:63%;height:95%; float:left;"></div>
        <div id="list" style="float:left;">
            <div>
                <h2 id="all"> &nbsp;&nbsp;인기관광지 리스트</h2>
            </div>
            <div>
                <ul style="font-size: 20px;">
                    <li class="loc" id="li_1" style="font-size: 25px;"><b>1. 신세계백화점 광주점</b>
                        <ul type="square" style="font-size: 17px;">
                            <li class="loc_add">광주 서구 무진대로 932-0</li>
                        </ul>
                    </li>
                    <li class="loc" id="li_2" style="font-size: 25px;"><b>2. 김대중 컨벤션센터</b>
                        <ul type="square" style="font-size: 17px;">
                            <li class="loc_add">광주 서구 상무누리로 30-0</li>
                        </ul>
                    </li>
                    <li class="loc" id="li_3" style="font-size: 25px;"><b>3. 광주 공항</b>
                        <ul type="square" style="font-size: 17px;">
                            <li class="loc_add">광주 광산구 상무대로 420-25</li>
                        </ul>
                    </li>
                    <li class="loc" id="li_4" style="font-size: 25px;"><b>4. 메가박스 광주하남</b>
                        <ul type="square" style="font-size: 17px;">
                            <li class="loc_add">광주 광산구 풍영철길로 15-0</li>
                        </ul>
                    </li>
                    <li class="loc" id="li_5" style="font-size: 25px;"><b>5. 롯데백화점 광주점</b>
                        <ul type="square" style="font-size: 17px;">
                            <li class="loc_add">광주 동구 독립로 268-0</li>
                        </ul>
                    </li>
                    <li class="loc" id="li_6" style="font-size: 25px;"><b>6. 이마트 광산점</b>
                        <ul type="square" style="font-size: 17px;">
                            <li class="loc_add">광주 광산구 사암로 172-0</li>
                        </ul>
                    </li>
                    <li class="loc" id="li_7" style="font-size: 25px;"><b>7. 롯데아울렛 광주수완점</b>
                        <ul type="square" style="font-size: 17px;">
                            <li class="loc_add">광주 광산구 장신로 98-0</li>
                        </ul>
                    </li>
                    <li class="loc" id="li_8" style="font-size: 25px;"><b>8. 세정아울렛</b>
                        <ul type="square" style="font-size: 17px;">
                            <li class="loc_add">"광주 서구 상무대로 773-0"</li>
                        </ul>
                    </li>
                    <li class="loc" id="li_9" style="font-size: 25px;"><b>9. 롯데마트 수완점</b>
                        <ul type="square" style="font-size: 17px;">
                            <li class="loc_add">광주 광산구 장신로 98-0</li>
                        </ul>
                    </li>
                    <li class="loc" id="li_10" style="font-size: 25px;"><b>10. NC웨이브 충장점</b>
                        <ul type="square" style="font-size: 17px;">
                            <li class="loc_add">광주 동구 중앙로 163-0</li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8baa64f319aa790ee9e2e48123cf3e4e&libraries=services"></script>
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(35.176526445801024, 126.86876961961522), // 지도의 중심좌표
                level: 7 // 지도의 확대 레벨
            };

        // 지도를 생성합니다    
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new kakao.maps.services.Geocoder();

        // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
        var markers = ["광주 서구 무진대로 932-0", "광주 서구 상무누리로 30-0", "광주 광산구 상무대로 420-25", "광주 광산구 풍영철길로 15-0", "광주 동구 독립로 268-0", "광주 광산구 사암로 172-0",
            "광주 광산구 장신로 98-0", "광주 서구 상무대로 773-0", "광주 광산구 장신로 98-0", "광주 동구 중앙로 163-0"]

        var m_name = ["신세계백화점 광주점", "김대중 컨벤션센터", "광주 공항", "메가박스 광주하남", "롯데백화점 광주점", "이마트 광산점", "롯데아울렛 광주수완점", "세정아울렛", "롯데마트 수완점",
            "NC웨이브 충장점"]

        var locList = document.getElementsByClassName("loc");

        // 주소로 좌표를 검색합니다
        for (let i = 0; i <= markers.length; i++) {
            geocoder.addressSearch(markers[i], function (result, status) {

                // 정상적으로 검색이 완료됐으면 
                if (status === kakao.maps.services.Status.OK) {

                    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                    function addMarker(position) {

                        // 마커를 생성합니다
                        var marker = new kakao.maps.Marker({
                            position: position
                        });

                        // 마커가 지도 위에 표시되도록 설정합니다
                        marker.setMap(map);

                        // 생성된 마커를 배열에 추가합니다
                        markers.push(marker);
                    }

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
                    all.addEventListener('mouseover', function () {
                        allinfowindow(marker, m_name[i]);
                        // infowindow.open(map, marker);
                    })

                    // 1) mouse가 빠져 나갔을 때 infowindow 닫는 작업
                    all.addEventListener('mouseout', function () {
                        infowindow.close();
                    })

                    locList[i].addEventListener('mouseover', function () {
                        displayInfowindow(marker, m_name[i]);
                    });

                    locList[i].addEventListener('mouseout', function () {
                        infowindow.close();
                    })


                    // 마커에 마우스오버 이벤트를 등록합니다
                    kakao.maps.event.addListener(marker, 'mouseover', function () {
                        // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
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

        function displayInfowindow(marker, m_name) {
            var iwContent = `<div style="width:150px; text-align:center; padding:6px 0;">${m_name}</div>`;

            infowindow.setContent(iwContent);
            infowindow.open(map, marker);

        }

        function mouseinfowindow(marker, m_name) {
            var iwContent = `<div style="width:150px; text-align:center; padding:6px 0;">${m_name}</div>`;

            infowindow.setContent(iwContent);
            infowindow.open(map, marker);
        }


        // for문과 if문을 사용하여 원하는 마커에만 인포윈도우 뜨게하기



    // 첫 화면시 인기 관광지 화면과 라디오에 인기관광지로 체크 되어있게 하기



    </script>
</body>

</html>