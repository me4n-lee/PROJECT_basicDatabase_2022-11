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
	String Type = request.getParameter("type");
	String Model = request.getParameter("model");
	int Year = Integer.parseInt(request.getParameter("year"));
	String Status = request.getParameter("status");
	String Train_ID = request.getParameter("train_id");
	
	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/project";
	String dbUser = "root";
	String dbPass = "1234";
	Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
	
	String sql = "update Vehicle set Type=?, Model=?, Year=?, Status=?, Train_ID=? where ID = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, Type);
	pstmt.setString(2, Model);
	pstmt.setInt(3, Year);
	pstmt.setString(4, Status);
	pstmt.setString(5, Train_ID);
	pstmt.setString(6, ID);
	
	pstmt.executeUpdate();
	%>
	
	<div>update 완료</div>
	<p>ID = <%=ID%></p>
	<p>Type = <%=Type%></p>
	<p>Model = <%=Model%></p>
	<p>Year = <%=Year%></p>
	<p>Status = <%=Status%></p>
	<p>Train_ID = <%=Train_ID%></p>
	<form action = "insert.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>