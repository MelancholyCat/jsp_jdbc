<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-07
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@taglib prefix="inquire" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>ex6_6</title>
</head>
<body bgcolor="#00ffff"><font size="2">
    <form action="" method="post" name="form">
        选择 ：<select name="ziduan">
        <option value="name">产品名称</option>
        <option value="number">产品号</option>
    </select>
        含有：<input type="text" name="keyWord">
        <input type="submit" name="g" value="提交">
    </form>
    <%
        String ziduan = request.getParameter("ziduan");
        String keyWord = request.getParameter("keyWord");
        if (ziduan == null||keyWord == null){
            ziduan = "";
            keyWord = "";
        }
        byte[] bb = keyWord.getBytes("ISO-8859-1");
        keyWord = new String(bb);
        out.println("关键字："+keyWord);
    %>
    <inquire:KeyWord keyWord="<%=keyWord%>" ziduan="<%=ziduan%>"/>
    查询到的记录：
    <br><%=foundResult%>
</font>
</body>
</html>
