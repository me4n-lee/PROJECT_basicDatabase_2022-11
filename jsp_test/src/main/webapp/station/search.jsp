<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "search_result.jsp" method = "post">
		<h1> Station search</h1>
		<label> 찾고 싶은 정보의 ID : </label><input name = "id" type="text"/><br/>
		<button type = "submit"> search </button>
	</form>
	<br/>
	<br/>
	<form action = "main.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>