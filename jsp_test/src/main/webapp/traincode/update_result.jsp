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
	int Code = Integer.parseInt(request.getParameter("code"));
	String Day = request.getParameter("day");
	String StartStation = request.getParameter("startstation");
	String StartTime = request.getParameter("starttime");
	String EndStation = request.getParameter("endstation");
	String EndTime = request.getParameter("endtime");
	String Line_ID = request.getParameter("line_id");
	
	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/project";
	String dbUser = "root";
	String dbPass = "1234";
	Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
	
	String sql = "update TrainCode set Code=?, Day=?, StartStation=?, StartTime=?, EndStation=?, EndTime=?, Line_ID=? where ID = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, Code);
	pstmt.setString(2, Day);
	pstmt.setString(3, StartStation);
	pstmt.setString(4, StartTime);
	pstmt.setString(5, EndStation);
	pstmt.setString(6, EndTime);
	pstmt.setString(7, Line_ID);
	pstmt.setString(8, ID);
	
	pstmt.executeUpdate();
	%>
	
	<div>update 완료</div>
	<p>ID = <%=ID%></p>
	<p>Code = <%=Code%></p>
	<p>Day = <%=Day%></p>
	<p>StartStation = <%=StartStation%></p>
	<p>StartTime = <%=StartTime%></p>
	<p>EndStation = <%=EndStation%></p>
	<p>EndTime = <%=EndTime%></p>
	<p>Line_ID = <%=Line_ID%></p>
	<form action = "update.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>