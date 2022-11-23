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

    <script src="http://apis.data.go.kr/B552657/HsptlAsembySearchService/getHsptlBassInfoInqire"></script>
    <script type="text/javascript">
        function doSearch() {
            alert('클릭이벤트발생');
            $.ajax({
                type: "GET",
                url: "/rest/testvalue",
                data: { hos : },
                success: (data) => { console.log(data); $('#contents').html(data);}
            });
        }

        var isHosChk = false;
        var arrHos = document.getElementsByName("hos");
        for (var i=0; arrHos.length; i++) {
            if (arrHos[i].checked == true) {
                isHosChk = true;
                break;
            }
        }

        if (!isHosChk) {
        }
    </script>

    <script type="text/javascript">
        var params={""}
        function callOpenAPI() {
            params.query = $("#query").val();
            var q = $.param(params);
            var ajax_url = "api_proxy.php?" + q;
            $.ajax({type: "get", url:ajax_url,
                contentType: "text/xml; charset=utf-8", dataType: "xml",
                error: function (xhr, status, error) {alert("arror" + )}})
        }

    </script>


</head>

<body>
<%--<%
    String[] value = request.getParameterValues("hos");
    for (String val : value) {
        String s = val + "hos";
    }
%>--%>

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
    <select name="city" style="width: 150px; height: 50px">
        <option>== 시도 선택 ==</option>
        <option value="서울특별시">서울</option>
        <option value="부산광역시">부산</option>
        <option value="대구광역시">대구</option>
        <option value="인천광역시">인천</option>
    </select>
    <select name="district" style="width: 150px; height: 50px">
        <option>== 시군구 선택 ==</option>
        <option value="강서구">강서구</option>
        <option value="관악구">관악구</option>
        <option value="금천구">금천구</option>
        <option value="구로구">구로구</option>
        <option value="노원구">노원구</option>
        //
        <option value="금정구">금정구</option>
        <option value="수영구">수영구</option>
        <option value="사상구">사상구</option>
        <option value="영도구">영도구</option>
        <option value="부산진구">부산진구</option>
        <option value="해운대구">해운대구</option>
        //
        <option value="중구">중구</option>
        <option value="동구">동구</option>
        <option value="서구">서구</option>
        <option value="남구">남구</option>
        <option value="북구">북구</option>
        <option value="수성구">수성구</option>
        <option value="달서구">달서구</option>
        <option value="달성군">달성군</option>
        //
        <option value="중구">중구</option>
        <option value="동구">동구</option>
        <option value="미추홀구">미추홀구</option>
        <option value="연수구">연수구</option>
        <option value="남동구">남동구</option>
        <option value="부평구">부평구</option>
        <option value="계양구">계양구</option>
        <option value="서구">서구</option>
    </select>
    <br><br><br><br><br><br>
    <input type="checkbox" class="checkbox" id="CheckAll" onclick="itemAllChk()">
    전체

    <br><br>
    <div onclick="f_clickFunc()">
        <select name="HptorCln" style="width: 300px; height: 50px">
            <option value="B">B병원</option>
            <option value="C">C의원</option>
        </select>

        <select name="CODE_MST" style="width: 300px; height: 50px">
            <option value="D001">진료과목1</option>
            <option value="D002">진료과목2</option>
            <option value="D003">진료과목3</option>
            <option value="D004">진료과목4</option>
            <option value="D005">진료과목5</option>
            <option value="D006">진료과목6</option>
            <option value="D007">진료과목7</option>
            <option value="D008">진료과목8</option>
            <option value="D009">진료과목9</option>
            <option value="D010">진료과목0</option>
            <option value="D011">진료과목11</option>
            <option value="D012">진료과목12</option>
            <option value="D013">진료과목13</option>
            <option value="D014">진료과목14</option>
            <option value="D015">진료과목15</option>
            <option value="D016">진료과목16</option>
            <option value="D017">진료과목17</option>
            <option value="D018">진료과목18</option>
            <option value="D019">진료과목19</option>
            <option value="D020">진료과목20</option>
            <option value="D021">진료과목21</option>
            <option value="D022">진료과목22</option>
        </select>

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

        <select name="pageNo" style="width: 300px; height: 50px">
            <option value="1">순서 1페이지</option>
            <option value="2">순서 2페이지</option>
            <option value="3">순서 3페이지</option>
            <option value="4">순서 4페이지</option>
        </select>

        <select name="ord" style="width: 300px; height: 50px">
            <option value="병원"
        </select>


<%--        <select id="QN" style="width: 300px; height: 50px">
            <option name="QN" value="삼성병원">병원</option>
        </select>--%>

<%--        <label><input type="checkbox" name="hos1" value="o001"> 응급실 일반 병상</label>
        <br>
        &lt;%&ndash;<div onclick="f_clickFunc()">&ndash;%&gt;
        <label><input type="checkbox" name="hos1" value="o002"> 응급실 소아 병상</label>
        <br>
        <label><input type="checkbox" name="hos1" value="o003"> 응급실 음압 격리 병상</label>
        <br>
        <label><input type="checkbox" name="hos1" value="o004"> 응급실 일반 격리 병상</label>
        <br>
        <label><input type="checkbox" name="hos1" value="o005"> 응급전용 중환자실</label>
        <br>
        <label><input type="checkbox" name="hos1" value="o006"> 내과 중환자실</label>
        <br>
        <label><input type="checkbox" name="hos1" value="o007"> 외과 중환자실</label>
        <br>
        <label><input type="checkbox" name="hos1" value="o008"> 신생아중환자실</label>
        <br>
        <label><input type="checkbox" name="hos1" value="o009"> 소아 중환자실</label>
        <br>
        <label><input type="checkbox" name="hos1" value="o011"> 신경과 중환자실</label>
        <br>
        <label><input type="checkbox" name="hos1" value="o007"> 신경외과 중환자실</label>
        <br>
        <label><input type="checkbox" name="hos1" value="o013"> 화상중환자실</label>
    </div>--%>

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