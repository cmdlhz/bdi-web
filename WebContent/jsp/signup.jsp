<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<body>
	<form method="get" action="/bdi-web/jsp/signup_ok.jsp">
		ID : <input type="text" name="id"><br>
		Password : <input type="password" name="pwd"></input><br>
		Name : <input type="text" name="name"></input><br>
		age : <input type="number" name="age"></input><br>
		etc : <textarea name="etc"></textarea><br>
		<button>Sign Up</button>
	</form>
</body>
</html>