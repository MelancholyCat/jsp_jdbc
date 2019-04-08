<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-08
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="inquire" %>
<html>
<head>
    <title>delete</title>
</head>
<body><font size="2">
    <%
        String num = request.getParameter("number");
        if (num == null){
            num = "";
        }
        byte[] bb = num.getBytes("ISO-8859-1");
        num = new String(bb);
    %>
    <inquire:DelRecord number="<%=num%>"/>
    <br>product表删除记录后的记录是：
    <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password="" />
    <br><%=queryResult%>
</font>
</body>
</html>
