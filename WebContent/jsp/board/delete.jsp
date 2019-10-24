<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE Page</title>
</head>
<body>
	삭제한 posting # : <%= request.getParameter("bi_num") %>
<%
String bi_num = request.getParameter("bi_num");
String sql = "delete from board_info where bi_num = ?";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, bi_num);

int result = ps.executeUpdate();
if(result == 1){
	out.println("<br>Your posting has been deleted.");
	out.println("<a href=\"/bdi-web/jsp/board/list.jsp\">Go back to the list.</a>");
} else {
	out.println("There is an ERROR!");
	con.rollback();
}
%>
</body>
</html>