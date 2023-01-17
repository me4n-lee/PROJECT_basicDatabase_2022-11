<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "insert_result.jsp" method = "post">
		<h1> Headquater insert</h1>
		<label> ID : </label><input name = "id" type="text"/><br/>
		<label> Name : </label><input name = "name" type="text"/><br/>
		<label> Planet : </label><input name = "planet" type="text"/><br/>
		<label> Continent : </label><input name = "continent" type="text"/><br/>
		<label> ManagerName : </label><input name = "managername" type="text"/><br/>
		<label> Budget : </label><input name = "budget" type="text"/><br/>
		<button type = "submit"> insert </button>
	</form>
	<br/>
	<form action = "main.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>