<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCtype html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>구급차 정보</title>
    <script src="/js/jquery-3.6.1.min.js"></script>

    <script>
        window.onload=Amb;
        function Amb(){

            $.ajax({

                url: "/Amb/getAmb",
                type :"get",
                dataType:"JSON",
                data:{},
                success:function(response) {


                    for (let i = 0; i<response.length; i++) {
                        let dn = response[i]["dutyName"]; //item.dutyName; //뱡워이름
                        let da = response[i]["dutyAddr"]; //item.dutyTel3; //병원 전화번호
                        let cs = response[i]["carSeq"]; //item.hvec;//가용병상 개수
                        let ot = response[i]["onrTel"]; //item.hvec;//가용병상 개수


                        $("#amb_info").append("<div><b>기관명 : "+dn+"</b></div>");
                        $("#amb_info").append("<div><b>주소 : "+da+"</b></div>")
                        $("#amb_info").append("<div><b>차량번호 : "+cs+"</b></div>")
                        $("#amb_info").append("<div><b>전화번호 : "+ot+"</b></div>")
                        $("#amb_info").append("<br>")


                    }

                }
            })
        }
    </script>
</head>
<body>
<div style="text-align: center">
    <br><br><br>
    <label>구급차정보</label>
    <br>
    <br>
    <br>
    <br>
    <span id="amb_info"></span>





</div>


//s

</body>
</html>