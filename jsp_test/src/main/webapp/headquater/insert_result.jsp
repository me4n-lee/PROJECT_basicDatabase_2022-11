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
	String Planet = request.getParameter("planet");
	String Continent = request.getParameter("continent");
	String ManagerName = request.getParameter("managername");
	int Budget = Integer.parseInt(request.getParameter("budget"));
	
	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/project";
	String dbUser = "root";
	String dbPass = "1234";
	Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
	
	String sql = "insert into Headquater(ID, Name, Planet, Continent, Managername, Budget) values(?,?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, ID);
	pstmt.setString(2, Name);
	pstmt.setString(3, Planet);
	pstmt.setString(4, Continent);
	pstmt.setString(5, ManagerName);
	pstmt.setInt(6, Budget);
	
	pstmt.executeUpdate();
	%>
	
	<div>insert 완료</div>
	<p>ID = <%=ID%></p>
	<p>Name = <%=Name%></p>
	<p>Planet = <%=Planet%></p>
	<p>Continent = <%=Continent%></p>
	<p>ManagerName = <%=ManagerName%></p>
	<p>Budget = <%=Budget%></p>
	<form action = "insert.jsp">
		<button>돌아가기</button>
	</form>
	
</body>
</html>

