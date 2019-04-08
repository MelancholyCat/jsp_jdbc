<%@tag pageEncoding="gb2312" %>
<%@tag import="java.sql.*" %>
<%@attribute name="dataBaseName" required="true" %>
<%@attribute name="tableName" required="true" %>
<%@attribute name="user" required="true" %>
<%@attribute name="password" required="false" %>
<%@variable name-given="biao" scope="AT_END" %>
<%@variable name-given="queryResult" scope="AT_END" %>
<%
    StringBuffer result;
    result = new StringBuffer();
    Connection connection;
    Statement sql;
    ResultSet rs;
    String url ="jdbc:mysql://127.0.0.1:3306/"+dataBaseName+"?"+"useUnicode=true&characterEncoding="+"gb2312"+"&allowMultiQueries=true";
    String driverName="com.mysql.jdbc.Driver";
    try {
        Class.forName(driverName);
    }catch (Exception e){}
    try {
        result.append("<table border = 1 >");
        connection = DriverManager.getConnection(url, user, password);
        DatabaseMetaData metaData = connection.getMetaData();//元数据对象
        ResultSet rs1 = metaData.getColumns(null,null,tableName,null);
        int count = 0;
        result.append("<tr>");
        while (rs1.next()){
            count++;
            String clumnName = rs1.getString(4);
            result.append("<td>"+clumnName+"</td>");
        }
        result.append("</tr>");
        sql = connection.createStatement();
        rs = sql.executeQuery("SELECT * FROM "+tableName);
        while (rs.next()){
            result.append("<tr>");
            for (int k =1;k<=count;k++)
                result.append("<td>"+rs.getString(k)+"</td>");
            result.append("</tr>");
        }
        result.append("</table>");
        connection.close();
    }catch (SQLException e){
        result.append("请输入正确的用户名和密码");
    }
    jspContext.setAttribute("queryResult",new String(result));
    jspContext.setAttribute("biao",tableName);
%>