<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	String ID = request.getParameter("id");
	String Name = request.getParameter("name");
	int BuiltYear = Integer.parseInt(request.getParameter("builtyear"));
	int Capacity = Integer.parseInt(request.getParameter("capacity"));
	
	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/project";
	String dbUser = "root";
	String dbPass = "1234";
	Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
	
	String sql = "update Line set Name=?, BuiltYear=?, Capacity=? where ID = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, Name);	
	pstmt.setInt(2, BuiltYear);
	pstmt.setInt(3, Capacity);
	pstmt.setString(4, ID);
	
	pstmt.executeUpdate();
	%>
	
	<div>update 완료</div>
	<p>ID = <%=ID%></p>
	<p>Name = <%=Name%></p>
	<p>BuiltYear = <%=BuiltYear%></p>
	<p>Capacity = <%=Capacity%></p>
	<form action = "update.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>