<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<!----상단바---->
<div class="wrap">
    <div class="top_fix_zone" id="topBar">응급실 조건 검색</div>
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
            <option value="서울특별시">서울</option>
            <option value="부산광역시">부산</option>
            <option value="대구광역시">대구</option>
            <option value="인천광역시">인천</option>
        </select>
        <select name="district" style="width: 150px; height: 50px">
            <option value="강서구">강서구</option>
            <option value="관악구">관악구</option>
            <option value="금천구">금천구</option>
            <option value="구로구">구로구</option>
            <option value="노원구">노원구</option>
        </select>
<br><br><br><br><br><br>
        <input type="checkbox" class="checkbox" id="CheckAll" onclick="itemAllChk()">
        전체

<br><br>
<div onclick="f_clickFunc()">
    <label><input type="checkbox" name="hos1" value="o001"> 응급실 일반 병상</label>
<br>
    <%--<div onclick="f_clickFunc()">--%>
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
    </div>

    <div>
    <label>
    <input type="text" id="hospital_name" placeholder="병원명을 입력하세요.">
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