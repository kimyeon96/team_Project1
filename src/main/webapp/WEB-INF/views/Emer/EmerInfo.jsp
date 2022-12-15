<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCtype html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>실시간 응급실가용병상</title>
    <script src="/js/jquery-3.6.1.min.js"></script>

    <script>
        window.onload=em;
        function em(){

            $.ajax({

                url: "/Emer/getEmer",
                type :"get",
                dataType:"JSON",
                data:{},
                success:function(response) {


                    for (let i = 0; i<response.length; i++) {
                        let dn = response[i]["dutyName"]; //item.dutyName; //뱡워이름
                        let dt = response[i]["dutyTel3"]; //item.dutyTel3; //병원 전화번호
                        let hv = response[i]["hvec"]; //item.hvec;//가용병상 개수


                        $("#emer_info").append("<div><b>병원이름 : "+dn+"</b></div>");
                        $("#emer_info").append("<div><b>전화번호 : "+dt+"</b></div>")
                        $("#emer_info").append("<div><b>가용병상 개수: "+hv+"</b></div>")
                        $("#emer_info").append("<br>")





                    }

                }
            })
        }
    </script>
</head>
<body>
<div style="text-align: center">
    <br><br><br><br>

    <label><strong>실시간 응급실가용병상</strong>  </label>
    <br>
    <br>
    <br>
    <span id="emer_info"></span>





</div>




</body>
</html>