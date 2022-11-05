<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCUTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>웹페이지 제목</title>
    <script>
        var xhr = new XMLHttpRequest();
        var url = 'http://apis.data.go.kr/B552657/ErmctInfoInqireService/getEmrrmRltmUsefulSckbdInfoInqire'; /*URL*/
        var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'Ue8dY6yKz%2BndKBNELR5ZWw%2ByA5dK2XzufXqTjOUcJqMsNhR8gyBPZ3G8xyyLbYGRya5OHkJVU3nFI5wSM3aARA%3D%3D'; /*Service Key*/
        queryParams += '&' + encodeURIComponent('STAGE1') + '=' + encodeURIComponent('서울특별시'); /**/
        queryParams += '&' + encodeURIComponent('STAGE2') + '=' + encodeURIComponent('강남구'); /**/
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
</body>
</html>