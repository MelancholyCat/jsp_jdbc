<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-07
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="inquire" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>byPrice</title>
</head>
<body bgcolor="#00ffff"><font size="2">
    <%
        String min = request.getParameter("priceMin");
        String max = request.getParameter("priceMax");
    %>
    <inquire:PriceConditon priceMax="<%=max%>" priceMin="<%=min%>"/>
    价格在<%=min%> 至<%=max%> 之间的记录：
    <br><%=queryResultByPrice%>
</font>
</body>
</html>
