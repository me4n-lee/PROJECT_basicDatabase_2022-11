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
	
	String sql = "select * from Operation where ID = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, ID);
	ResultSet rs = pstmt.executeQuery();
	%>
	
	<h1>Operation table</h1>
	<table border = "1">
	<tr>
		<td>ID</td>
		<td>Status</td>
		<td>DepStatus</td>
		<td>ArvStatus</td>
		<td>UpdateTime</td>
		<td>Train_ID</td>
		<td>Engineer_ID</td>
		<td>TrainCode_ID</td>
	</tr>
	<%
		while(rs.next()){
	%>
			<tr>
				<td><%=rs.getString("ID")%></td>
				<td><%=rs.getString("Status")%></td>
				<td><%=rs.getString("DepStatus")%></td>
				<td><%=rs.getString("ArvStatus")%></td>
				<td><%=rs.getString("UpdateTime")%></td>
				<td><%=rs.getString("Train_ID")%></td>
				<td><%=rs.getString("Engineer_ID")%></td>
				<td><%=rs.getString("TrainCode_ID")%></td>
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