<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCtype html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>병의원 결과 페이지</title>
    <style>
        <%--css스타일적용--%>
        * {
            font-family: Consolas, sans-serif;
        }
    </style>
    <script src="/js/jquery-3.6.1.min.js"></script>

    <script>
        window.onload=Amb;
        function Amb(){
            $.ajax({
                url: "/Main/EmerSearch3",
                type :"get",
                dataType:"XML",
                data:{},
                success:function(response) {
                    for (let i = 0; i<response.length; i++) {
                        let dn = response[i]["dutyName"]; //item.dutyName; 이름
                        let da = response[i]["dutyAddr"]; //item.dutyTel3; 주소
                        let cs = response[i]["dutyDiv"]; //item.dutyDiv; 병원인지 의원인지, B = 병원, C = 의원
                        let ot = response[i]["dutyTel1"]; //item.dutyTel1; 전화번호
                        let om = response[i]["dutyMapimg"]; //item.dutyMapimg; 근접 교통수단 위치
                        let oe = response[i]["dutyEmcls"]; //item.dutyEmcls; 응급의료기관 이외 표기
                        $("#").append("<div><b>기관명 : "+dn+"</b></div>");
                        $("#amb_info").append("<div><b>주소 : "+da+"</b></div>")
                        $("#amb_info").append("<div><b> : "+cs+"</b></div>")
                        $("#amb_info").append("<div><b>전화번호 : "+ot+"</b></div>")
                        $("#amb_info").append("<br><b> 진료과목 코드 : " + om + " </b></div>")
                        $("#amb_info").append("<br><b> 의료기관 범위 표기: " + oe + " </b></div>")
                    }
                }
            })
        }
    </script>
</head>
<body>
<div style="text-align: center">
    <br><br><br>
    <label>병의원</label>
    <br>
    <br>
    <br>
    <br>
    <span id="amb_info"></span>

<%
    model
%>



</div>




</body>
</html>