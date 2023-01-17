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
	<form action = "traincode/show_all.jsp">
		<div>현재 운행중인 열차정보</div>
		<button>보러 가기</button>
	</form>
	<br/>
	<form action = "first.jsp">
		<div>
			<button>로그인 페이지로 돌아가기</button>
		</div>
	</form>
</body>
</html>