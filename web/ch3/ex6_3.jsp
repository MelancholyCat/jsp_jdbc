<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-06
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="inquire" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>ex6_3</title>
</head>
<body>
<p>随机查询记录</p>
<form action="random.jsp" method="post">
    输入数据库名:<input type="text" name="databaseName" size="8">
    <br>输入表的名字：<input type="text" name="tableName" size="8">
    <br>输入用户名：<input type="text" name="user" size="6">(默认是root)
    <br>输入密码：<input type="password" name="password" size="6">(默认为空)
    <br>输入查询的记录数：<input type="text" name="count" size="3">
    <br><input type="submit" name="g" value="提交">
</form>
</body>
</html>
