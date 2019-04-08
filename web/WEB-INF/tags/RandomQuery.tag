<%@tag pageEncoding="gb2312" %>
<%@tag import="java.sql.*" %>
<%@tag import="java.util.*" %>
<%@attribute name="databaseName" required="true" %>
<%@attribute name="tableName" required="true" %>
<%@attribute name="user" required="true" %>
<%@attribute name="password" required="true" %>
<%@attribute name="count" required="true" %>
<%@variable name-given="biao" scope="AT_END" %>
<%@variable name-given="queryResult" scope="AT_END" %>
<%@variable name-given="randomCount" scope="AT_END" %>
<%
    Vector vector = new Vector();
    StringBuffer result;
    result = new StringBuffer();
    String driverName="com.mysql.jdbc.Driver";
    try {
        Class.forName(driverName);
    }catch (Exception e){}
    Connection connection;
    Statement sql;
    ResultSet rs;
    String url ="jdbc:mysql://127.0.0.1:3306/"+databaseName+"?"
            +"useUnicode=true&characterEncoding="+"gb2312"
            +"&allowMultiQueries=true";
    int n =0;
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
        sql = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        rs = sql.executeQuery("SELECT * FROM " + tableName);
        rs.last();
        int rowNumber = rs.getRow();
        int number = rowNumber;
        for (int i = 1; i <= number; i++) {
            vector.add(new Integer(i));
        }
        int m = Math.min(Integer.parseInt(count), number);
        n = m;
        while (m > 0) {
            int i = (int) (Math.random() * vector.size());
            int index = ((Integer) vector.elementAt(i)).intValue();
            rs.absolute(index);
            result.append("</tr>");
            for (int k = 1;k<=charCount;k++)
                result.append("<td>"+rs.getString(k)+"</td>");
            result.append("</tr>");
            m--;
            vector.removeElementAt(i);
        }
        result.append("</table>");
        connection.close();
    }
    catch (SQLException e){
        result.append("请输入正确的用户名和密码");
    }
    jspContext.setAttribute("queryResult",new String(result));
    jspContext.setAttribute("biao",tableName);
    jspContext.setAttribute("randomCount",String.valueOf(n));
%>