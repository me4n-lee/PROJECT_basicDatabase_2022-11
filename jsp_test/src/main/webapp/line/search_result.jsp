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
	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/project";
	String dbUser = "root";
	String dbPass = "1234";
	Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
	
	String sql = "select * from Line where ID = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, ID);
	ResultSet rs = pstmt.executeQuery();
	%>
	
	<h1>Line table</h1>
	<table border = "1">
	<tr>
		<td>ID</td>
		<td>Name</td>
		<td>BuiltYear</td>
		<td>Capacity</td>
	</tr>
	<%
		while(rs.next()){
	%>
			<tr>
				<td><%=rs.getString("ID")%></td>
				<td><%=rs.getString("Name")%></td>
				<td><%=rs.getString("BuiltYear")%></td>
				<td><%=rs.getString("Capacity")%></td>
			</tr>			
	<%
		}
	%>
	</table>
	<br/>
	<form action = "search.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>