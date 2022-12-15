<%
    //Controller로부터 전달받은 데이터
    List<ConDTO> conList = (List<ConDTO>) request.getAttribute("conList");
%>
<%@ page import="jdk.internal.instrumentation.Logger" %>
<%@ page import="kopo.poly.dto.ConDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="kopo.poly.util.CmmUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>웹페이지 제목</title>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=740f24d1a74ccd422897c9fc4e7e13c9"></script>
</head>
<body>
<%
    for (ConDTO rDTO : conList) {
%>
<div id="map" style="width:350px;height:600px;"></div>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(<%= CmmUtil.nvl(rDTO.getLatParam()) %>, <%= CmmUtil.nvl(rDTO.getLonParam()) %>), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 마커가 표시될 위치입니다
    var markerPosition  = new kakao.maps.LatLng(<%= CmmUtil.nvl(rDTO.getLatParam()) %>, <%= CmmUtil.nvl(rDTO.getLonParam()) %>);

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    <% } %>
</script>
</body>
</html>