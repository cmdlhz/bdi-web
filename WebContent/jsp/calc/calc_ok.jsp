<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	String op = request.getParameter("op");
	out.println("What you want to do is : " + op + "<br>");
	
	if(op == null){
		out.println("An operator can't be null.");
	} else if("+".equals(op)){
		out.println(num1 + num2);
	} else if("-".equals(op)){
		out.println(num1 - num2);
	} else if("*".equals(op)){
		out.println(num1 * num2);
	} else if("/".equals(op)){
		out.println(num1 / num2);
	} else{
		out.println("It's an incorrect operator.");
	}
%>
</body>
</html>