<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-07
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="inquire" %>
<html>
<head>
    <title>ex6_7</title>
</head>
<body bgcolor="#00ffff"><font size="2">
    <form action="newResult.jsp" method="post">
        <table border="1">
            <tr><td>输入要更新的产品的产品号：</td>
            <td><input type="text" name="number"></td></tr>
            <tr><td>输入新的名称：</td><td><input type="text" name="name"></td></tr>
            <tr><td>输入新的生产日期：</td><td><input type="text" name="madeTime"></td></tr>
            <tr><td>输入新的价格：</td><td><input type="text" name="price"></td></tr>
        </table>
        <br><input type="submit" name="g" value="提交更新">
        <br>product表更新前的数据记录是：
        <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password=""/>
        <br><%=queryResult%>
    </form>
</font>
</body>
</html>
