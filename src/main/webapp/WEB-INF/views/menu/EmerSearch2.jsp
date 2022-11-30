<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <!----상단바---->
    <div class="wrap">
        <div class="top_fix_zone" id="topBar">병의원 리스트</div>
    </div>
    <!----상단바---->
    <meta charset="utf-8">
    <title>UI</title>

    <style>
        <%--css스타일적용--%>
        * {
            font-family: Consolas, sans-serif;
        }

        <!----상단바---->
        .wrap {}
        .wrap div {
            width: 100%;
            text-align: center;
            font-size: 20px;
            font-weight: 700;
            color: #fff;
        }

        .top_bar_fix {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
        }

        .pd_top_80 {
            padding-top: 80px;
        }

        .wrap .top_fix_zone {
            height: 80px;
            background: #d63232;
            line-height: 80px;
        }
        <!----상단바---->

            body {
                font-family: Arial;
            }

        #box1 {
            margin:50px;
        }

        form div {
            vertical-align: middle;
        }

        form div label {
            vertical-align: top;
        }

        form > div > div {
            display: inline-block;
        }

        label {
            display: inline-block;
            width: 100px;
            font-size: 16px;
            padding: 5px;
            margin: 5px;
        }

        input[type=text], input[type=checkbox], select {
            display: inline-block;
            font-size: 16px;
            padding: 5px;
            border-radius: 5px;
            margin: 5px;
        }

        input[type=text] {
            width: 300px;
            border: 1px solid #999999;
        }
        <!-------------------------------------------------->


            label.btn span {
                font-size: 1.5em ;
            }

        label input[type="radio"] ~ i.fa.fa-circle-o{
            color: #c8c8c8;    display: inline;
        }
        label input[type="radio"] ~ i.fa.fa-dot-circle-o{
            display: none;
        }
        label input[type="radio"]:checked ~ i.fa.fa-circle-o{
            display: none;
        }
        label input[type="radio"]:checked ~ i.fa.fa-dot-circle-o{
            color: #7AA3CC;    display: inline;
        }
        label:hover input[type="radio"] ~ i.fa {
            color: #7AA3CC;
        }

        label input[type="checkbox"] ~ i.fa.fa-square-o{
            color: #c8c8c8;    display: inline;
        }
        label input[type="checkbox"] ~ i.fa.fa-check-square-o{
            display: none;
        }
        label input[type="checkbox"]:checked ~ i.fa.fa-square-o{
            display: none;
        }
        label input[type="checkbox"]:checked ~ i.fa.fa-check-square-o{
            color: #7AA3CC;    display: inline;
        }
        label:hover input[type="checkbox"] ~ i.fa {
            color: #7AA3CC;
        }

        div[data-toggle="buttons"] label.active{
            color: #7AA3CC;
        }

        div[data-toggle="buttons"] label {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: normal;
            line-height: 2em;
            text-align: left;
            white-space: nowrap;
            vertical-align: top;
            cursor: pointer;
            background-color: none;
            border: 0px solid
            #c8c8c8;
            border-radius: 3px;
            color: #c8c8c8;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            -o-user-select: none;
            user-select: none;
        }

        div[data-toggle="buttons"] label:hover {
            color: #7AA3CC;
        }

        div[data-toggle="buttons"] label:active, div[data-toggle="buttons"] label.active {
            -webkit-box-shadow: none;
            box-shadow: none;
        }
    </style>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-2.1.0.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>


    <script type="text/javascript">

        function checkAll() {
            if (document.getElementById("checkAll").checked==true) {
                for (var i = 0; i < 11; i++) document.getElementsByName("checkbox")[i].checked = true;
            } else {
                for (var i = 0; i < 11; i++) document.getElementsByName("checkbox")[i].checked = false;
            }
        }
    </script>

    <script>
        function optionChange() {
            var 강원도 = ['춘천시', '원주시', '강릉시', '동해시', '태백시', '속초시', '삼척시', '홍천군', '횡성군', '영월군', '평창군', '정선군', '철원군', '화천군', '양구군', '인제군', '고성군', '양양군']
            var 서울특별시 = ['종로구', '중구', '용산구', '성동구', '광진구', '동대문구', '중랑구', '성북구', '강북구', '도봉구', '노원구', '은평구', '서대문구', '마포구', '양천구', '강서구', '구로구', '금천구', '영등포구', '동작구', '관악구', '서초구', '강남구', '송파구', '강동구'];
            var 경기도 = ['가평군', '고양시', '과천시', '광주시', '구리시', '군포시', '김포시', '남양주시', '동두천시', '성남시', '수정구', '중원구', '분당구', '수원시', '장안구', '권선구', '팔달구', '영통구', '시흥시', '안산시', '상록구', '단원구', '덕양구', '일산동구', '일산서구', '오산시', '안성시', '안양시', '만안구', '동안구', '부천시', '광명시', '양주시', '양평군', '여주시', '연천군', '오산시', '용인시', '의왕시', '의정부시', '이천시', '파주시', '평택시', '포천시', '하남시', '화성시'];
            var 인천광역시 = ['중구', '동구', '미추홀구', '연수구', '남동구', '부평구', '계양구', '서구', '강화군', '옹진군']
            var 충청북도 = ['청주시', '상당구', '서원구', '흥덕구', '청원구', '충주시', '제천시', '보은군', '옥천군', '영동군', '증평군', '진천군', '괴산군', '음성군', '단양군']
            var 충청남도 = ['천안시', '동남구', '서북구', '공주시', '보령시', '아산시', '서산시', '논산시', '계룡시', '당진시', '금산군', '부여군', '서천군', '청양군', '홍성군', '예산군', '태안군']
            var 대전광역시 = ['동구', '중구', '서구', '유성구', '대덕구']
            var 대구광역시 = ['중구', '동구', '서구', '남구', '북구', '수성구', '달서구', '달성군'];
            var 울산광역시 = ['중구', '남구', '동구', '북구', '울주군']
            var 부산광역시 = ['중구', '서구', '동구', '영도구', '부산진구', '동래구', '남구', '북구', '해운대구', '금정구', '수영구', '사상구', '영도구', '부산진구', '해운대구'];
            var 전라북도 = ['전주시', '완산구', '덕진구', '군산시', '익산시', '정읍시', '남원시', '김제시', '완주군', '진안군', '무주군', '장수군', '임실군', '순창군', '고창군', '부안군']
            var 전라남도 = ['목포시', '여수시', '순천시', '나주시', '광양시', '담양군', '곡성군', '구례군', '고흥군', '보성군', '화순군', '장흥군', '강진군', '해남군', '영암군', '무안군', '함평군', '영광군', '장성군', '완도군', '진도군', '신안군']
            var 광주광역시 = ['동구', '서구', '남구', '북구', '광산구']
            var 경상북도 = ['포항시', '남구', '북구', '경주시', '김천시', '안동시', '구미시', '영주시', '영천시', '상주시', '문경시', '경산시', '군위군', '의성군', '청송군', '영양군', '영덕군', '청도군', '고령군', '성주군', '칠곡군', '예천군', '봉화군', '울진군', '울릉군']
            var 경상남도 = ['창원시', '의창구', '성산구', '마산합포구', '마산회원구', '진해구', '진주시', '통영시', '사천시', '김해시', '밀양시', '거제시', '양산시', '의령군', '함안군', '창녕군', '고성군', '남해군', '하동군', '산청군', '함양군', '거창군', '합천군']
            var 세종특별자치시 = ['세종시']
            var 제주특별자치도 = ['제주시', '서귀포시']
            var v = $('#city').val();
            var o;
            if (v == '강원도') {
                o = 강원도;
            } else if (v == '서울특별시') {
                o = 서울특별시;
            } else if (v == '경기도') {
                o = 경기도;
            } else if (v == '인천광역시') {
                o = 인천광역시;
            } else if (v == '충청북도') {
                o=충청북도;
            } else if (v=='충청남도') {
                o=충청남도;
            } else if (v=='대전광역시') {
                o=대전광역시;
            } else if (v == '대구광역시') {
                o = 대구광역시;
            } else if (v=='울산광역시') {
                o=울산광역시;
            } else if (v == '부산광역시') {
                o = 부산광역시;
            } else if (v=='전라북도') {
                o=전라북도;
            } else if (v=='전라남도') {
                o=전라남도;
            } else if (v == '광주광역시') {
                o = 광주광역시;
            } else if (v=='경상북도') {
                o=경상북도;
            } else if (v=='경상남도') {
                o=경상남도;
            } else if (v=='세종특별자치시') {
                o=세종특별자치시;
            } else if (v=='제주특별자치도') {
                o=제주특별자치도;
            } else {
                o = [];
            }
            $( '#district' ).empty();
            $( '#district' ).append( '<option></option>' );
            for ( var i = 0; i < o.length; i++ ) {
                $( '#district' ).append( '<option>' + o[ i ] + '</option>' );
            }
        }
    </script>
    <script src="jquery-3.6.1.min.js"></script>
</head>

<body>
<header>
    <div class="top_fix_zone">
        <img src="/images/img_hospital_01.jpg" style="opacity: 1" onmouseover="this.style.opacity='0.2'">
        <div class="section-content">
            <div class="row">
                <div class="col-md-12 xs-text-center">
                <h3 class="text-theme-colored font-36">병의원 리스트</h3>
                    <ol class="breadcrumb white mt-10">
                        <li>
                            <a href="/Main">Home</a>
                        </li>
                        <li class="active text-theme-colored">
                            병의원 리스트
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</header>

<form name="f" method="get" action="/EmerSearch3" onsubmit="return SearchEmer(this);">
    <br> <br> <br> <br>

    <select id="classification" style="width: 300px; height: 50px">
        <option value="classification">종별전체</option>
        <option value="territories">권역응급의료센터</option>
        <option value="specialty">전문응급의료센터</option>
        <option value="region_center">지역응급의료센터</option>
        <option value="region_agency">지역응급의료기관</option>
        <option value="other_facility">그 밖의 응급의료시설</option>
    </select>
    <br>
    <br>
    <select id="city" name="city" style="width: 150px; height: 50px" onchange="optionChange();">
        <option >== 시도 ==</option>
        <option value="강원도">강원도</option>
        <option value="서울특별시">서울</option>
        <option value="경기도">경기</option>
        <option value="인천광역시">인천</option>
        <option value="충청북도">충북</option>
        <option value="충청남도">충남</option>
        <option value="대전광역시">대전</option>
        <option value="대구광역시">대구</option>
        <option value="울산광역시">울산</option>
        <option value="부산광역시">부산</option>
        <option value="전라남도">전남</option>
        <option value="전라북도">전북</option>
        <option value="광주광역시">광주</option>
        <option value="경상북도">경북</option>
        <option value="경상남도">경남</option>
        <option value="세종특별자치시">세종</option>
        <option value="제주특별자치도">제주</option>
    </select>
    <select id="district" name="district" style="width: 150px; height: 50px">
        <option>== 시군구 ==</option>
    <br><br><br><br><br><br>
    <input type="checkbox" class="checkbox" id="CheckAll" onclick="itemAllChk()">
    전체

    <br><br>
    <div onclick="f_clickFunc()">
        <select name="HptorCln" style="width: 300px; height: 50px">
            <option value="B">병원 분류</option>
            <option value="C">의원 분류</option>
        </select>
        <%--<br>
        <select name="CODE_MST" style="width: 300px; height: 50px">
            <option value="D001">내과</option>
            <option value="D002">소아청소년과</option>
            <option value="D003">신경과</option>
            <option value="D004">정신건강의학과</option>
            <option value="D005">피부과</option>
            <option value="D006">외과</option>
            <option value="D007">흉부외과</option>
            <option value="D008">정형외과</option>
            <option value="D009">신경외과</option>
            <option value="D010">성형외과</option>
            <option value="D011">산부인과</option>
            <option value="D012">안과</option>
            <option value="D013">이비인후과</option>
            <option value="D014">비뇨기과</option>
            <option value="D016">재활의학과</option>
            <option value="D017">마취통증의학과</option>
            <option value="D018">영상의학과</option>
            <option value="D019">치료방사선과</option>
            <option value="D020">임상병리과</option>
            <option value="D021">해부병리과</option>
            <option value="D022">가정의학과</option>
            <option value="D023">핵의학과</option>
            <option value="D024">응급의학과</option>
            <option value="D026">치과</option>
            <option value="D034">구강악안면외과</option>
        </select>--%>
<br>
        <select name="day" style="width: 300px; height: 50px">
            <option value="1">월요일</option>
            <option value="2">화요일</option>
            <option value="3">수요일</option>
            <option value="4">목요일</option>
            <option value="5">금요일</option>
            <option value="6">토요일</option>
            <option value="7">일요일</option>
            <option value="8">공휴일</option>
        </select>
        <br>
        <select name="pageNo" style="width: 300px; height: 50px">
            <option value="1">순서 1페이지</option>
            <option value="2">순서 2페이지</option>
            <option value="3">순서 3페이지</option>
            <option value="4">순서 4페이지</option>
        </select>
        <br>
        <select name="ord" style="width: 300px; height: 50px">
            <option value="NAME">병원 이름순</option>
        </select>


        <br>
        <br>
        <br>

<%--        <select id="QN" style="width: 300px; height: 50px">
            <option name="QN" value="삼성병원">병원</option>
        </select>--%>

        <label><input type="radio" name="CODE_MST" value="D001"> 내과</label>
        <br>
        <%--&lt;%&ndash;--%><div onclick="f_clickFunc()"><%--&ndash;%&gt;--%>
        <label><input type="radio" name="CODE_MST" value="D002"> 소아청소년과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D003"> 신경과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D004"> 정신건강의학과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D005"> 피부과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D006"> 외과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D007"> 흉부외과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D008"> 정형외과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D009"> 신경외과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D010"> 성형외과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D011"> 산부인과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D012"> 안과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D013"> 이비인후과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D014"> 비뇨기과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D016"> 재활의학과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D017"> 마취통증의학과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D018"> 영상의학과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D019"> 치료방사선과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D020"> 임상병리과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D021"> 해부병리과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D022"> 가정의학과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D023"> 핵의학과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D024"> 응급의학과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D026"> 치과</label>
        <br>
        <label><input type="radio" name="CODE_MST" value="D034"> 구강악안면외과</label>
    </div>

    <div>
        <label>
            <input type="text" id="hospital_name" placeholder="병원명을 입력하세요." name="hosname" value="병원">
        </label>
        <br>
        <label>
            <input type="button" id="initializer" style="WIDTH: 80pt; HEIGHT: 20pt" value="초기화">
        </label>
        <br>
        <label>
            <button onclick="doSearch()">검색</button>
            <textarea id="contents"> </textarea>
            <input type="submit" button onclick="doSearch()" id="search" name="search" style="WIDTH: 80pt; HEIGHT: 20pt" value="검색" >
        </label>

    </div>
</form>
</body>
</html>