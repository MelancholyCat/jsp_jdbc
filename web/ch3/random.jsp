<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-06
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="inquire" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Random</title>
</head>
<body bgcolor="#00ffff"><font size="2">
    <%
        String dName = request.getParameter("databaseName");
        String tName = request.getParameter("tableName");
        String id = request.getParameter("user");
        String secret = request.getParameter("password");
        String n = request.getParameter("count");
    %>
    <inquire:RandomQuery databaseName="<%=dName%>"
                         tableName="<%=tName%>"
                         user="<%=id%>"
                         count="<%=n%>"
                         password="<%=secret%>"/>
    在<%=biao%> 表随机查询到<%=randomCount%>条记录：
    <br><%=queryResult%>
</font>
</body>
</html>
