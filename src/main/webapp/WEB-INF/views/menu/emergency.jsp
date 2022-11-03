
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
    <title>웹페이지 제목</title>

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

    <script>

        /*상단바*/
        $(document).ready(function () {
            var topBar = $("#topBar").offset();
            $(window).scroll(function () {
                var docScrollY = $(document).scrollTop()
                var barThis = $("#topBar")
                var fixNext = $("#fixNextTag")
                if (docScrollY > topBar.top) {
                    barThis.addClass("top_bar_fix");
                    fixNext.addClass("pd_top_80");
                } else {
                    barThis.removeClass("top_bar_fix");
                    fixNext.removeClass("pd_top_80");
                }
            });
        })
        /*상단바*/

        function itemAllChk() {
            if (document.getElementById("all").checked) {

                var obj = document.getElementsByName("item[]");
                for (i=0;i<obj.length;i++) {
                    obj[i].checked = true;
//            document.getElementsByName("item[]")[i].checked = true;
                }

            } else {

                var obj = document.getElementsByName("item[]");
                for (i=0;i<obj.length;i++) {
                    obj[i].checked = false;
//            document.getElementsByName("item[]")[i].checked = false;
                }

            }
        }

        function itemChk() {
            var str = "";

            var obj = document.getElementsByName("item[]");
            for (i=0;i<obj.length;i++) {
                if (obj[i].checked) {
                    str += " " + obj[i].value;
                }
            }
            alert(str);
        }
    </script>

</head>



<body>



<div style="text-align: center" id="box1">

    <select id="classification" style="width: 300px; height: 50px">
        <option value="classification1">종별전체</option>
        <option value="territories">권역응급의료센터</option>
        <option value="specialty">전문응급의료센터</option>
        <option value="region_center">지역응급의료센터</option>
        <option value="region_agency">지역응급의료기관</option>
        <option value="other_facility">그밖의 응급의료시설</option>
    </select>
    <br>
    <br>

    <select id="city" style="width: 150px; height: 50px">
        <option value="seoul">서울</option>
        <option value="busan">부산</option>
        <option value="daegu">대구</option>
        <option value="incheon">인천</option>
    </select>



    <select id="district" style="width: 150px; height: 50px">
        <option value="gangseo">강서구</option>
        <option value="gwanank">관악구</option>
        <option value="gumcheon">금천구</option>
        <option value="guro">구로구</option>
        <option value="노원구">노원구</option></select>

</div>

<div style="text-align: center">
    <label class="label--checkbox">
        <input type="checkbox" class="checkbox" id="all" onclick="itemAllChk()">
        전체
    </label>
    <div class="container">
    </div>



    <div class="row" style="text-align: center">
        <div class="col-xs-11">
            <br>
            <div class="btn-group btn-group-vertical" data-toggle="buttons">
                <label class="btn active">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 응급실 일반 병상 </span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 응급실 소아 병상 </span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 응급실 음압 격리 병상</span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 응급실 일반 격리 병상</span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 응급전용 중환자실</span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 내과중환자실</span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 외과중환자실</span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 신생아중환자실</span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 소아 중환자실</span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 신경과중환자실</span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 신경외과중환자실</span>
                </label>
                <label class="btn">
                    <input type="checkbox" name='item[]'>
                    <i class="fa fa-square-o fa-2x"></i>
                    <i class="fa fa-check-square-o fa-2x"></i>
                    <span> 화상중환자실</span>
                </label>




            </div>





            <!---------------------------------end-------------------------------------->
            <div><label><input type="text" id="hospital_name" placeholder="병원명을 입력하세요."> </label>
                <br>
                <label><input type="button" id="initializer" style="WIDTH: 80pt; HEIGHT: 20pt" value="초기화">
                </label>
                <label><input type="submit" id="search" style="WIDTH: 80pt; HEIGHT: 20pt" value="검색"> </label>
            </div>


        </div>
    </div>


    <br>
</div>


<!--  footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="hedingh3 text_align_left">
                        <h3>Resources</h3>
                        <ul class="menu_footer">
                            <li><a href="index.html">Home</a><li>
                            <li><a href="javascript:void(0)">What we do</a><li>
                            <li><a href="javascript:void(0)">Media</a><li>
                            <li><a href="javascript:void(0)">Travel Advice</a><li>
                            <li><a href="javascript:void(0)">Protection</a><li>
                            <li><a href="javascript:void(0)">Care</a><li>
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