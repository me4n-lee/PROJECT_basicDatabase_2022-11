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
		<h1> Line update</h1>
		<label> 변경하고 싶은 정보의 ID : </label><input name = "id" type="text"/><br/>
		<br/>
		<div>수정사항</div>
		<label> Name : </label><input name = "name" type="text"/><br/>
		<label> BuiltYear : </label><input name = "builtyear" type="number"/><br/>
		<label> Capacity : </label><input name = "capacity" type="number"/><br/>
		<button type = "submit"> update </button>
	</form>
	<br/>
	<form action = "main.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>