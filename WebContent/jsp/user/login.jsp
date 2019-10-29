<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
<form method="post" id="loginForm" action="/bdi-web/jsp/user/login_ok.jsp">
	ID : <input type="text" name="id" id="id"><br>
	PW : <input type="password" name="pwd" id="pwd"><br>
	<button type="button" onclick="login()">LOGIN</button>
</form>
<script>
function login(){
	var idObj = document.getElementById("id");
	var pwdObj = document.getElementById("pwd");

	var id = idObj.value;
	var pwd = pwdObj.value;
	
	alert(id.length); // ".value" => property
	alert(pwd.length);
	
	if(pwd.length < 5){
		alert("Passwords should contain more than 5 characters.");
		pwdObj.value = '';
		pwdObj.focus();
		return;
	}
	var loginForm = document.getElementById("loginForm");
	loginForm.submit();
	alert("Login successfully followed the rules.");
}
// login();
// window.login() = login()

window.onload = function(){
	document.getElementById("id").value = "redpolo";
}

</script>
</body>
</html>