<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "update_result.jsp" method = "post">
		<h1> Headquater update</h1>
		<label> 변경하고 싶은 정보의 ID : </label><input name = "id" type="text"/><br/>
		<br/>
		<div>수정사항</div>
		<label> Name : </label><input name = "name" type="text"/><br/>
		<label> Planet : </label><input name = "planet" type="text"/><br/>
		<label> Continent : </label><input name = "continent" type="text"/><br/>
		<label> ManagerName : </label><input name = "managername" type="text"/><br/>
		<label> Budget : </label><input name = "budget" type="text"/><br/>
		<button type = "submit"> update </button>
	</form>
	<br/>
	<form action = "main.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>