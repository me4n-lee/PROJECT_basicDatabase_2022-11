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
	String Address = request.getParameter("address");
	int Tel = Integer.parseInt(request.getParameter("tel"));
	String ManagerName = request.getParameter("managername");
	int Budget = Integer.parseInt(request.getParameter("budget"));
	String Headquater_ID = request.getParameter("headquater_id");
	
	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/project";
	String dbUser = "root";
	String dbPass = "1234";
	Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
	
	String sql = "update Station set Name=?, Address=?, Tel=?, ManagerName=?, Budget=?, Headquater_ID=? where ID = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, Name);
	pstmt.setString(2, Address);
	pstmt.setInt(3, Tel);
	pstmt.setString(4, ManagerName);
	pstmt.setInt(5, Budget);
	pstmt.setString(6, Headquater_ID);
	pstmt.setString(7, ID);
	
	pstmt.executeUpdate();
	%>
	
	<div>update 완료</div>
	<p>ID = <%=ID%></p>
	<p>Name = <%=Name%></p>
	<p>Address = <%=Address%></p>
	<p>Tel = <%=Tel%></p>
	<p>ManagerName = <%=ManagerName%></p>
	<p>Budget = <%=Budget%></p>
	<p>Headquater_ID = <%=Headquater_ID%></p>
	<form action = "update.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>