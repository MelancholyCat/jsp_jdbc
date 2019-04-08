<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-06
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="inquire" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>inquire</title>
</head>
<body bgcolor="#00ffff"><font size=" 2">
    <%
        String database = request.getParameter("dataBaseName");
        String tName = request.getParameter("tableName");
        String id = request.getParameter("user");
        String secret = request.getParameter("password");
    %>
    <inquire:QueryTag dataBaseName="<%=database%>"
                      tableName="<%=tName%>"
                      user="<%=id%>"/>
    在<%=biao%>表查询到记录：<%--biao是tag文件返回对象--%>
    <br><%=queryResult%> <%--queryResult是tag文件返回的对象--%>
</font>
</body>
</html>
