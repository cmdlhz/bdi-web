<%@page import="java.sql.Statement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE</title>
</head>
<body>
	삭제할 영화 번호: <%= request.getParameter("mi_num") %>
<%
String mi_num = request.getParameter("mi_num");

String sql = "delete from movie where mi_num =" + mi_num;

System.out.println(sql);

Connection con = DBCon.getCon();
Statement stmt = con.createStatement();

int result = stmt.executeUpdate(sql);
if(result == 1){
	out.println("What you selected has been deleted.");
	out.println("<a href=\"/bdi-web/jsp/movie/movie_list.jsp\">리스트 가기</a>");
	con.commit();
} else {
	out.println("There is an ERROR!");
	con.rollback();
}
%>	
</body>
</html>