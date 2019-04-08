<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-07
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="inquire" %>
<html>
<head>
    <title>newDatabase</title>
</head>
<body bgcolor="#00ffff"><font size="2">
    <%!
        String handleStr(String s){
            try {
                byte[] bb = s.getBytes("ISO-8859-1");
                s = new String(bb);
            }catch (Exception exp){}
            return s;
        }
    %>
    <%
        String nu = handleStr(request.getParameter("number"));
        String na = handleStr(request.getParameter("name"));
        String mT = handleStr(request.getParameter("madeTime"));
        String pr = handleStr(request.getParameter("price"));
    %>
    <inquire:AddRecord number="<%=nu%>" name="<%=na%>" madeTime="<%=mT%>" price="<%=pr%>"/>
    <br>product表添加新记录后的记录是：
    <inquire:QueryTag dataBaseName="warehouse" tableName="product" user="root" password="" />
    <br><%=queryResult%>
</font>
</body>
</html>
