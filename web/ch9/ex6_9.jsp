<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-08
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="inquire" %>
<html>
<head>
    <title>ex6_9</title>
</head>
<body>
    <form action="delete.jsp" method="post">
        删除记录：<br>输入被删除的记录的产品号：
        <input type="text" name="number" size="8">
        <br><input type="submit" name="b" value="提交">
    </form>
    <br>product表删除记录前的数据记录是：
    <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password=""/>
    <br><%=queryResult%>
</body>
</html>
