<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    
    String jdbcDriver = "jdbc:mysql://localhost:3306/project";
    String dbUser = "root";
    String dbPass = "1234";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "select id from User where id=? and password=?";


    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, password);
        rs = pstmt.executeQuery();

        if (rs.next()) { // correct id & pw
            String res = rs.getString("id");
            session.setAttribute("id", id);
            response.sendRedirect("head_last.jsp");
        } else {
            response.sendRedirect("head_login.jsp");
            // incorrect id or pw
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("head_login.jsp");
        // unexpected error
    } finally {
        try {
            if (conn != null) conn.close();
            if (pstmt != null) pstmt.close();
            if (rs != null) rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>