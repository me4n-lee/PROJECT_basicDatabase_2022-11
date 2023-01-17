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
	String Status = request.getParameter("status");
	String DepStatus = request.getParameter("depstatus");
	String ArvStatus = request.getParameter("arvstatus");
	String UpdateTime = request.getParameter("updatetime");
	String Train_ID = request.getParameter("train_id");
	String Engineer_ID = request.getParameter("engineer_id");
	String TrainCode_ID = request.getParameter("traincode_id");
	
	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://localhost:3306/project";
	String dbUser = "root";
	String dbPass = "1234";
	Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
	
	String sql = "update Operation set Status=?, DepStatus=?, ArvStatus=?, UpdateTime=?, Train_ID=?, Engineer_ID=?, TrainCode_ID=? where ID = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, Status);
	pstmt.setString(2, DepStatus);
	pstmt.setString(3, ArvStatus);
	pstmt.setString(4, UpdateTime);
	pstmt.setString(5, Train_ID);
	pstmt.setString(6, Engineer_ID);
	pstmt.setString(7, TrainCode_ID);
	pstmt.setString(8, ID);
	
	pstmt.executeUpdate();
	%>
	
	<div>update 완료</div>
	<p>ID = <%=ID%></p>
	<p>Status = <%=Status%></p>
	<p>DepStatus = <%=DepStatus%></p>
	<p>DepStatus = <%=ArvStatus%></p>
	<p>UpdateTime = <%=UpdateTime%></p>
	<p>Train_ID = <%=Train_ID%></p>
	<p>Engineer_ID = <%=Engineer_ID%></p>
	<p>TrainCode_ID = <%=TrainCode_ID%></p>
	<form action = "update.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>