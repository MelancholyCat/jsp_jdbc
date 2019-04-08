<%@tag pageEncoding="gb2312" %>
<%@tag import="java.sql.*" %>
<%@attribute name="connection" required="true" %>
<%@attribute name="prepareStatement" required="true" %>
<%@attribute name="resultSet" required="true" %>
<%
    if(resultSet!=null) {
        try {
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    if(prepareStatement!=null) {
        try {
            prepareStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    if(connection!=null) {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>