<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-07
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="inquire" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>ex_5</title>
</head>
<body bgcolor="yellow"><font size="2">
    <form action="" method="post" name="form">
        排序记录：<input type="radio" name="orderType" value="price">按价格(price)排序
        <input type="radio" name="orderType" value="madeTime">按生产日期(madeTime)排序
        <input type="submit" name="g" value="提交">
    </form>
    <%
        String orderType = request.getParameter("orderType");
        if (orderType == null)
            orderType = "";
    %>
    <inquire:SortTag orderType="<%=orderType%>"/>
    根据排序方式：<%=orderType%>,排序的记录：
    <br><%=orderResult%>
</font>
</body>
</html>
