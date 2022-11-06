<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>웹페이지 제목</title>
    <script>
        /*병의원 목록정보 javascript 예시코드*/
        var xhr = new XMLHttpRequest();
        var url = 'http://apis.data.go.kr/B552657/HsptlAsembySearchService/getHsptlMdcncListInfoInqire'; /*URL*/
        var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'7Zq8vD1J3swTyNa%2F00rDCrxp8pzBRc8hqkooc1KVq%2Fwtt0LlAb%2FyvjwDFUMwcK9jkgcKPI9jTAhG6oiaSV1%2BSA%3D%3D'; /*Service Key*/
        queryParams += '&' + encodeURIComponent('Q0') + '=' + encodeURIComponent('서울특별시'); /**/
        queryParams += '&' + encodeURIComponent('Q1') + '=' + encodeURIComponent('강남구'); /**/
        queryParams += '&' + encodeURIComponent('QZ') + '=' + encodeURIComponent('B'); /**/
        queryParams += '&' + encodeURIComponent('QD') + '=' + encodeURIComponent('D001'); /**/
        queryParams += '&' + encodeURIComponent('QT') + '=' + encodeURIComponent('1'); /**/
        queryParams += '&' + encodeURIComponent('QN') + '=' + encodeURIComponent('삼성병원'); /**/
        queryParams += '&' + encodeURIComponent('ORD') + '=' + encodeURIComponent('NAME'); /**/
        queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
        queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
        xhr.open('GET', url + queryParams);
        xhr.onreadystatechange = function () {
            if (this.readyState == 4) {
                alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
            }
        };

        xhr.send('');
    </script>
</head>
<body>
조건 맞는 검색 결과 목록 보여줄 페이지

public static String url= "http://apis.data.go.kr/B552657/ErmctInfoInqireService/getEmrrmRltmUsefulSckbdInfoInqire";

<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<response>
    <header>
        <resultCode>00</resultCode>
        <resultMsg>NORMAL SERVICE.</resultMsg>
    </header>
    <body>
    <items>
        <item>
            <dgidIdName>
                가정의학과,내과,마취통증의학과,방사선종양학과,병리과,보건(의료원)소,비뇨기과,산부인과,성형외과,소아청소년과,신경과,신경외과,안과,영상의학과,예방의학과,외과,응급의학과,이비인후과,재활의학과,정신건강의학과,정형외과,조산원,진단검사의학과,피부과,핵의학과,흉부외과
            </dgidIdName>
            <dutyAddr>서울특별시 동대문구 경희대로 23 (회기동)</dutyAddr>
            <dutyEryn>1</dutyEryn>
            <dutyHano>850</dutyHano>
            <dutyHayn>1</dutyHayn>
            <dutyMapimg>회기역 1번 출구</dutyMapimg>
            <dutyName>경희대학교병원</dutyName>
            <dutyTel1>02-958-8114</dutyTel1>
            <dutyTel3>02-958-8282</dutyTel3>
            <dutyTime1c>1730</dutyTime1c>
            <dutyTime1s>0830</dutyTime1s>
            <dutyTime2c>1730</dutyTime2c>
            <dutyTime2s>0830</dutyTime2s>
            <dutyTime3c>1730</dutyTime3c>
            <dutyTime3s>0830</dutyTime3s>
            <dutyTime4c>1730</dutyTime4c>
            <dutyTime4s>0830</dutyTime4s>
            <dutyTime5c>1730</dutyTime5c>
            <dutyTime5s>0830</dutyTime5s>
            <dutyTime6c>1230</dutyTime6c>
            <dutyTime6s>0900</dutyTime6s>
            <hpbdn>850</hpbdn>
            <hpccuyn>1</hpccuyn>
            <hpcuyn>0</hpcuyn>
            <hperyn>20</hperyn>
            <hpgryn>415</hpgryn>
            <hpid>A1100001</hpid>
            <hpnicuyn>18</hpnicuyn>
            <hpopyn>16</hpopyn>
            <MKioskTy1>Y</MKioskTy1>
            <MKioskTy10>Y</MKioskTy10>
            <MKioskTy11>N</MKioskTy11>
            <MKioskTy2>Y</MKioskTy2>
            <MKioskTy25>Y</MKioskTy25>
            <MKioskTy3>Y</MKioskTy3>
            <MKioskTy4>Y</MKioskTy4>
            <MKioskTy5>Y</MKioskTy5>
            <MKioskTy6>Y</MKioskTy6>
            <MKioskTy7>Y</MKioskTy7>
            <MKioskTy8>Y</MKioskTy8>
            <MKioskTy9>Y</MKioskTy9>
            <o001>14</o001>
            <o002>0</o002>
            <o003>0</o003>
            <o004>2</o004>
            <o008>3</o008>
            <o012>4</o012>
            <o017>5</o017>
            <o019>3</o019>
            <o022>3</o022>
            <o024>3</o024>
            <o025>5</o025>
            <o026>Y</o026>
            <o027>Y</o027>
            <o028>Y</o028>
            <o029>Y</o029>
            <o030>Y</o030>
            <o031>Y</o031>
            <o032>Y</o032>
            <o033>Y</o033>
            <o034>Y</o034>
            <o035>Y</o035>
            <o038>136</o038>
            <postCdn1>024</postCdn1>
            <postCdn2>47 </postCdn2>
            <wgs84Lat>37.5938765502235</wgs84Lat>
            <wgs84Lon>127.05183223390303</wgs84Lon>
        </item>
    </items>
    <numOfRows>10</numOfRows>
    <pageNo>1</pageNo>
    <totalCount>1</totalCount>
    </body>
</response>

</body>
</html>