<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-04-06
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>QueryTableOfProduct</title>
</head>
<body>
<%
    Connection connection;
    Statement sql;
    ResultSet rs;
    String tablename="warehouse";
    String url ="jdbc:mysql://127.0.0.1:3306/"+tablename+"?"+"useUnicode=true&characterEncoding="+"gb2312"+"&allowMultiQueries=true";
    String username="root";
    String password="";
    String driverName="com.mysql.jdbc.Driver";
    try {
        Class.forName(driverName);
    }catch (Exception e){}
    try {
        connection = DriverManager.getConnection(url, username,password);
        sql = connection.createStatement();
        rs = sql.executeQuery("SELECT *FROM product ");
        out.print("<table border = 2>");
        out.print("<tr>");
        out.print("<th width = 100>"+"产品号");
        out.print("<th width = 100>"+"名称");
        out.print("<th width = 100>"+"生产日期");
        out.print("<th width = 100>"+"价格");
        out.print("</TR>");
        while (rs.next()){
            out.print("<tr>");
            out.print("<td>"+rs.getString(1)+"</td>");
            out.print("<td>"+rs.getString(2)+"</td>");
            out.print("<td>"+rs.getString("madeTime")+"</td>");
            out.print("<td>"+rs.getString("price")+"</td>");
            out.print("</TR>");
        }
        out.print("</table>");
        connection.close();
    }catch (SQLException e){
        out.print(e);
    }
%>
</body>
</html>
