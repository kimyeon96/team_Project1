<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>웹페이지 제목</title>
</head>
<body>
<h2>요청 파라미터값 테스트!</h2>
<form action="<c:url value='/study/join.do' />" method="get">
    <fieldset>
        <legend>회원가입 양식</legend>
        <p>
            - ID: <input type="text" name="userID" size="10"><br>
            - PW: <input type="password" name="userPW" size="10"><br>
            - NAME: <input type="text" name="useName" size="10"><br>
            <input type="submit" value="회원가입">
        </p>
    </fieldset>

</form>

</body>
</html>