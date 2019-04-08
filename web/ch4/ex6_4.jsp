<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-07
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ex6_4</title>
</head>
<body bgcolor="yellow"><font size="2">
    <form action="byNumber.jsp" method="post">
        根据产品号查询
        <br>输入产品号 ：<input type="text" name="number">
        <input type="submit" name="g" value="提交">
    </form>
    <form action="byPrice.jsp" method="post">
        根据价格查询
        <br>价格在<input type="text" name="priceMin" size="5">至
        <input type="text" name="priceMax" size="5">之间
        <input type="submit" name="g" value="提交">
    </form>
</font>
</body>
</html>
