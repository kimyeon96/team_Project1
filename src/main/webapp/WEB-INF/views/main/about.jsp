<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        .search1{
            font-family: 'Material Icons';
            font-weight: normal;
            font-style: normal;
            font-size: 24px;
            line-height: 2.0838;
            border-radius: 5px;
            background-color: black;
            letter-spacing: normal;
            text-transform: none;
            display: inline-block;
            white-space: nowrap;
            word-wrap: normal;
            direction: ltr;
            -webkit-font-feature-settings: 'liga';
            -webkit-font-smoothing: antialiased;
        }
    </style>
</head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="icon" href="/images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet" href="/css/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<link rel="stylesheet" href="https://rawgit.com/LeshikJanz/libraries/master/Bootstrap/baguetteBox.min.css">
<link rel="stylesheet" href="메인화면1.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<body class="main-layout inner_page">

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
                    <a href="/index.html"></a>
                </div>
            </div>
            <div class="col-lg-10 offset-lg-1 col-md-12 col-sm-9">
                <div class="navbar-area">
                    <nav class="site-navbar">
                        <ul>
                            <li><a class="active" href="index">Home</a></li>
                            <li><a href="about.html">즐겨찾기</a></li>
                            <li><a href="action.html">내 주변 병원 찾기</a></li>
                            <li><a href="index.html" class="logo_midle">Medical Helper</a></li>
                            <li><a href="news.html">민간 구급차 검색</a></li>
                            <li><a href="emergency">응급실 조건 검색</a></li>

                            <li><a href="contact.html">Contact </a></li>
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
    <!--</1><div class="dropdown">
<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
메뉴
</a>

<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
<li><a class="dropdown-item" href="#">즐겨찾기</a></li>
<li><a class="dropdown-item" href="#">내 주변 병원 찾기</a></li>
<li><a class="dropdown-item" href="#">민간구급차 검색</a></li>
<li><a class="dropdown-item" href="#">응급실 조건 검색</a></li>
<li><a class="dropdown-item" href="#">의견 올리기</a></li>
<li><a class="dropdown-item" href="#">공지사항</a></li>
</ul>
</div>-->
    <div class="right">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"
        <body>

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
                "pluginKey": "b17906a1-346e-4465-972a-2fc6feddcb16"
            });
        </script>
        <!-- End Channel Plugin -->

        <div class="menu">
            <div class="search">
                <input type="text" placeholder="입력" style="width:100px;height:50px;font-size:30px; position: relative top:80px; left :80px;" >
                <div class="search1">search </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row d_flex">
            <div class="col-sm-3 logo_sm">
                <div class="logo">
                    <a href="/index.html"></a>
                </div>
            </div>
            <div class="col-lg-10 offset-lg-1 col-md-12 col-sm-9">
                <div class="navbar-area">
                    <nav class="site-navbar">

                        <button class="nav-toggler">
                            <span></span>
                        </button>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <!-- end header -->
    <!-- about -->
    <div class="about">
        <div class="container_width">
            <div class="row d_flex">
                <div class="col-md-7">
                    <div class="titlepage text_align_left">
                        <h2>당신만을 위한 맞춤형 긴급의료시스템
                            <hr>
                            Medical Helper </h2>
                        <p>English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for
                        </p>
                        <a class="read_more" href="#">긴급호출 버튼 자리</a>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="about_img text_align_center">
                        <figure><img src="/TeamMark.png"></figure>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- end about -->

    <!--  footer -->
    <!-- end footer -->

    <!-- Javascript files-->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/custom.js"></script>
    <script defer src="/mainjs.js"></script>


<!-- 연이 버튼 코드 -->
    <div style="width: auto; height: auto;">

        <button class="favorite styled"
                type="button" style="float: left; width: 25%; height: auto">
            <div id="comp-khywrch6" class="_1vNJf">
                <div id="bgLayers_comp-khywrch6" data-hook="bgLayers" class="_3wnIc">
                    <div data-testid="colorUnderlay" class="_3KzuS _3SQN-"></div>
                    <div id="bgMedia_comp-khywrch6" class="_2GUhU"></div>
                </div>
                <div data-mesh-id="comp-khywrch6inlineContent" data-testid="inline-content" class="">
                    <div data-mesh-id="comp-khywrch6inlineContent-gridContainer" data-testid="mesh-container-content">
                        <div id="comp-ki2wna6e" class="" data-angle="0" data-angle-style-location="style"
                             style="visibility: inherit;" data-screen-in-hide="done">
                            <div data-testid="svgRoot-comp-ki2wna6e" class="_3bLYT _2OIRR">

                                <svg preserveAspectRatio="xMidYMid meet" data-bbox="53 38 94 124" viewBox="53 38 94 124"
                                     height="200" width="200" xmlns="http://www.w3.org/2000/svg" data-type="color"
                                     role="presentation" aria-hidden="true" aria-labelledby="svgcid--hb4dm4ygvj8i">
                                    <title id="svgcid--hb4dm4ygvj8i"></title>
                                    <g>
                                        <path fill="#0063a0" d="M147 38v8.8H53V38h94z" data-color="1"></path>
                                        <path d="M53 162h37.8v-29.7h16.8V162H147V56.8H53V162zm9.3-96.2h75.4v87.3h-20.9v-29.7H81.5v29.7H62.3V65.8z"
                                              fill="#0063a0" data-color="1"></path>
                                        <path fill="#00c5a2"
                                              d="M95.4 107h9.2v-8.5h8.8v-8.8h-8.8v-8.4h-9.2v8.4h-8.8v8.8h8.8v8.5z"
                                              data-color="2"></path>
                                    </g>
                                </svg>
                            </div>
                        </div>
                        <div id="comp-ki2vu4ow" class="_2Hij5 _3bcaz" data-testid="richTextElement"><p class="font_3"
                                                                                                       style="line-height:1.1em; text-align:center; font-size:28px;">
                            <span class="color_21"><span style="letter-spacing:normal;">응급실</span></span></p></div>
                    </div>
                </div>
            </div>
        </button>

        <button class="favorite styled"
                type="button" style="float: left; width: 25%; height: auto">
            <div id="comp-khywrch73" class="_1vNJf">
                <div id="bgLayers_comp-khywrch73" data-hook="bgLayers" class="_3wnIc">
                    <div data-testid="colorUnderlay" class="_3KzuS _3SQN-"></div>
                    <div id="bgMedia_comp-khywrch73" class="_2GUhU"></div>
                </div>
                <div data-mesh-id="comp-khywrch73inlineContent" data-testid="inline-content" class="">
                    <div data-mesh-id="comp-khywrch73inlineContent-gridContainer" data-testid="mesh-container-content">
                        <div id="comp-l8e671li" class="" data-angle="0" data-angle-style-location="style"
                             style="visibility: inherit;" data-screen-in-hide="done">
                            <div data-testid="svgRoot-comp-l8e671li" class="_3bLYT _2OIRR">
                                <svg preserveAspectRatio="xMidYMid meet" data-bbox="10 10 180 180"
                                     viewBox="10 10 180 180" height="200" width="200" xmlns="http://www.w3.org/2000/svg"
                                     data-type="color" role="presentation" aria-hidden="true"
                                     aria-labelledby="svgcid--8dwgbaqa86jw">
                                    <defs>
                                        <style>#comp-l8e671li svg [data-color="1"] {
                                            fill: #C72E00;
                                        }</style>
                                    </defs>
                                    <title id="svgcid--8dwgbaqa86jw"></title>
                                    <g>
                                        <path d="M100 10c-49.627 0-90 40.374-90 90s40.374 90 90 90 90-40.374 90-90-40.374-90-90-90zm0 175.14c-46.947 0-85.141-38.194-85.141-85.14S53.053 14.86 100 14.86s85.14 38.194 85.14 85.14-38.193 85.14-85.14 85.14z"
                                              fill="#003449" data-color="1"></path>
                                        <path d="M115.527 51.148H84.425v32.074H55.267v34.017h30.13v32.074h30.13v-32.074h29.158V83.222h-29.158V51.148zm24.298 36.934v24.298h-29.158v32.074h-20.41V112.38h-30.13V88.082h29.158V56.008h21.383v32.074h29.157z"
                                              fill="#003449" data-color="1"></path>
                                    </g>
                                </svg>
                            </div>
                        </div>
                        <div id="comp-ki2vu6tp" class="_2Hij5 _3bcaz" data-testid="richTextElement"><p class="font_3"
                                                                                                       style="line-height:1.1em; text-align:center; font-size:28px;">
                            <span style="letter-spacing:normal;"><span class="color_21">병의원</span></span></p></div>
                    </div>
                </div>
            </div>
        </button>

        <button class="favorite styled"
                type="button" style="float: left; width: 25%; height: auto">
            <div id="comp-khywrch9" class="_1vNJf">
                <div id="bgLayers_comp-khywrch9" data-hook="bgLayers" class="_3wnIc">
                    <div data-testid="colorUnderlay" class="_3KzuS _3SQN-"></div>
                    <div id="bgMedia_comp-khywrch9" class="_2GUhU"></div>
                </div>
                <div data-mesh-id="comp-khywrch9inlineContent" data-testid="inline-content" class="">
                    <div data-mesh-id="comp-khywrch9inlineContent-gridContainer" data-testid="mesh-container-content">
                        <div id="comp-ki2wnebk" class="" data-angle="0" data-angle-style-location="style"
                             style="visibility: inherit;" data-screen-in-hide="done">
                            <div data-testid="svgRoot-comp-ki2wnebk" class="_3bLYT _2OIRR">
                                <!--?xml version="1.0" encoding="UTF-8"?-->
                                <svg preserveAspectRatio="xMidYMid meet" data-bbox="20 20 160 160"
                                     viewBox="20 20 160 160" height="200" width="200" xmlns="http://www.w3.org/2000/svg"
                                     data-type="color" role="presentation" aria-hidden="true"
                                     aria-labelledby="svgcid--4ewhb2qo4kol">
                                    <defs>
                                        <style>#comp-ki2wnebk svg [data-color="1"] {
                                            fill: #F7F24F;
                                        }</style>
                                    </defs>
                                    <title id="svgcid--4ewhb2qo4kol"></title>
                                    <g>
                                        <path d="M128.253 147.446a3.804 3.804 0 0 1-1.778-.44L100 133.036l-26.475 13.97a3.811 3.811 0 0 1-5.533-4.011l5.06-29.607-21.43-20.965a3.809 3.809 0 0 1 2.114-6.493l29.603-4.317 13.242-26.929a3.81 3.81 0 0 1 6.838 0l13.241 26.929 29.604 4.317a3.812 3.812 0 0 1 2.114 6.493l-21.43 20.965 5.06 29.607a3.809 3.809 0 0 1-3.755 4.451zM100 124.919c.611 0 1.221.147 1.778.44l21.419 11.302-4.094-23.958a3.81 3.81 0 0 1 1.091-3.365l17.355-16.98-23.972-3.496a3.813 3.813 0 0 1-2.869-2.089L100 64.997 89.292 86.773a3.813 3.813 0 0 1-2.869 2.089l-23.971 3.496 17.355 16.98a3.809 3.809 0 0 1 1.091 3.365l-4.094 23.958 21.419-11.302a3.797 3.797 0 0 1 1.777-.44z"
                                              fill="#112F5B" data-color="1"></path>
                                        <path d="M166.032 180H33.968C26.266 180 20 173.734 20 166.032V33.968C20 26.266 26.266 20 33.968 20h132.064C173.734 20 180 26.266 180 33.968v132.064c0 7.702-6.266 13.968-13.968 13.968zM33.968 27.619a6.356 6.356 0 0 0-6.349 6.349v132.064a6.356 6.356 0 0 0 6.349 6.349h132.064a6.356 6.356 0 0 0 6.349-6.349V33.968a6.356 6.356 0 0 0-6.349-6.349H33.968z"
                                              fill="#112F5B" data-color="1"></path>
                                    </g>
                                </svg>
                            </div>
                        </div>
                        <div id="comp-ki2vu938" class="_2Hij5 _3bcaz" data-testid="richTextElement"><p class="font_3"
                                                                                                       style="line-height:1.1em; text-align:center; font-size:28px;">
                            <span class="color_21"><span style="letter-spacing:normal;">즐겨찾기</span></span></p></div>
                    </div>
                </div>
            </div>
        </button>

        <button class="favorite styled"
                type="button" style="float: left; width: 25%; height: auto">
            <div id="comp-khywru9b" class="_1vNJf">
                <div id="bgLayers_comp-khywru9b" data-hook="bgLayers" class="_3wnIc">
                    <div data-testid="colorUnderlay" class="_3KzuS _3SQN-"></div>
                    <div id="bgMedia_comp-khywru9b" class="_2GUhU"></div>
                </div>
                <div data-mesh-id="comp-khywru9binlineContent" data-testid="inline-content" class="">
                    <div data-mesh-id="comp-khywru9binlineContent-gridContainer" data-testid="mesh-container-content">
                        <div id="comp-ki2wlp0w" class="" data-angle="0" data-angle-style-location="style"
                             style="visibility: inherit;" data-screen-in-hide="done">
                            <div data-testid="svgRoot-comp-ki2wlp0w" class="_3bLYT _2OIRR">
                                <!--?xml version="1.0" encoding="UTF-8"?-->
                                <svg preserveAspectRatio="xMidYMid meet" data-bbox="20 22.747 160.003 154.506"
                                     xmlns="http://www.w3.org/2000/svg" viewBox="20 22.747 160.003 154.506"
                                     height="200" width="200" xmlns="http://www.w3.org/2000/svg"
                                     data-type="color" role="presentation" aria-hidden="true"
                                     aria-labelledby="svgcid--xek8s785rkh0"><title id="svgcid--xek8s785rkh0"></title>
                                    <g>
                                        <path d="M126.171 49.665v123.143H24.444V49.665h101.727z" fill="#FFFFFF"
                                              data-color="1"></path>
                                        <path fill="#2E3A48"
                                              d="M126.172 177.253H24.444A4.444 4.444 0 0120 172.809V49.666a4.444 4.444 0 014.444-4.444h101.727a4.444 4.444 0 014.444 4.444v123.142a4.443 4.443 0 01-4.443 4.445zm-97.283-8.889h92.839V54.11H28.889v114.254z"
                                              data-color="2"></path>
                                        <path fill="#2E3A48"
                                              d="M69.199 84.896H45.86a4.444 4.444 0 010-8.888h23.339a4.444 4.444 0 010 8.888z"
                                              data-color="2"></path>
                                        <path fill="#2E3A48"
                                              d="M104.755 115.681H45.86a4.444 4.444 0 010-8.888h58.894a4.444 4.444 0 01.001 8.888z"
                                              data-color="2"></path>
                                        <path fill="#2E3A48"
                                              d="M104.755 146.467H45.86a4.444 4.444 0 010-8.888h58.894a4.444 4.444 0 01.001 8.888z"
                                              data-color="2"></path>
                                        <path d="M159.305 59.151c0 17.651-14.309 31.96-31.96 31.96-17.651 0-31.96-14.309-31.96-31.96 0-17.651 14.309-31.96 31.96-31.96 17.651 0 31.96 14.309 31.96 31.96z"
                                              fill="#EA6F66" data-color="3"></path>
                                        <path fill="#2E3A48"
                                              d="M127.345 95.538c-9.323 0-18.645-3.548-25.741-10.646-6.876-6.876-10.663-16.018-10.663-25.741 0-9.724 3.787-18.866 10.663-25.741 6.875-6.876 16.017-10.663 25.741-10.663 9.723 0 18.865 3.787 25.741 10.663 14.194 14.193 14.194 37.288 0 51.482-7.096 7.098-16.419 10.646-25.741 10.646zm0-63.902c-7.35 0-14.259 2.862-19.456 8.059-5.196 5.197-8.059 12.106-8.059 19.456 0 7.349 2.862 14.259 8.059 19.456 10.728 10.727 28.183 10.727 38.913 0 10.727-10.729 10.727-28.185 0-38.913-5.198-5.195-12.108-8.058-19.457-8.058z"
                                              data-color="2"></path>
                                        <path fill="#2E3A48"
                                              d="M175.556 111.807a4.428 4.428 0 01-3.142-1.302l-24.106-24.106a4.443 4.443 0 010-6.285 4.443 4.443 0 016.285 0l24.106 24.106a4.443 4.443 0 01-3.143 7.587z"
                                              data-color="2"></path>
                                    </g>
                                </svg>
                            </div>
                        </div>
                        <div id="comp-ki2vqyay" class="_2Hij5 _3bcaz" data-testid="richTextElement"><p class="font_3"
                                                                                                       style="line-height:1.1em; text-align:center; font-size:28px;">
                            <span style="letter-spacing:normal;"><span class="color_21">응급실 조건 검색</span></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </button>
    </div>

</body>
</html>