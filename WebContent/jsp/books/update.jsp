<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ include file="/common/first.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE</title>
</head>
<body>
<%
String bi_num = request.getParameter("BI_NUM");
String sql = "select * from books_info where bi_num = ? ";
Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, bi_num);
ResultSet rs = ps.executeQuery();

if(!rs.next()){
	out.println("Information of " + bi_num + " doesn't exist.");
} else {
%>
<form method="POST" action="<%=rootPath%>/jsp/books/update_ok.jsp">
<table border="1">
	<tr>
		<th>번호</th>
		<th>이미지</th>
		<th>제목</th>
		<th>종류</th>
		<th>별점</th>
		<th>출판일</th>
		<th>내용</th>
	</tr>
	<tr>
		<td><%= rs.getString("BI_NUM") %></td>
		<td>
			<img src="<%= rootPath+rs.getString("BI_IMAGE")%>" width="150px">
		</td>
		<td><input type="text" name="BI_TITLE" value="<%= rs.getString("BI_TITLE")%>"></td>
		<td><input type="text" name="BI_TYPE" value="<%= rs.getString("BI_TYPE")%>"></td>
		<td><input type="number" name="BI_STAR" value="<%= rs.getString("BI_STAR")%>"></td>
		<td><input type="text" name="BI_CREDAT" value="<%= rs.getString("BI_CREDAT")%>"></td>
		<td><textarea cols="22" rows="10" name="BI_DESC"><%= rs.getString("BI_DESC")%></textarea></td>
		<input type="hidden" name="BI_NUM" value="<%= rs.getString("BI_NUM")%>">
	</tr>
<%
}
%>
</table>
<button>UPDATE</button>
</form>
</body>
</html>