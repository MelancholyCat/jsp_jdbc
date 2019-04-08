<%@tag pageEncoding="gb2312" import="java.sql.*" %>
<%@attribute name="number" required="true" %>
<%
    String condition =
            "DELETE FROM product WHERE number = '"+number+"'";
    String driverName="com.mysql.jdbc.Driver";
    try {
        Class.forName(driverName);
    }catch (Exception e){}
    String databaseName = "warehouse";
    String tableName = "product";
    String user = "root";
    String password = "";
    Connection connection;
    Statement sql;
    String url ="jdbc:mysql://127.0.0.1:3306/"+databaseName+"?"
            +"useUnicode=true&characterEncoding="+"gb2312"
            +"&allowMultiQueries=true";
    try {
        connection = DriverManager.getConnection(url, user, password);
        sql = connection.createStatement();
        sql.executeUpdate(condition);
        connection.close();
    }catch (Exception e){
        out.print(""+e);
    }
%>