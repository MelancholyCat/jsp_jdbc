<%@tag pageEncoding="gb2312" import="java.sql.*" %>
<%@attribute name="priceMax" required="true" %>
<%@attribute name="priceMin" required="true" %>
<%@variable name-given="queryResultByPrice" scope="AT_END" %>
<%
    float max = Float.parseFloat(priceMax);
    float min = Float.parseFloat(priceMin);
    StringBuffer result;
    result = new StringBuffer();
    String driverName="com.mysql.jdbc.Driver";
    try {
        Class.forName(driverName);
    }catch (Exception e){}
    Connection connection;
    Statement sql;
    ResultSet rs;
    String databaseName = "warehouse";
    String user = "root";
    String password = "";
    String tableName = "product";
    String url ="jdbc:mysql://127.0.0.1:3306/"+databaseName+"?"
            +"useUnicode=true&characterEncoding="+"gb2312"
            +"&allowMultiQueries=true";
    int n = 0;
    try {
        result.append("<table border = 1 >");
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
        rs = sql.executeQuery("SELECT * FROM " + tableName + " Where price <= " + max + " AND"+" price >=" + min);
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
        result.append(e);
    }
    jspContext.setAttribute("queryResultByPrice",new String(result));
%>