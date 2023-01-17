<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>TrainCode 관리</h1>
	<form action = "insert.jsp">
		<button>insert</button>
	</form>
	<br/>
	<form action = "search.jsp">
		<button>search</button>
	</form>
	<br/>
	<form action = "update.jsp">
		<button>update</button>
	</form>
	<br/>
	<form action = "delete.jsp">
		<button>delete</button>
	</form>
	<br/>
	<form action = "show_all.jsp">
		<button>전체 테이블 확인</button>
	</form>
	<br/>
	<form action = "../head_last.jsp">
		<button>관리자 페이지로 돌아가기</button>
	</form>
</body>
</html>