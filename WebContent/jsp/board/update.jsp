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
<title>Update Your Posting</title>
</head>
<body>
<%
	String bi_num = request.getParameter("bi_num");
	String sql = "Select * from board_info where bi_num = ?";
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, bi_num);
	ResultSet rs = ps.executeQuery();
	
	if(!rs.next()){
		out.println("Information of " + bi_num + " doesn't exist.");
	} else {
%>
<form method="POST" action="/bdi-web/jsp/board/update_ok.jsp">
<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>내용</th>
		<th>등록일자</th>
		<th>등록시간</th>
		<th>수정일자</th>
		<th>수정시간</th>
	</tr>
	<tr>
		<td><%= rs.getString("BI_NUM")%></td>
		<td><input type="text" name="BI_USER" value="<%= rs.getString("BI_USER")%>"></td>
		<td><input type="text" name="BI_TITLE" value="<%= rs.getString("BI_TITLE")%>"></td>
		<td><textarea cols="22" rows="10" name="BI_CONTENT"><%= rs.getString("BI_CONTENT")%></textarea></td>
		<td><%= rs.getString("BI_CREDAT")%></td>
		<td><%= rs.getString("BI_CRETIM")%></td>
		<td><%= rs.getString("BI_MODDAT")%></td>
		<td><%= rs.getString("BI_MODTIM")%></td>
		<!-- 기준이 되는 BI_NUM 넘겨 줌 -->
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