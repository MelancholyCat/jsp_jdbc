<%@tag pageEncoding="gb2312" import="java.sql.*" %>
<%@attribute name="orderType" required="true" %>
<%@variable name-given="orderResult" scope="AT_END" %>
<%
    String databaseName = "warehouse";
    String tableName = "product";
    String user = "root";
    String password = "";
    String orderCondition =
            "SELECT * FROM " + tableName + " ORDER BY "+orderType;
    StringBuffer result;
    result = new StringBuffer();
    String driverName="com.mysql.jdbc.Driver";
    try {
        Class.forName(driverName);
    }catch (Exception e){}
    Connection connection;
    Statement sql;
    ResultSet rs;
    int n = 0;
    try {
        result.append("<table border = 1 >");
        String url ="jdbc:mysql://127.0.0.1:3306/"+databaseName+"?"
                +"useUnicode=true&characterEncoding="+"gb2312"
                +"&allowMultiQueries=true";
        connection = DriverManager.getConnection(url, user, password);
        DatabaseMetaData metaData = connection.getMetaData();//元数据对象
        ResultSet rs1 = metaData.getColumns(null, null, tableName, null);
        int charCount = 0;
        result.append("<tr>");
        while (rs1.next()) {
            charCount++;
            String clumnName = rs1.getString(4);
            result.append("<td>" + clumnName + "</td>");
        }
        result.append("</tr>");
        sql = connection.createStatement();
        rs = sql.executeQuery(orderCondition);
        while (rs.next()) {
            result.append("<tr>");
            for (int k = 1; k <= charCount; k++)
                result.append("<td>" + rs.getString(k) + "</td>");
            result.append("</tr>");
        }
        result.append("</table>");
        connection.close();
    }
    catch (SQLException e){
        result.append("");
    }
    jspContext.setAttribute("orderResult",new String(result));
%>
