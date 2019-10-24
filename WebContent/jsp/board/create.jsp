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
<title>Create a post.</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String num = request.getParameter("bi_num");
	String user = request.getParameter("bi_user");
	if(num != null){
		String sql = "select * from board_info where BI_NUM = ? and BI_USER = ?";
		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, num);
		ps.setString(2, user);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
			out.println("Welcome, " + rs.getString("bi_user"));
		} else {
			out.println("You wrote your name incorrectly.");
		}
	}
%>
<form method="POST" action="/bdi-web/jsp/board/create_ok.jsp">
	작성자 : <input type="text" name="BI_USER"><br>
	제목 : <input type="text" name="BI_TITLE"><br>
	내용 : <textarea cols="22" rows="10" name="BI_CONTENT"></textarea><br>
	<button>등록</button>
</form>
</body>
</html>