<%@tag pageEncoding="gb2312" %>
<%@tag import="java.sql.*" %>
<%@attribute name="dataBaseName" required="true" %>
<%@attribute name="user" required="true" %>
<%@attribute name="password" required="false" %>
<%@variable name-given="con" scope="AT_END" variable-class="java.sql.Connection" %>
<%
    StringBuffer result;
    result = new StringBuffer();
    Connection connection;
    String url ="jdbc:mysql://127.0.0.1:3306/"+dataBaseName+"?"+"useUnicode=true&characterEncoding="+"gb2312"+"&allowMultiQueries=true";
    String driverName="com.mysql.jdbc.Driver";
    try {
        Class.forName(driverName);
    }catch (Exception e){}
    try {
        connection = DriverManager.getConnection(url, user, password);
        jspContext.setAttribute("con",connection);
    }catch (SQLException e){
        result.append(e);
        jspContext.setAttribute("con",null);
    }

%>