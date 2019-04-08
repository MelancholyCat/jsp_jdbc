<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-07
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="renew" tagdir="/WEB-INF/tags" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="inquire" %>
<html>
<head>
    <title>newResult</title>
</head>
<body bgcolor="#00ffff"><font size="2">
    <%
        String nu = request.getParameter("number");
        String na = request.getParameter("name");
        String mT = request.getParameter("madeTime");
        String pr = request.getParameter("price");
        byte[] bb = na.getBytes("ISO-8859-1");
        na = new String(bb);
    %>
    <renew:NewRecord number="<%=nu%>" name="<%=na%>" madeTime="<%=mT%>" price="<%=pr%>"/>
    <br>product表更新后的数据记录是：
    <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password="" />
    <br><%=queryResult%>
</font>
</body>
</html>
