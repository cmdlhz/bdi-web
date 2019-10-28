<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/first.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection con = DBCon.getCon();
	String sql = "select * from books_type order by bt_num";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
%>
<form method="POST" action="<%=rootPath%>/jsp/books/insert_ok.jsp">
	제목 : <input type="text" name="BI_TITLE"><br>
	종류 : <select name="bi_type">
<%
	while(rs.next()){
%>	
	<option value="<%= rs.getString("bt_num") %>"><%= rs.getString("bt_name") %></option>
<%
	}
%>	
	</select><br>
	평점 : <input type="number" name="BI_STAR"><br>
	출판일 : <input type="text" name="BI_CREDAT"><br>
	내용 : <textarea cols="22" rows="10" name="BI_DESC"></textarea><br>
	<button>등록</button>
</form>
</body>
</html>