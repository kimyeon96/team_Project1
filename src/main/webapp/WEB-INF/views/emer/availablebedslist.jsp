<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>

    <meta charset="utf-8">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="author" content="soledot">
    <meta name="description" content="응급실 실시간 가용 병상정보를 제공하는 페이지입니다.">
    <meta name="keywords" content="응급실,실시간병상정보,산재지정병원,병원,질병,의료,약국,질병,질환,치료,의사,암,간암,병원포털,의료포털,의료정보,의약품"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#00a3c8">
    <meta name="robots" content="ALL">

    <meta property="og:title" content="응급실 실시간 가용 병상정보 - 의료정보포털 메디서비스">
    <meta property="og:description" content="응급실 실시간 병상 정보를 리스트형으로 제공하는 페이지입니다.">
    <meta property="og:image" content="https://medisvc.com/data/img/etc/medisvc_300x300.png">
    <meta property="og:url" content="null://www.medisvc.com/hospital/fo/availablebedslist.sd">
    <meta property="og:type" content="website">

    <link rel="canonical" href="null://www.medisvc.com/hospital/fo/availablebedslist.sd">

    <title>응급실 실시간 가용 병상정보 - 의료정보포털 메디서비스</title>

    <!-- commoncss -->


    <!-- Favicon and Touch Icons -->
    <link href="/resources/sitedesign/images/favicon.png" rel="shortcut icon" type="image/png">
    <link href="/resources/sitedesign/images/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="/resources/sitedesign/images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
    <link href="/resources/sitedesign/images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
    <link href="/resources/sitedesign/images/apple-touch-icon-144x144.png" rel="apple-touch-icon" sizes="144x144">

    <!-- Stylesheet -->
    <link href="/resources/sitedesign/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/resources/sitedesign/css/jquery-ui.min.css" rel="stylesheet" type="text/css">
    <link href="/resources/sitedesign/css/animate.css" rel="stylesheet" type="text/css">
    <link href="/resources/sitedesign/css/css-plugin-collections.css" rel="stylesheet"/>
    <!-- CSS | menuzord megamenu skins -->

    <link id="menuzord-menu-skins" href="/resources/sitedesign/css/menuzord-skins/menuzord-subcolored.css"
          rel="stylesheet"/>

    <!-- CSS | Main style file -->
    <link href="/resources/sitedesign/css/style-main.css" rel="stylesheet" type="text/css">
    <!-- CSS | Preloader Styles -->

    <!-- CSS | Custom Margin Padding Collection -->
    <link href="/resources/sitedesign/css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">
    <!-- CSS | Responsive media queries -->
    <link href="/resources/sitedesign/css/responsive.css" rel="stylesheet" type="text/css">
    <!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
    <!-- <link href="/resources/sitedesign/css/style.css" rel="stylesheet" type="text/css"> -->

    <!-- CSS | Theme Color -->
    <link href="/resources/sitedesign/css/colors/theme-skin-blue.css" rel="stylesheet" type="text/css">

    <link href="/resources/soledot/css/fo/soledot.css" rel="stylesheet" type="text/css">

    <!-- commonheaderjs -->


    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-STS26RBNRC"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'G-STS26RBNRC');
    </script>

    <!-- external javascripts -->
    <script src="/resources/sitedesign/js/jquery-2.2.0.min.js"></script>
    <script src="/resources/sitedesign/js/jquery-ui.min.js"></script>
    <script src="/resources/sitedesign/js/bootstrap.min.js"></script>
    <!-- JS | jquery plugin collection for this theme -->
    <script src="/resources/sitedesign/js/jquery-plugin-collection.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    <script data-ad-client="ca-pub-3935451468089596" async
            src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

</head>
<body class="has-side-panel side-panel-right fullwidth-page side-push-panel">


<div class="body-overlay"></div>
<div id="side-panel" class="dark">
    <div class="side-panel-wrap">
        <div id="side-panel-trigger-close" class="side-panel-trigger">
            <a href="#"><i class="icon_close font-30"></i></a>
        </div>

        <div class="side-panel-nav mt-30">
            <div class="widget no-border">
                <nav>
                    <ul class="nav nav-list">
                        <li><a href="/home/fo/index.sd">Home</a></li>


                        <li><a href="/user/fo/memberlogin.sd">로그인</a></li>
                        <li><a href="/user/fo/memberaddtype.sd">회원가입</a></li>


                        <li><a class="tree-toggler nav-header" style="cursor: pointer;">고객센터 <i
                                class="fa fa-angle-down"></i></a>
                            <ul class="nav nav-list tree">
                                <li><a href="/help/fo/noticelist.sd">공지사항</a></li>
                                <li><a href="/help/fo/faqlist.sd">FAQ</a></li>
                                <li><a href="/help/fo/oneonelist.sd">1:1상담</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!--
			<div class="clearfix"></div>
			<div class="side-panel-widget mt-30">
				<div class="widget no-border">
					<ul>
						<li class="font-14 mb-5"><i
							class="fa fa-phone text-theme-colored"></i> <a href="#"
							class="text-gray">123-456-789</a></li>
						<li class="font-14 mb-5"><i
							class="fa fa-clock-o text-theme-colored"></i> Mon-Fri 8:00 to
							2:00</li>
						<li class="font-14 mb-5"><i
							class="fa fa-envelope-o text-theme-colored"></i> <a href="#"
							class="text-gray">contact@yourdomain.com</a></li>
					</ul>
				</div>
				<div class="widget">
					<ul class="social-icons icon-dark icon-theme-colored icon-sm">
						<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					</ul>
				</div>
				<p>Copyright &copy;2016 ThemeMascot</p>
			</div>
			 -->
    </div>
</div>


<div id="wrapper" class="clearfix">

    <!-- header -->


    <!-- preloader -->
    <!-- 		<div id="preloader"> -->
    <!-- 			<div id="spinner"> -->

    <!-- 			</div> -->
    <!-- 			<div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div> -->
    <!-- 		</div> -->

    <!-- Header -->
    <header id="header" class="header">
        <div class="header-top bg-theme-colored sm-text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="widget no-border m-0">
                            <ul class="list-inline xs-text-center mt-5">
                                <li class="m-0"><a class="text-white" href="/help/fo/index.sd">고객센터</a></li>
                                <li class="text-white m-0">|</li>
                                <li class="m-0"><a class="text-white" href="/help/fo/faqlist.sd">FAQ</a></li>
                                <li class="text-white m-0">|</li>
                                <li class="m-0"><a class="text-white" href="/home/fo/contact.sd">Contact Us</a></li>
                                <!-- 									<li class="text-white m-0">|</li> -->

                                <!-- 									<li class="text-white m-0">|</li> -->

                                <!-- 									<li class="text-white m-0">|</li> -->

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="widget no-border m-0">
                            <ul class="list-inline pull-right flip sm-pull-none sm-text-center mt-5">


                                <li class="m-0 pl-10 pr-10 text-white">로그인 또는 회원가입이 필요합니다.</li>


                                <li class="sm-display-block mt-sm-10 mb-sm-10">
                                    <a class="bg-light p-5 text-theme-colored font-11 pl-10 pr-10" data-toggle="modal"
                                       data-target="#loginModal" href="#">로그인</a>
                                </li>
                                <li class="sm-display-block mt-sm-10 mb-sm-10">
                                    <a class="bg-light p-5 text-theme-colored font-11 pl-10 pr-10"
                                       href="/user/fo/memberaddtype.sd">회원가입</a>
                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <li class="active">
            <a href="javascript:void(0)">병원·진료</a>
            <ul class="dropdown">
                <!-- 										<li><a href="#">병원지도</a> -->
                <li><a href="/hospital/fo/hospitalsurroundlist.sd">주변병원찾기</a></li>
                <li><a href="/hospital/fo/aedaround.sd">주변 자동심장충격기</a></li>


                <li><a href="/hospital/fo/department/49/departmenthospitallist.sd">치과</a></li>
                <li>
                    <a href="/hospital/fo/emergencymedicallist.sd">응급의료정보</a>
                    <ul class="dropdown">
                        <li><a href="/hospital/fo/emergencymedicallist.sd">응급의료기관</a></li>
                        <li><a href="/hospital/fo/availablebedslist.sd">응급실 실시간 가용병상</a></li>

                        <li><a href="/hospital/fo/severeillnessavailablelist.sd">중증질환 수용가능 병원정보</a></li>
                        <li><a href="/hospital/fo/traumacenterlist.sd">외상센터</a></li>
                        <li><a href="/hospital/fo/ambulancelist.sd">구급차</a></li>
                        <li><a href="/hospital/fo/aedlist.sd">자동심장충격기</a></li>
                    </ul>
                </li>


                <!-- Start main-content -->
                <div class="main-content">
                    <!-- Section: inner-header -->
                    <section class="inner-header divider layer-overlay overlay-light"
                             data-bg-img="/data/img/hdbg/medications-342456_1920.jpg">
                        <div class="container pt-90 pb-50">
                            <!-- Section Content -->
                            <div class="section-content">
                                <div class="row">
                                    <div class="col-md-12 xs-text-center">
                                        <h3 class="text-theme-colored font-36">응급실 실시간 가용 병상정보</h3>
                                        <ol class="breadcrumb white mt-10">
                                            <li><a href="javascript:void(0);">Home</a></li>
                                            <li><a href="javascript:void(0);">병원·진료</a></li>
                                            <li><a href="javascript:void(0);">응급의료정보</a></li>
                                            <li class="active text-theme-colored">응급실 실시간 가용 병상정보</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- Section: event calendar -->
                    <section>
                        <div class="container pb-0">
                            <div class="section-title mb-0">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3">
                                        <div class="text-center">
                                            <h2 class="sub-title">응급실 실시간 가용 병상정보</h2>
                                            <h3 class="title">

                                                2022-10-20(22:39)

                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="container-fluid">
                            <form action="availablebedslist.sd" id="frm" name="frm" method="post">
                                <input id="s_pagenum" name="s_pagenum" type="hidden" value=""/>
                                <input id="s_pagesize" name="s_pagesize" type="hidden" value=""/>
                                <input id="hsis_seq" name="hsis_seq" type="hidden"/>
                                <input id="hsis_seqarr" name="hsis_seqarr" type="hidden"/>

                                <div class="row">
                                    <div class="form-group col-md-4">
                                        <select class="form-control" id="emrusi_sidoname" name="emrusi_sidoname">
                                            <option value="서울특별시" selected="selected">서울특별시</option>
                                            <option value="경기도">경기도</option>
                                            <option value="강원도">강원도</option>
                                            <option value="광주광역시">광주광역시</option>
                                            <option value="대구광역시">대구광역시</option>
                                            <option value="대전광역시">대전광역시</option>
                                            <option value="부산광역시">부산광역시</option>
                                            <option value="울산광역시">울산광역시</option>
                                            <option value="인천광역시">인천광역시</option>
                                            <option value="경상남도">경상남도</option>
                                            <option value="경상북도">경상북도</option>
                                            <option value="세종특별자치시">세종특별자치시</option>
                                            <option value="전라남도">전라남도</option>
                                            <option value="전라북도">전라북도</option>
                                            <option value="제주특별자치도">제주특별자치도</option>
                                            <option value="충청남도">충청남도</option>
                                            <option value="충청북도">충청북도</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <input class="form-control" id="s_like_emrusi_dutyname"
                                               name="s_like_emrusi_dutyname" placeholder="병원명" value=""/>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <a href="javascript:dataSearch();"
                                           class="btn btn-dark btn-transparent btn-theme-colored btn-lg btn-flat btn-block form-control"><i
                                                class="fa fa-search"></i> 검색</a>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive">

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100008');return false;">
                                                            (학)고려대학교의과대학부속병원(안암병원)
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-920-5374">02-920-5374</a>
                                                    </td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">23</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">-1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">106</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 담낭담관질환(담낭질환)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : ERCP 장비 교체 공사로
                                                        ERCP 시술 필요 환자 수용 불가<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-20 00:00 ~
                                                        2022-10-27 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : ERCP 장비 교체 공사로
                                                        ERCP 시술 필요 환자 수용 불가<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-20 00:00 ~
                                                        2022-10-27 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 담낭담관질환(담도포함질환)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : ERCP 장비 교체 공사로
                                                        ERCP 시술 필요 환자 수용 불가<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-20 00:00 ~
                                                        2022-10-27 23:59
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100011');return false;">
                                                            가톨릭대학교여의도성모병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-3779-1188">02-3779-1188</a>
                                                    </td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">13</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">76</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1121013');return false;">
                                                            가톨릭대학교은평성모병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:1811-7755">1811-7755</a>
                                                    </td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">19</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">75</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100043');return false;">
                                                            강동경희대학교의대병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-440-7000">02-440-7000</a>
                                                    </td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">159</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 격리실 소독관련 전산반영체계
                                                        미구축으로 격리실 현황 실제와 다를 수 있음<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-18 00:00 ~
                                                        2022-10-25 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 성형외과,
                                                        구강악안면외과(치과), 정신건강의학과 환자 응급실 진료 불가<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-18 00:00 ~
                                                        2022-10-25 23:59
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100006');return false;">
                                                            강북삼성병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2001-1009">02-2001-1009</a>
                                                    </td>
                                                    <td class="text-center">-6</td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">70</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100002');return false;">
                                                            건국대학교병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2030-5555">02-2030-5555</a>
                                                    </td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">18</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">205</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 성형외과 단순봉합 진료
                                                        불가능합니다<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-18 17:30 ~
                                                        2022-10-21 17:30
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100039');return false;">
                                                            경찰병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-3400-1300">02-3400-1300</a>
                                                    </td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">10</td>
                                                    <td class="text-center">93</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100001');return false;">
                                                            경희대학교병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-958-8282">02-958-8282</a>
                                                    </td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">184</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : CPR 환자 핫라인:
                                                        010-5146-9883<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-18 08:15 ~
                                                        2022-10-24 08:00
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100014');return false;">
                                                            고려대학교의과대학부속구로병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2626-1550">02-2626-1550</a>
                                                    </td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">18</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">9</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">55</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100026');return false;">
                                                            구로성심병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2067-1515">02-2067-1515</a>
                                                    </td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">75</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100048');return false;">
                                                            노원을지대학교병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-970-8282">02-970-8282</a>
                                                    </td>
                                                    <td class="text-center">11</td>
                                                    <td class="text-center">11</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">138</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 심근경색의 재관류중재술<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 심근경색의 재관류중재술 야간
                                                        ,주말, 공휴일 불가<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-20 17:00 ~
                                                        2022-10-21 09:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 소아청소년과 24개월 미만
                                                        소아 진료 불가<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-19 09:00 ~
                                                        2022-10-26 09:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 병동 의료가스 공사로 병상
                                                        부족하오니 이송 전 확인 바랍니다.<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-14 11:09 ~
                                                        2022-10-21 00:00
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100044');return false;">
                                                            녹색병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-490-2113">02-490-2113</a>
                                                    </td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">79</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100037');return false;">
                                                            대림성모병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-829-9129">02-829-9129</a>
                                                    </td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">22</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100024');return false;">
                                                            명지성모병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-829-7800">02-829-7800</a>
                                                    </td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">69</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100036');return false;">
                                                            부민병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2620-0119">02-2620-0119</a>
                                                    </td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">46</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100010');return false;">
                                                            삼성서울병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-3410-2060">02-3410-2060</a>
                                                    </td>
                                                    <td class="text-center">-25</td>
                                                    <td class="text-center">55</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">11</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">77</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100021');return false;">
                                                            삼육서울병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2210-3566">02-2210-3566</a>
                                                    </td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">127</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">N</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100017');return false;">
                                                            서울대학교병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2072-2475">02-2072-2475</a>
                                                    </td>
                                                    <td class="text-center">-12</td>
                                                    <td class="text-center">38</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">74</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">17</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100050');return false;">
                                                            서울성심병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-966-1616">02-966-1616</a>
                                                    </td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">21</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100029');return false;">
                                                            서울적십자병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2002-8888">02-2002-8888</a>
                                                    </td>
                                                    <td class="text-center">9</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">203</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100022');return false;">
                                                            서울특별시동부병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-920-9119">02-920-9119</a>
                                                    </td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">136</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100040');return false;">
                                                            서울특별시보라매병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-870-2119">02-870-2119</a>
                                                    </td>
                                                    <td class="text-center">17</td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">179</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100223');return false;">
                                                            서울특별시서남병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-6300-9129">02-6300-9129</a>
                                                    </td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">11</td>
                                                    <td class="text-center">211</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 위장관 응급내시경(성인)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 불가능메세지등록<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-15 00:00 ~
                                                        2022-10-22 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 산부인과 응급(부인과수술)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 불가능메세지등록<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-15 00:00 ~
                                                        2022-10-22 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 기관지 응급내시경(성인)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 불가능메세지등록<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-15 00:00 ~
                                                        2022-10-22 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급투석(HD)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 불가능메세지등록<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-15 00:00 ~
                                                        2022-10-22 23:59
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100035');return false;">
                                                            서울특별시서울의료원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2276-7403">02-2276-7403</a>
                                                    </td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">9</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">195</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100028');return false;">
                                                            성심의료재단강동성심병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2224-2358">02-2224-2358</a>
                                                    </td>
                                                    <td class="text-center">9</td>
                                                    <td class="text-center">13</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">152</td>
                                                    <td class="text-center">-1</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : [산부인과] 과내 인력부족으로
                                                        응급실 진료 불가 [평일 오후 5:30~익일 오전7:30/토요일 오전 7:00~월요일 오전7:30] <br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-17 17:00 ~
                                                        2022-10-24 17:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : [성형외과] MN~06AM까지
                                                        응급실 진료불가<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-17 17:00 ~
                                                        2022-10-24 17:00
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100054');return false;">
                                                            성애의료재단성애병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-840-7115">02-840-7115</a>
                                                    </td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">107</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100032');return false;">
                                                            세란병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-737-0181">02-737-0181</a>
                                                    </td>
                                                    <td class="text-center">9</td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">35</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100004');return false;">
                                                            순천향대학교부속서울병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-709-9117">02-709-9117</a>
                                                    </td>
                                                    <td class="text-center">20</td>
                                                    <td class="text-center">13</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">152</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100041');return false;">
                                                            에이치플러스양지병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:070-4665-9119">070-4665-9119</a>
                                                    </td>
                                                    <td class="text-center">12</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100015');return false;">
                                                            연세대학교의과대학강남세브란스병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2019-3333">02-2019-3333</a>
                                                    </td>
                                                    <td class="text-center">-12</td>
                                                    <td class="text-center">22</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">11</td>
                                                    <td class="text-center">60</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100007');return false;">
                                                            연세대학교의과대학세브란스병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2227-7777">02-2227-7777</a>
                                                    </td>
                                                    <td class="text-center">-32</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">181</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 격리진료구역병상 성인/소아
                                                        구분 신고 체계 미비로 실제 정보와 다를 수 있음.<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-17 00:00 ~
                                                        2022-10-23 23:59
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100025');return false;">
                                                            의료법인동신의료재단동신병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-396-9161">02-396-9161</a>
                                                    </td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">82</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">N</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">N</td>
                                                    <td class="text-center">N</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100030');return false;">
                                                            의료법인성화의료재단대한병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-905-9110">02-905-9110</a>
                                                    </td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">44</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100023');return false;">
                                                            의료법인청구성심병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-383-0129">02-383-0129</a>
                                                    </td>
                                                    <td class="text-center">9</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">59</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100075');return false;">
                                                            의료법인풍산의료재단동부제일병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-490-8880">02-490-8880</a>
                                                    </td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">43</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100020');return false;">
                                                            의료법인한전의료재단한일병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-901-3119">02-901-3119</a>
                                                    </td>
                                                    <td class="text-center">12</td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">-1</td>
                                                    <td class="text-center">75</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">N</td>
                                                    <td class="text-center">N</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100005');return false;">
                                                            이화여자대학교의과대학부속목동병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2650-5911">02-2650-5911</a>
                                                    </td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">12</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">101</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 소아심정지, 소아외상 진료만
                                                        가능 함<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-20 10:00 ~
                                                        2022-10-27 10:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 성형외과 의료진 부족으로 매일
                                                        (0시 부터 오전8시까지) 단순봉합 불가능 함<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-15 10:00 ~
                                                        2022-10-22 10:00
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1120796');return false;">
                                                            이화여자대학교의과대학부속서울병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-6986-5119">02-6986-5119</a>
                                                    </td>
                                                    <td class="text-center">-1</td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">112</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100016');return false;">
                                                            인제대학교상계백병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-950-1119">02-950-1119</a>
                                                    </td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">11</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">93</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 응급실 성형외과
                                                        진료가능시간(월~목 09:00~12:00)이외시간은 진료 불가능<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-20 00:00 ~
                                                        2022-10-26 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 응급실 소아과 진료가능시간
                                                        (월~금 08:00~16:00)이외 시간은 진료 불가능<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-20 00:00 ~
                                                        2022-10-22 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 정신과적 응급입원<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 보호병동 임시중단으로 정신과
                                                        응급 입원불가<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-18 00:00 ~
                                                        2022-10-24 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 외과환자는
                                                        야간시간(17:00~08:00) 반드시 수용능력 확인<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-17 00:00 ~
                                                        2022-10-23 23:59
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100033');return false;">
                                                            인제대학교서울백병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2270-0119">02-2270-0119</a>
                                                    </td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">65</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100009');return false;">
                                                            재단법인아산사회복지재단서울아산병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-3010-3333">02-3010-3333</a>
                                                    </td>
                                                    <td class="text-center">-11</td>
                                                    <td class="text-center">74</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">150</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 성인 응급실 성형외과 단순봉합
                                                        진료 불가능합니다.<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-17 09:15 ~
                                                        2022-10-24 23:59
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100003');return false;">
                                                            중앙대학교병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-6299-1338">02-6299-1338</a>
                                                    </td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">198</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100012');return false;">
                                                            학교법인가톨릭학원가톨릭대학교서울성모병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2258-2002">02-2258-2002</a>
                                                    </td>
                                                    <td class="text-center">-5</td>
                                                    <td class="text-center">29</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">23</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">120</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">6</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100053');return false;">
                                                            한국보훈복지의료공단중앙보훈병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2225-1100">02-2225-1100</a>
                                                    </td>
                                                    <td class="text-center">20</td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">280</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">10</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">7</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 위장관 응급내시경(성인)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 과내사정으로 인해
                                                        불가능<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-18 23:59 ~
                                                        2022-10-25 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 위장관 응급내시경(성인)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 위장관 응급내시경,
                                                        담낭담관(담도포함)질환 과내 사정으로인해 불가능<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-18 23:59 ~
                                                        2022-10-25 23:59
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 담낭담관질환(담도포함질환)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 과내 담당자 부재로인해 불가능<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-18 09:53 ~
                                                        2022-10-25 23:59
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100027');return false;">
                                                            한국원자력의학원원자력병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-970-2620">02-970-2620</a>
                                                    </td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">10</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">109</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100055');return false;">
                                                            한림대학교강남성심병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-829-5119">02-829-5119</a>
                                                    </td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">111</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100013');return false;">
                                                            한양대학교병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2290-8284">02-2290-8284</a>
                                                    </td>
                                                    <td class="text-center">10</td>
                                                    <td class="text-center">16</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">215</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">4</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">Y</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 응급실<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 응급<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 소아과 의료진 인력부재로
                                                        소아환자 진료 불가(17시-09시)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-20 17:00 ~
                                                        2022-10-21 09:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 대동맥응급(복부)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 외과계 질환 환자 전원 수용
                                                        불가(외과 의료 인력 부족)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-16 08:37 ~
                                                        2022-10-23 08:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 장중첩/폐색(유아)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 외과계 질환 환자 전원 수용
                                                        불가(외과 의료 인력 부족)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-16 08:37 ~
                                                        2022-10-23 08:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 대동맥응급(흉부)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 외과계 질환 환자 전원 수용
                                                        불가(외과 의료 인력 부족)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-16 08:37 ~
                                                        2022-10-23 08:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 담낭담관질환(담도포함질환)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 외과계 질환 환자 전원 수용
                                                        불가(외과 의료 인력 부족)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-16 08:37 ~
                                                        2022-10-23 08:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 복부응급수술(비외상)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 외과계 질환 환자 전원 수용
                                                        불가(외과 의료 인력 부족)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-16 08:37 ~
                                                        2022-10-23 08:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 담낭담관질환(담낭질환)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 외과계 질환 환자 전원 수용
                                                        불가(외과 의료 인력 부족)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-16 08:37 ~
                                                        2022-10-23 08:00
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100051');return false;">
                                                            혜민병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2049-9119">02-2049-9119</a>
                                                    </td>
                                                    <td class="text-center">9</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 담낭담관질환(담낭질환)<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 불가능메세지등록<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-20 00:00 ~
                                                        2022-10-26 23:00
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="19" style="background-color: #f1cac3;">
                                                        <span class="font-weight-600" style="color: #ed300b;">항목</span>
                                                        : 뇌출혈수술(거미막하 출혈) 외<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">응급/중증 구분</span> : 중증<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">진료불가 메시지</span> : 불가능메세지등록<br/>
                                                        <span class="font-weight-600"
                                                              style="color: #ed300b;">예상시간</span> : 2022-10-20 00:00 ~
                                                        2022-10-26 23:00
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100019');return false;">
                                                            홍익병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored" href="tel:02-2600-0777">02-2600-0777</a>
                                                    </td>
                                                    <td class="text-center">8</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">114</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                            <table class="table table-striped table-hover table-bordered">
                                                <colgroup>
                                                    <col style="width:15%">
                                                    <col style="width:7%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                    <col style="width:4%">
                                                </colgroup>
                                                <thead>
                                                <tr class="bg-theme-colored" data-text-color="white">
                                                    <th class="text-center vmiddle">병원명</th>
                                                    <th class="text-center vmiddle">응급실전화</th>
                                                    <th class="text-center vmiddle">응급실</th>
                                                    <th class="text-center vmiddle">수술실</th>
                                                    <th class="text-center">신경<br/>중환자실</th>
                                                    <th class="text-center">신생아<br/>중환자실</th>
                                                    <th class="text-center">흉부<br/>중환자실</th>
                                                    <th class="text-center">일반<br/>중환자실</th>
                                                    <th class="text-center vmiddle">입원실</th>
                                                    <th class="text-center">내과<br/>중환자실</th>
                                                    <th class="text-center">외과<br/>중환자실</th>
                                                    <th class="text-center">외과입원실<br/>(정형외과)</th>
                                                    <th class="text-center">신경과<br/>입원실</th>
                                                    <th class="text-center">신경외과<br/>중환자실</th>
                                                    <th class="text-center">약물<br/>중환자</th>
                                                    <th class="text-center">화상<br/>중환자</th>
                                                    <th class="text-center">외상<br/>중환자</th>
                                                    <th class="text-center vmiddle">소아</th>
                                                    <th class="text-center vmiddle">인큐베이터</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a class="text-theme-colored" href="#"
                                                           onclick="egytlistinfoinqireView('A1100049');return false;">
                                                            희명병원
                                                        </a>
                                                    </td>
                                                    <td class="text-center">
                                                        <a class="text-theme-colored"
                                                           href="tel:02-809-0122">02-809-0122</a>
                                                    </td>
                                                    <td class="text-center">9</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center">100</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">Y</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                    <td class="text-center">0</td>
                                                </tr>

                                                </tbody>
                                            </table>

                                        </div>

                                        <div class="row text-right">
                                            <div class="col-md-12">*실시간 자료이며 상황에 따라 차이가 발생할 수 있습니다.</div>
                                        </div>

                                    </div>
                                </div>

                            </form>
                        </div>
                    </section>
                </div>
                <!-- end main-content -->

                <!-- footer content -->


                <!-- Footer -->
                <footer id="footer" class="footer pb-0" data-bg-img="/resources/sitedesign/images/footer-bg.png">
                    <div class="container pb-20">
                        <div class="row multi-row-clearfix">
                            <div class="col-sm-6 col-md-3">
                                <div class="widget">
                                    <!-- 					<img alt="" src="images/logo-wide-white.png"> -->
                                    <p class="font-12 mt-20 mb-10">의료정보포털 메디서비스는 대한민국 국민이 보다 건강한 삶을 누릴 수 있도록 다양한 의료정보를
                                        제공하고 있습니다.</p>
                                    <!-- 					<a class="text-gray font-12" href="#"><i class="fa fa-angle-double-right text-theme-colored"></i> Read more</a> -->
                                    <ul class="social-icons icon-dark mt-20">
                                        <li><a href="http://blog.naver.com/soledot" target="_blank"
                                               data-bg-color="#039b08"><strong>N</strong></a></li>
                                        <li><a href="http://facebook.com/soledotcorp" target="_blank"
                                               data-bg-color="#3B5998"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="http://twitter.com/soledotcorp" target="_blank"
                                               data-bg-color="#02B0E8"><i class="fa fa-twitter"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="widget">
                                    <h5 class="widget-title line-bottom">Pages</h5>
                                    <ul class="list-border list theme-colored angle-double-right">
                                        <li><a href="/home/fo/index.sd">Home</a></li>
                                        <li><a href="/hospital/fo/area/all/hospitallist.sd">병원 리스트</a></li>
                                        <li><a href="/medicine/fo/area/all/pharmacylist.sd">약국 리스트</a></li>
                                        <li><a href="/disease/fo/diseaselist.sd">질병 리스트</a></li>
                                        <li><a href="/medicaldevice/fo/devicelist.sd">의료기기 리스트</a></li>
                                        <li><a href="/food/fo/nutrientlist.sd">식품영양성분 리스트</a></li>
                                        <li><a href="/cosmetics/fo/cosmeticscompanylist.sd">화장품 제조판매 리스트</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="widget">
                                    <h5 class="widget-title line-bottom">Quick Links</h5>
                                    <ul class="list-border list theme-colored angle-double-right">
                                        <li><a href="/user/fo/memberaddtype.sd">회원가입</a></li>
                                        <li><a href="/help/fo/index.sd">고객센터</a></li>
                                        <li><a href="/help/fo/noticelist.sd">공지사항</a></li>
                                        <li><a href="/help/fo/faqlist.sd">FAQ</a></li>
                                        <li><a href="/help/fo/agreement/commontextview.sd">이용약관</a></li>
                                        <li><a href="/help/fo/privacy/commontextview.sd">개인정보처리방침</a></li>
                                        <li><a href="/help/fo/dataprovider.sd">자료제공기관 안내</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="widget">
                                    <h5 class="widget-title line-bottom">Quick Contact</h5>
                                    <ul class="list list-border">
                                        <li><a href="tel:070-8886-1979">070-8886-1979</a></li>
                                        <li><a href="mailTo:master@medisvc.com">master@medisvc.com</a></li>
                                        <li><a href="/home/fo/contact.sd" class="lineheight-20">(12919) 경기 하남시 조정대로 85
                                            220호</a></li>
                                        <li><a href="mailTo:master@medisvc.com" class="lineheight-20">광고·제휴 문의</a></li>
                                    </ul>
                                    <!-- 					<p class="mb-5 mt-15">Subscribe to our newsletter</p> -->
                                    <!-- 					<form id="mailchimp-subscription-form" class="newsletter-form mt-10"> -->
                                    <!-- 						<div class="input-group"> -->
                                    <!-- 							<input type="email" value="" name="EMAIL" placeholder="Your Email" class="form-control" data-height="37px" id="mce-EMAIL">  -->
                                    <!-- 							<span class="input-group-btn"> -->
                                    <!-- 								<button type="submit" class="btn btn-colored btn-theme-colored m-0"> <i class="fa fa-paper-plane-o text-white"></i></button> -->
                                    <!-- 							</span> -->
                                    <!-- 						</div> -->
                                    <!-- 					</form> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid bg-theme-colored p-20">
                        <div class="row text-center">
                            <div class="col-md-12">
                                <p class="text-white font-11 m-0">Copyright &copy;2019 <a href="http://soledot.com"
                                                                                          target="_blank"
                                                                                          class="text-white font-weight-600">엔카이나로크</a>
                                    All Rights Reserved</p>
                            </div>
                        </div>
                    </div>
                </footer>

                <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- end wrapper -->

<div class="modal fade" id="mapModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title text-center" id="mapModalLabel"></h4>
            </div>
            <div class="modal-body">
                <div class="center-block" id="map" style="width: 100%;height: 350px;"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>

<!-- commonfootjs -->


<!-- JS | Custom script for all pages -->
<script src="/resources/sitedesign/js/custom.js"></script>

<!-- notify -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/mouse0270-bootstrap-notify/3.1.7/bootstrap-notify.min.js"></script>

<!-- jquery-cookie-->
<script src="/resources/common/js/jquery-cookie/jquery.cookie.js"></script>

<!-- soledot -->
<script src="/resources/soledot/js/fo/soledot.js"></script>

<script>
    var ss_mbid = '';
    var ss_mbtype = '';

    $(function () {
        //---*페이지 체크
        var result = '';
        var resultUrl = '';
        if ('N' == result) {
            alert('');
            if ('' != resultUrl) {
                location.href = resultUrl;
                return;
            } else {
                location.href = '/home/fo/index.sd';
                return;
            }
        }
    });

    function loginCk() {
        if ('' == ss_mbid) {
            failNotify('로그인 후 이용가능합니다.', '/user/fo/memberlogin.sd');
            return false;
        } else {
            return true;
        }
    }

    // 	var messengerSocket = new WebSocket('ws://www.medisvc.com:80/memberaccessserver');
    // 	messengerSocket.onopen = function(event) {
    // 		onMessengerOpen(event)
    // 	};

    // 	function onMessengerOpen(event) {
    // 		var msg = '{"content":"", "curUrl":"null://www.medisvc.com/hospital/fo/availablebedslist.sd" }';
    // 		messengerSocket.send(msg);
    // 	}

    //---*모달 사용 시 필요 20190213
    // 	function getLoginModal(){
    // 		loadingModalContent.load();
    // 	}

    // 	var loadingModalContent = {
    // 		loadContentBool: true
    // 		,load: function() {
    // 			var self = this;
    // 			if( self.loadContentBool ){
    // 				alert(this.loadContentBool);
    // 				$.ajax({
    // 				 	dataType: 'html'
    // 					,success: function (data) {
    // 						alert('success');
    // 						$('body').append(data);
    // 						self.loadContentBool = false;
    // 					}
    // 					,url: "/medisvc/resources/soledot/jsp/fo/loginmodal.html"
    // 				});
    // 			}
    // 		}
    // 	}

    function nvPop(title, targetUrl) {
        window.open('http://share.naver.com/web/shareView.nhn?url=' + encodeURI(encodeURIComponent(targetUrl)) + '&title=' + encodeURI(title), 'naverPop', "width=400, height=500, resizable=no, scrollbars=no, status=no;");
    }

    function fbPop(targetUrl) {
        window.open('https://www.facebook.com/sharer/sharer.php?u=' + targetUrl, 'fbPop', "width=400, height=400, resizable=no, scrollbars=no, status=no;");
    }

    function twtPop(text, targetUrl) {
        window.open('https://twitter.com/intent/tweet?text=' + encodeURIComponent(text) + '&url=' + targetUrl, 'fbPop', "width=695, height=493, resizable=no, scrollbars=no, status=no;");
    }

    function logoutAjax() {
        $.ajax({
            url: '/user/fo/memberlogoutajax.sd'
        });
    }

</script>

<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=385a88f73e3281e71517df1c8435c9e5&libraries=services"></script>

<script type="text/javascript">

    function dataList() {
        $.soledot.move('availablebedslist.sd');
    }

    function dataRowSize() {
        $('#s_pagenum').val(1);
        $.soledot.submit('', 'availablebedslist.sd');
    }

    function dataSearch() {

        var $searchField = $('#searchField');
        var $searchWord = $('#searchWord');
        if ('' != $searchWord.val() && '' == $searchField.val()) {
            failNotify('검색 분류를 선택해주십시오.');
            return;
        }

        $('#s_pagenum').val(1);
        $.soledot.submit('', 'availablebedslist.sd');
    }

    function egytlistinfoinqireView(emrusi_hpid) {
        window.open('emergencymedicalview.sd?egytli_hpid=' + emrusi_hpid);
    }

</script>

</body>
</html>