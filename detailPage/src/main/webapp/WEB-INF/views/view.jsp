<%--
  Created by IntelliJ IDEA.
  User: minu
  Date: 10/24/23
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>recommend_detail_page</title>
    <link rel="stylesheet" href="/css/view_css.css" type="text/css">

</head>
<body>
<div class="header">
    <div class="logo">

    </div>

</div>
<div class="container">
    <div class="title">
        <div class="title_container">
            <div class="title_Wrap">
                <h2>
                    <em>${dto.recommend_travel_title}</em>
                </h2>
            </div>
            <div class="title_addr">
                <span>${dto.recommend_travel_address}</span>
            </div>


        </div>
    </div>

    <div class="content">
        <div class="content_img">
            <img src="${dto.recommend_travel_img}"
        </div>

        <div class="content_subimg">
            <ul>
                <li><img src="이미지샘플/수지.png"></li>
                <li><img src="이미지샘플/짱구.png"></li>
                <li><img src="이미지샘플/맹구.png"></li>
            </ul>
        </div>

        <div class="detail">
            <h3>상세정보</h3>
        </div>

        <div class="detail_content">
            <p>${dto.recommend_travel_content}</p>
        </div>

        <div class="map">
            <div id="map"></div>
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9a9243386f258c5d107f2416e0bf8f4e"></script>
            <script>
                var mapContainer = document.getElementById('map');
                var mapOptions = {
                    center: new kakao.maps.LatLng(${dto.recommend_travel_mapy}, ${dto.recommend_travel_mapx}),
                    level: 3        // 지도 확대 레벨
                };

                var map = new kakao.maps.Map(mapContainer, mapOptions);
                //마커가 표시될 위치
                var markerPosition = new kakao.maps.LatLng(${dto.recommend_travel_mapy}, ${dto.recommend_travel_mapx});
                // 마커 생성
                var marker = new kakao.maps.Marker({
                    position: markerPosition
                });

                // 마커가 지도 위에 표시되게 설정
                marker.setMap(map);

                // 마커를 지도 위에서 제거하는 코드
                // marker.setMap(null);
            </script>
        </div>

        <div class="nav_detail">
            <div class="ul_left">
                <ul>
                    <li>
                        <strong>문의 및 안내</strong>
                        <span>문의 및 안내</span>
                    </li>
                    <li>
                        <strong>주소</strong>
                        <span>주소</span>
                    </li>
                    <li>
                        <strong>휴일</strong>
                        <span>휴일</span>
                    </li>
                    <li>
                        <strong>이용요금</strong>
                        <span>이용요금</span>
                    </li>
                </ul>
            </div>
            <div class="ul_right">
                <ul>
                    <li>
                        <strong>홈페이지</strong>
                        <span><a>http://</a></span>
                    </li>
                    <li>
                        <strong>이용시간</strong>
                        <span>00 : 00 ~ 00 : 00</span>
                    </li>
                    <li>
                        <strong>주차</strong>
                        <span>있음</span>
                    </li>
                    <li>
                        <strong>체험프로그램</strong>
                        <span>그런거 없음</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
</html>