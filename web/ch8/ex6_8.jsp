<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-07
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="inquire" %>
<html>
<head>
    <title>ex6_8</title>
</head>
<body bgcolor="#ffc0cb"><font size="2">
    <form action="newDatabase.jsp" method="post">
        添加新记录：
        <table border="1">
            <tr><td>产品号：</td><td><input type="text" name="number"> </td></tr>
            <tr><td>名称：</td><td><input type="text" name="name"> </td></tr>
            <tr><td>生产日期：</td><td><input type="text" name="madeTime"> </td></tr>
            <tr><td>价格：</td><td><input type="text" name="price"> </td></tr>
        </table>
        <br><input type="submit" name="b" value="提交">
        <br>product表添加新纪录前的数据记录是：
        <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password=""/>
        <br><%=queryResult%>
    </form>
</font>
</body>
</html>
