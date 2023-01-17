<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
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
	
	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/project";
	String dbUser = "root";
	String dbPass = "1234";
	Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
	
	String sql = "select * from Vehicle";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	%>
	
	<h1>Vehicle table</h1>
	<table border = "1">
	<tr>
		<td>ID</td>
		<td>Type</td>
		<td>Model</td>
		<td>Year</td>
		<td>Status</td>
		<td>Train_ID</td>
	</tr>
	<%
		while(rs.next()){
	%>
			<tr>
				<td><%=rs.getString("ID")%></td>
				<td><%=rs.getString("Type")%></td>
				<td><%=rs.getString("Model")%></td>
				<td><%=rs.getInt("Year")%></td>
				<td><%=rs.getString("Status")%></td>
				<td><%=rs.getString("Train_ID")%></td>
			</tr>			
	<%
		}
	%>
	</table>
	<br/>
	<form action = "main.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>