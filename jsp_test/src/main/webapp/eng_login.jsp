<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>기관사님 환영합니다</h1>
	</div>
	<br/>
	<form action = "eng_login_ok.jsp" method ="post">
		<div>관리자 로그인</div>
		<div>
			<label> id : </label><input name = "id" type="text"/>	
		</div>
		<div>
			<label> password : </label><input name = "password" type="text"/>
		</div>
		<button type="submit">login</button>
	</form>
	<br/>
	<form action = "first.jsp">
		<button>돌아가기</button>
	</form>
</body>
</html>