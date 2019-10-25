<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lotto #s</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>No. </th>
			<th>Num #1</th>
			<th>Num #2</th>
			<th>Num #3</th>
			<th>Num #4</th>
			<th>Num #5</th>
			<th>Num #6</th>
		</tr>
<%
	String sql = "Select * from lotto ";
	sql += "order by SEQ";
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
%>
		<tr>
			<td><%= rs.getString("SEQ") %></td>
			<td><%= rs.getString("NUM1") %></td>
			<td><%= rs.getString("NUM2") %></td>
			<td><%= rs.getString("NUM3") %></td>
			<td><%= rs.getString("NUM4") %></td>
			<td><%= rs.getString("NUM5") %></td>
			<td><%= rs.getString("NUM6") %></td>
		</tr>
<%
	}
%>
	</table>
<a href="/bdi-web/jsp/lotto/insert.jsp"><button>Generate #s</button></a>
</body>
</html>