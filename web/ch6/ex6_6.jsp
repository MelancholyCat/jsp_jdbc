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
        ѡ�� ��<select name="ziduan">
        <option value="name">��Ʒ����</option>
        <option value="number">��Ʒ��</option>
    </select>
        ���У�<input type="text" name="keyWord">
        <input type="submit" name="g" value="�ύ">
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
        out.println("�ؼ��֣�"+keyWord);
    %>
    <inquire:KeyWord keyWord="<%=keyWord%>" ziduan="<%=ziduan%>"/>
    ��ѯ���ļ�¼��
    <br><%=foundResult%>
</font>
</body>
</html>
