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
		<h1> TrainCode update</h1>
		<label> 변경하고 싶은 정보의 ID : </label><input name = "id" type="text"/><br/>
		<br/>
		<div>수정사항</div>
		<label> Code : </label><input name = "code" type="number"/><br/>
		<label> Day : </label><input name = "day" type="text"/><br/>
		<label> StartStation : </label><input name = "startstation" type="text"/><br/>
		<label> StartTime : </label><input name = "starttime" type="text"/><br/>
		<label> EndStation : </label><input name = "endstation" type="text"/><br/>
		<label> EndTime : </label><input name = "endtime" type="text"/><br/>
		<label> Line_ID : </label><input name = "line_id" type="text"/><br/>	
		<button type = "submit"> update </button>
	</form>
	<br/>
	<form action = "main.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>