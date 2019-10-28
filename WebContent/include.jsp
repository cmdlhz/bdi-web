<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/common/first.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= str %><br>
<%
Map<String, String> map = new HashMap<String, String>();
map.put("name", "Jane");
String name = map.get("name");
out.println(name);
%>
<br>
<%
// getParameter : request의 method
String name2 = request.getParameter("name2");
out.println(name2);
%>
<img src="/bdi-web/imgs/book01.jpg">
</body>
</html>

<!--  
I'm a common thing.
Jane
null 
-->