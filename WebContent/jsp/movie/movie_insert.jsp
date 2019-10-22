<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="/bdi-web/jsp/movie/movie_insert_ok.jsp">
		번호 : <input type="number" name="mi_num"><br>
		영화 제목 : <textarea name="mi_name"></textarea><br>
		티켓 가격 : <input type="number" name="mi_price"><br>
		개봉일 : <input type="date" name="mi_date"><br>
		영화 설명 : <textarea name="mi_desc"></textarea><br>
		연령 등급 : <input type="text" name="mi_age_limit"><br>
		별점 : <input type="text" name="mi_star_rate"><br>
		<button>영화 등록</button>
	</form>
</body>
</html>
