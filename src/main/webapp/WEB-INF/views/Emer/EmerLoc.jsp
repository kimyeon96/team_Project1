<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCtype html>
<html lang="en">
<head>
    <style>
        content{
            text-align: center;
        }
    </style>
    <meta charset="UTF-8">
    <title>병원 위치</title>


    <script src="/js/jquery-3.6.1.min.js"></script>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d685052ce079910535cf78a59b3e04ee"></script>



    <script>
        window.onload = lo;

        function lo() {

            $.ajax({

                url: "/Emer/getEmerLoc",
                type: "get",
                dataType: "JSON",
                data: {},
                success: function (response) {


                    for (let i = 0; i < response.length; i++) {
                        let dn = response[i]["dutyName"]; //item.dutyName; //뱡워이름
                        let lat = response[i]["latitude"]; //위도
                        let lon = response[i]["longitude"]; //경도

                        $("#loc").append("<div><b>병원이름 : " + dn + "</b></div>");
                        $("#loc").append("<div><b>위도 : " + lat + "</b></div>")
                        $("#loc").append("<div><b>경도 : " + lon + "</b></div>")
                        $("#loc").append("<br>")
                    }


                }
            })
        }
    </script>
</head>
<body>

<div id="map" style="width:100%;height:100vh;"></div>
<script>

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(37.550000, 126.842280), // 지도의 중심좌표
            level: 7 // 지도의 확대 레벨
        };


    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다

    var positions = [];
    $.ajax({
        url: "/Emer/getEmerLoc",
        dataType: "json",
        success: function (data){
            for(var i=0; i<data.length; i++){
                positions.push({
                    content: data[i]["dutyName"],
                    latlng: new kakao.maps.LatLng(data[i]["latitude"], data[i]["longitude"])
                })

            }
        },
        error:function (request, status,error){
            console.log("실패")
        },
        async:false
    });

    var imageSrc = 'https://mblogthumb-phinf.pstatic.net/MjAxNzA0MTFfOTYg/MDAxNDkxOTEyNzI0NDE0.lf8i78icId3ppRmHuSfZfD3R9IJd2c5e5fobDB4U_Scg.bax6tfO8rDk6VIneVqrIpSiu6hf3VCWp_Fo5Q87aKLEg.PNG.tkdgns3/google-maps-marker-for-residencelamontagne-hi.png?type=w800', // 마커이미지의 주소입니다
        imageSize = new kakao.maps.Size(30, 50) // 마커이미지의 크기입니다
    // imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵
    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize),
        markerPosition = new kakao.maps.LatLng(37.550000, 126.842280); // 마커가 표시될 위치입니다

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition,
        image: markerImage // 마커이미지 설정
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);

    for (var i = 0; i < positions.length; i++) {
        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            map: map, // 마커를 표시할 지도
            position: positions[i].latlng // 마커의 위치
        });

        // 마커에 표시할 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: positions[i]["content"] // 인포윈도우에 표시할 내용
        });

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
    }

    // 인포윈도우를 표시하는 클로저를 만드는 함수입니다
    function makeOverListener(map, marker, infowindow) {
        return function () {
            infowindow.open(map, marker);
        };
    }

    // 인포윈도우를 닫는 클로저를 만드는 함수입니다
    function makeOutListener(infowindow) {
        return function () {
            infowindow.close();
        };
    }

    /* 아래와 같이도 할 수 있습니다 */
    /*
    for (var i = 0; i < positions.length; i ++) {
        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            map: map, // 마커를 표시할 지도
            position: positions[i].latlng // 마커의 위치
        });

        // 마커에 표시할 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: positions[i].content // 인포윈도우에 표시할 내용
        });

        // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
        // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        (function(marker, infowindow) {
            // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                infowindow.open(map, marker);
            });

            // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });
        })(marker, infowindow);
    }
    */</script>


</body>
</html>