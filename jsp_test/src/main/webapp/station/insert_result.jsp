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
	
	String sql = "insert into Station(ID, Name, Address, Tel, Managername, Budget, headquater_id) values(?,?,?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, ID);
	pstmt.setString(2, Name);
	pstmt.setString(3, Address);
	pstmt.setInt(4, Tel);
	pstmt.setString(5, ManagerName);
	pstmt.setInt(6, Budget);
	pstmt.setString(7,Headquater_ID);
	
	pstmt.executeUpdate();
	%>
	
	<div>insert 완료</div>
	<p>ID = <%=ID%></p>
	<p>Name = <%=Name%></p>
	<p>Planet = <%=Address%></p>
	<p>Continent = <%=Tel%></p>
	<p>ManagerName = <%=ManagerName%></p>
	<p>Budget = <%=Budget%></p>
	<p>Headquater_ID = <%=Headquater_ID %></p>
	<form action = "insert.jsp">
		<button>돌아가기</button>
	</form>
	
</body>
</html>

