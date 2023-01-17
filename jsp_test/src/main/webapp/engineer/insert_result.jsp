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
	int Year = Integer.parseInt(request.getParameter("year"));
	String Variety = request.getParameter("variety");
	int Amount = Integer.parseInt(request.getParameter("amount"));
	String Headquater_ID = request.getParameter("headquater_id");
	
	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/project";
	String dbUser = "root";
	String dbPass = "1234";
	Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
	
	String sql = "insert into Engineer (ID, Year, Variety, Amount, Headquater_ID) values(?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, ID);
	pstmt.setInt(2, Year);
	pstmt.setString(3, Variety);
	pstmt.setInt(4, Amount);
	pstmt.setString(5, Headquater_ID);
	
	pstmt.executeUpdate();
	%>
	
	<div>insert 완료</div>
	<p>ID = <%=ID%></p>
	<p>Year = <%=Year%></p>
	<p>Variety = <%=Variety%></p>
	<p>Amount = <%=Amount%></p>
	<p>Headquater_ID = <%=Headquater_ID%></p>
	<form action = "insert.jsp">
		<button>돌아가기</button>
	</form>
	
</body>
</html>

