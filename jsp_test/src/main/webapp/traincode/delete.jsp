<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "delete_result.jsp" method = "post">
		<h1> TrainCode delete</h1>
		<label> 삭제하고 싶은 정보의 ID : </label><input name = "id" type="text"/><br/>
		<button type = "submit"> delete </button>
	</form>
	<br/>
	<form action = "main.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>