<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/bdi-web/param_map.jsp">
		게임명 : <input type="text" name="gameName"><br>
		장르 : <input type="checkbox" name="genre" value="action">액션
		<input type="checkbox" name="genre" value="RPG">RPG
		<input type="checkbox" name="genre" value="simulation">시뮬레이션<br>
		출시년도 : <input type="date" name="creDate"><br>
		<button>게임정보입력</button>
	</form>
</body>
</html>