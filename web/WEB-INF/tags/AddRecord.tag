<%@tag pageEncoding="gb2312" import="java.sql.*" %>
<%@attribute name="number" required="true" %>
<%@attribute name="name" required="true" %>
<%@attribute name="madeTime" required="true" %>
<%@attribute name="price" required="true" %>
<%
    String databaseName = "warehouse";
    String tableName = "product";
    String user = "root";
    String password = "";
    float p = Float.parseFloat(price);
    String condition = "INSERT into "+tableName+" values"+"('"+number+"','"+name+"','"+madeTime+"',"+p+")";
    String driverName="com.mysql.jdbc.Driver";
    try {
        Class.forName(driverName);
    }catch (Exception e){}
    Connection connection;
    Statement sql;
    String url ="jdbc:mysql://127.0.0.1:3306/"+databaseName+"?"
            +"useUnicode=true&characterEncoding="+"gb2312"
            +"&allowMultiQueries=true";
    try {
        connection = DriverManager.getConnection(url, user, password);
        sql = connection.createStatement();
        sql.execute(condition);
        connection.close();
    }catch (Exception e){
        out.print(""+e);
    }
%>