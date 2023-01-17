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
		<h1> Train insert</h1>
		<label> ID : </label><input name = "id" type="text"/><br/>
		<label> Type : </label><input name = "type" type="text"/><br/>
		<label> Conditions : </label><input name = "conditions" type="text"/><br/>
		<button type = "submit"> insert </button>
	</form>
	<br/>
	<form action = "main.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>