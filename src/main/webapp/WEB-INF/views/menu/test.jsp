<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="kopo.poly.dto.ConDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="kopo.poly.util.CmmUtil" %>
<%
    //Controller로부터 전달받은 데이터
    List<ConDTO> conList = (List<ConDTO>) request.getAttribute("conList");
%>
<!DOCTYPE html>
<html>
<head>
    <div class="wrap">
        <div class="top_fix_zone" id="topBar">병의원 리스트</div>
    </div>
    <meta charset="utf-8">
    <title>웹페이지 제목</title>
    <style>
        table{
            border-spacing: 10px;
            border: 1px solid black;
        }
        th,td{
            border: 1px solid black;
            padding: 10px;
        }
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

</head>
<body>
<table>
    <caption>병의원 리스트</caption>
    <tr>
        <th style="text-align: center;">병원 이름 </th>
        <th style="text-align: center;">주소 </th>
        <th style="text-align: center;">기관 구분 </th>
        <th style="text-align: center;">전화번호 </th>
        <th style="text-align: center;">기관 ID </th>
        <th style="text-align: center;">비고 </th>
    </tr>
    <tr style="height: 20px;">
        <td style="width: 16.6667%; height: 20px; text-align: center;">&nbsp;
            <br> <a href="test02">
    <%
        for (ConDTO rDTO : conList) {
            out.println(CmmUtil.nvl(rDTO.getHosnameParam()));
            out.println("<hr/>");

            /*위도 경도 형식*/


        }
    %></td></a>
      <td style="width: 16.6667%; height: 20px; text-align: center;">&nbsp;
          <br>
          <%
              for (ConDTO rDTO : conList) {
                  out.println(CmmUtil.nvl(rDTO.getCityParam()));
                  out.println("<hr/>");

                  /*위도 경도 형식*/


              }
          %>
      </td>
      <td style="width: 16.6667%; height: 20px; text-align: center;">&nbsp;
          <br>
          <%
              for (ConDTO rDTO : conList) {
                  out.println(CmmUtil.nvl(rDTO.getHptorClnParam()));
                  out.println("<hr/>");

                  /*위도 경도 형식*/


              }
          %>
      </td>
      <td style="width: 16.6667%; height: 20px; text-align: center;">&nbsp;
          <br>
          <%
              for (ConDTO rDTO : conList) {
                  out.println(CmmUtil.nvl(rDTO.getTelParam()));
                  out.println("<hr/>");

                  /*위도 경도 형식*/


              }
          %>
      </td>
      <td style="width: 16.6667%; height: 20px; text-align: center;">&nbsp;
          <br>
          <%
              for (ConDTO rDTO : conList) {
                  out.println(CmmUtil.nvl(rDTO.getHpidParam()));
                  out.println("<hr/>");

                  /*위도 경도 형식*/


              }
          %>
      </td>
      <td style="width: 16.6667%; height: 20px; text-align: center;">&nbsp;
          <br>
          <%
              for (ConDTO rDTO : conList) {
                  out.println(CmmUtil.nvl(rDTO.getEmclsNameParam()));
                  out.println("<hr/>");

                  /*위도 경도 형식*/


              }
          %>
      </td>
    </tr>

</table>
<br/>
<br/>


<div id="googleMap" style="width:50%; height:700px;"></div>

<script type="text/javascript">
    function myMap(){
        var mapOptions = {
            center:new google.maps.LatLng(37.58162579102474,127.02949877221415<html>
                <head>
                <meta charset="UTF-8">
            <title>음식점</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <link rel="stylesheet" href="{% static 'third/style.css' %}">
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/third/list">음식점</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/third/list">리스트</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/third/create">등록</a>
            </li>
        </ul>
    </div>
</nav>
{% block content %}
{% endblock %}
</body>
</html>),
            zoom:10
        };
        var map = new google.maps.Map(
            document.getElementById("googleMap")
            , mapOptions );
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwonY43KCkySXlJTXldb8KNPnFM05S00U&callback=myMap"></script>
</div>

<script type="text/javascript">
    var map;
    function initMap() {
        var cityHall = {lat: 37.566554, lng: 126.978546};
        var defaultOptions = {
            zoom: 12,
            center: cityHall,
            disableDefaultUI: true,
            zoomControl: true
        };
        map = new google.maps.Map(document.getElementById('map'), defaultOptions);
        var marker = new google.maps.Marker({
            position: cityHall,
            map: map,
        });
    }
</script>

</body>
</html>