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
    <meta charset="utf-8">
    <title>웹페이지 제목</title>
</head>
<body>
영화 순위 정보<br/>
-----------------------------------<br/>
<%
    for (ConDTO rDTO : conList) {
        out.println("영화 순위 : " + CmmUtil.nvl(rDTO.getHosnameParam()));
        out.println("<hr/>");
    }
%>
</body>
</html>