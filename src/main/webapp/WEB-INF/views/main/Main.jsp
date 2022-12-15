<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>


    <!-- Javascript files-->
    <script type="text/javascript">
        <script src="/maincss.css"></script>
    <script src="/mainjs.js"></script>
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/custom.js"></script>
    <%--Javascript end--%>

    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">

    <!-- site metas -->
    <title>Covido</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- bootstrap css -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">

    <!-- style css -->
    <link rel="stylesheet" href="/css/style.css">

    <!-- Responsive-->
    <link rel="stylesheet" href="/css/responsive.css">

    <!-- fevicon -->
    <link rel="icon" href="/css/images/fevicon.png" type="image/gif" />

    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" >
    <link rel="stylesheet" href="https://rawgit.com/LeshikJanz/libraries/master/Bootstrap/baguetteBox.min.css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous" media="screen"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->
<body class="main-layout inner_page">

<!-- Channel Plugin Scripts -->
<script>
    (function() {
        var w = window;
        if (w.ChannelIO) {
            return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
        }
        var ch = function() {
            ch.c(arguments);
        };
        ch.q = [];
        ch.c = function(args) {
            ch.q.push(args);
        };
        w.ChannelIO = ch;
        function l() {
            if (w.ChannelIOInitialized) {
                return;
            }
            w.ChannelIOInitialized = true;
            var s = document.createElement('script');
            s.type = 'text/javascript';
            s.async = true;
            s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
            s.charset = 'UTF-8';
            var x = document.getElementsByTagName('script')[0];
            x.parentNode.insertBefore(s, x);
        }
        if (document.readyState === 'complete') {
            l();
        } else if (window.attachEvent) {
            window.attachEvent('onload', l);
        } else {
            window.addEventListener('DOMContentLoaded', l, false);
            window.addEventListener('load', l, false);
        }
    })();

    ChannelIO('boot', {
        "pluginKey": "875b5a88-7571-45b5-8dd9-a0d4507a2c64"
    });
</script>
<!-- End Channel Plugin -->
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="/images/loading.gif" alt="#"/></div>
</div>
<!-- end loader -->
<!-- top -->
<!-- header -->
<header class="header-area">
    <div class="left">
        <a href="/Javascript:void(0)"><i class="fa fa-search" aria-hidden="true"></i></a>
    </div>
    <div class="right">
        <a href="/Javascript:void(0)"><i class="fa fa-user" aria-hidden="true"></i></a>
    </div>
    <div class="container">
        <div class="row d_flex">
            <div class="col-sm-3 logo_sm">
                <div class="logo">

                </div>
            </div>
            <div class="col-lg-10 offset-lg-1 col-md-12 col-sm-9">
                <div class="navbar-area">
                    <nav class="site-navbar">
                        <ul>
                            <li><a class="active" href="index">Home</a></li>
                            <li><a href="action.html">맞춤형 동영상</a></li>
                            <li><a href="Emer/EmerInfo">실시간 응급실가용병상</a></li>
                            <li><a href="Emer/EmerLoc">병원 위치</a></li>
                            <li><a href="Amb/AmbInfo">구급차 정보</a></li>
                            <li><a href="EmerSearch2">병의원 리스트</a></li>
                        </ul>
                        <button class="nav-toggler">
                            <span></span>
                        </button>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- end header -->
<div id="map" style="width:100%; height: 100vh;"></div>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwonY43KCkySXlJTXldb8KNPnFM05S00U&callback=initMap&region=kr"></script>
<script>
    function initMap() {
        var kangseopoly = { lat:  37.549775360143265 ,lng: 126.84233038945548  };
        var map = new google.maps.Map(
            document.getElementById('map'), {
                zoom: 17,
                center: kangseopoly
            });

    }


    <div id="googleMap" style="width:100%; height:700px;"></div>

    <script type="text/javascript">
        function myMap(){
        var mapOptions = {
        center:new google.maps.LatLng( 37.549775360143265,126.84233038945548),
        zoom:17
    };
        var map = new google.maps.Map(
        document.getElementById("googleMap")
        , mapOptions );
    }
</script>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCwonY43KCkySXlJTXldb8KNPnFM05S00U&callback=myMap"></script>
</div>

<script type="text/javascript">
    var map;

    function initMap() {
        var polykangseo = { lat: 37.549775360143265 ,lng: 126.84233038945548 };
        map = new google.maps.Map( document.getElementById('map'), {
            zoom: 17,
            center: polykangseo
        });

        new google.maps.Marker({
            position: polykangseo,
            map: map,
            label: "현 위치"
        })
    }
</script>
<!--  footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="hedingh3 text_align_left">
                        <h3>Medical Helper</h3>
                        <ul class="menu_footer">
                            <li><a href="about">about 연동</a></li>
                            <li><a href="javascript:void(0)">즐겨찾기</a></li>
                            <li><a href="javascript:void(0)">내 주변 병원찾기</a></li>
                            <li><a href="javascript:void(0)">민간 구급차 검색</a></li>
                            <li><a href="javascript:void(0)">응급실 조건검색</a></li>
                            <li><a href="javascript:void(0)">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="hedingh3 text_align_left">
                        <h3>About</h3>
                        <p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="hedingh3  text_align_left">
                        <h3>Contact  Us</h3>
                        <ul class="top_infomation">
                            <li><i class="fa fa-map-marker" aria-hidden="true"></i>
                                Making this the first true
                            </li>
                            <li><i class="fa fa-phone" aria-hidden="true"></i>
                                Call : +01 1234567890
                            </li>
                            <li><i class="fa fa-envelope" aria-hidden="true"></i>
                                <a href="Javascript:void(0)">Email : demo@gmail.com</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="hedingh3 text_align_left">
                        <h3>countrys</h3>
                        <div class="map">
                            <img src="/images/map.png" alt="#"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <p>© 2020 All Rights Reserved. Design by <a href="https://html.design/"> Free html Templates</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
</body>
</html>