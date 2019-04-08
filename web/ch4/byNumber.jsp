<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-07
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="inquire" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>byNumber</title>
</head>
<body bgcolor="#00ffff"><font size="2">
    <%
        String number = request.getParameter("number");
        if (number == null){
            number = "";
        }
        byte[] bb = number.getBytes("iso-8859-1");
        number = new String(bb);
    %>
    <inquire:NumberCondition number="<%=number%>"/>
    根据产品号<%=number%> 查询到的记录：
    <br><%=queryResultByNumber%>
</font>
</body>
</html>
