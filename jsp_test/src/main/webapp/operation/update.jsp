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
		<h1> Operation update</h1>
		<label> 변경하고 싶은 정보의 ID : </label><input name = "id" type="text"/><br/>
		<br/>
		<div>수정사항</div>
		<label> Status : </label><input name = "status" type="text"/><br/>
		<label> DepStatus : </label><input name = "depstatus" type="text"/><br/>
		<label> ArvStatus : </label><input name = "arvstatus" type="text"/><br/>
		<label> UpdateTime : </label><input name = "updatetime" type="text"/><br/>
		<label> Train_ID : </label><input name = "train_id" type="text"/><br/>
		<label> Engineer_ID : </label><input name = "engineer_id" type="text"/><br/>
		<label> TrainCode_ID : </label><input name = "traincode_id" type="text"/><br/>
		<button type = "submit"> update </button>
	</form>
	<br/>
	<form action = "main.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>