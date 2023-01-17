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
	
	String sql = "select * from TrainCode";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	%>
	
	<h1>TrainCode table</h1>
	<table border = "1">
	<tr>
		<td>ID</td>
		<td>Code</td>
		<td>Day</td>
		<td>StartStation</td>
		<td>StartTime</td>
		<td>EndStation</td>
		<td>EndTime</td>
		<td>Line_ID</td>
	</tr>
	<%
		while(rs.next()){
	%>
			<tr>
				<td><%=rs.getString("ID")%></td>
				<td><%=rs.getString("Code")%></td>
				<td><%=rs.getString("Day")%></td>
				<td><%=rs.getString("StartStation")%></td>
				<td><%=rs.getString("StartTime")%></td>
				<td><%=rs.getInt("EndStation")%></td>
				<td><%=rs.getInt("EndTime")%></td>
				<td><%=rs.getInt("Line_ID")%></td>
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