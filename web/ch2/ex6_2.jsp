<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-06
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ex6_2</title>
</head>
<body bgcolor="#00ffff"><font size="2">
    <form action="inquire.jsp" method="post">
        输入数据库名：<input type="text" name="dataBaseName" size="8">
        <br>输入表的名字：<input type="text" name="tableName" size="8">
        <br>输入用户名：<input type="text" name="user" size="6">(默认是root)
        <br>输入密码：<input type="password" name="password" size="6">(默认为空)
        <br><input type="submit" name="g" value="提交">
    </form>
</font>

</body>
</html>
