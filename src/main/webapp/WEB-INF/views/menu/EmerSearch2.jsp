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

<script type="text/javascript">
    function search_clickFunc() {
        alert('클릭이벤트발생');
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

</head>

<body>
<%--<%
    String[] value = request.getParameterValues("hos");
    for (String val : value) {
        String s = val + "hos";
    }
%>--%>

<form name="f" method="get" action="EmerSearch2" onsubmit="return SearchEmer(this);">
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
        <select id="city" style="width: 150px; height: 50px">
            <option name="lang" value="seoul">서울</option>
            <option name="lang"value="busan">부산</option>
            <option name="lang"value="daegu">대구</option>
            <option name="lang"value="incheon">인천</option>
        </select>
        <select id="district" style="width: 150px; height: 50px">
            <option name="lang"value="gangseo">강서구</option>
            <option name="lang"value="gwanack">관악구</option>
            <option name="lang"value="gumcheon">금천구</option>
            <option name="lang"value="guro">구로구</option>
            <option name="lang" value="noone">노원구</option>
        </select>
<br><br><br><br><br><br>
        <input type="checkbox" class="checkbox" id="CheckAll" onclick="itemAllChk()">
        전체

<br><br>
<div onclick="f_clickFunc()">
    <label><input type="checkbox" name="hos" value="all"> 응급실 일반 병상</label>
<br>
    <div onclick="f_clickFunc()">
    <label><input type="checkbox" name="hos" value="region"> 응급실 소아 병상</label>
<br>
    <label><input type="checkbox" name="hos" value="territory"> 응급실 음압 격리 병상</label>
<br>
    <label><input type="checkbox" name="hos" value="hos4"> 응급실 일반 격리 병상</label>
<br>
    <label><input type="checkbox" name="hos" value="hos5"> 응급전용 중환자실</label>
<br>
    <label><input type="checkbox" name="hos" value="hos6"> 내과 중환자실</label>
<br>
    <label><input type="checkbox" name="hos" value="hos7"> 외과 중환자실</label>
<br>
    <label><input type="checkbox" name="hos" value="hos8"> 신생아중환자실</label>
<br>
    <label><input type="checkbox" name="hos" value="hos9"> 소아 중환자실</label>
<br>
    <label><input type="checkbox" name="hos" value="hos10"> 신경과 중환자실</label>
<br>
    <label><input type="checkbox" name="hos" value="hos11"> 신경외과 중환자실</label>
<br>
    <label><input type="checkbox" name="hos" value="hos12"> 화상중환자실</label>
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
        <input type="submit" id="search" name="search" style="WIDTH: 80pt; HEIGHT: 20pt" value="검색" >
    </label>

</div>
</form>
</body>
</html>