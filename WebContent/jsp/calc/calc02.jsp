<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String num1 = request.getParameter("num1");
	int result = 0;
	if(num1 != null){
		int n1 = Integer.parseInt(request.getParameter("num1"));
		int n2 = Integer.parseInt(request.getParameter("num2"));
		
		String op = request.getParameter("op");
		
		if(op == null){
			out.println("An operator can't be null.");
		} else if("+".equals(op)){
			result = n1 + n2;
		} else if("-".equals(op)){
			result = n1 - n2;
		} else if("*".equals(op)){
			result = n1 * n2;
		} else if("/".equals(op)){
			result = n1 / n2;
		} else{
			out.println("It's an incorrect operator.");
		}	
	}
%>
<%
	System.out.println("Test");
%>
<%!
	// public void test(){
	//	out.println("hi");
	//	}
%>
	<form>
		Num 1 : <input type="number" name="num1">
		<select name="op">
			<option value="">선택</option>
			<option value="+">더하기</option>
			<option value="-">빼기</option>
			<option value="*">곱하기</option>
			<option value="/">나누기</option>	
		</select>
		Num 2 : <input type="number" name="num2">
		<br>
		<input type="number" name="result" value="<%= result %>">
		<button>Calculation</button>
	</form>
</body>
</html>