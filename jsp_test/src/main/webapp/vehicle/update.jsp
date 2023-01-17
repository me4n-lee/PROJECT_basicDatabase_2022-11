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
		<h1> Vehicle update</h1>
		<label> 변경하고 싶은 정보의 ID : </label><input name = "id" type="text"/><br/>
		<br/>
		<div>수정사항</div>
		<label> Type : </label><input name = "type" type="text"/><br/>
		<label> Model : </label><input name = "model" type="text"/><br/>
		<label> Year : </label><input name = "year" type="number"/><br/>
		<label> Status : </label><input name = "status" type="text"/><br/>
		<label> Train_ID : </label><input name = "train_id" type="text"/><br/>
		<button type = "submit"> update </button>
	</form>
	<br/>
	<form action = "main.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>