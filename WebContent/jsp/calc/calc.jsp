<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="/bdi-web/jsp/calc/calc_ok.jsp">
		Num 1 : <input type="number" name="num1">
		<select name="op">
			<option value="">����</option>
			<option value="+">���ϱ�</option>
			<option value="-">����</option>
			<option value="*">���ϱ�</option>
			<option value="/">������</option>	
		</select>
		Num 2 : <input type="number" name="num2">
		<button>Calculation</button>
	</form>
</body>
</html>