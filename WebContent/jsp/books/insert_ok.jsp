<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/first.jsp" %>
<%
request.setCharacterEncoding("utf-8");

String bi_title = request.getParameter("BI_TITLE");
String bi_type = request.getParameter("BI_TYPE");
String bi_star = request.getParameter("BI_STAR");
String bi_credat = request.getParameter("BI_CREDAT");
String bi_desc = request.getParameter("BI_DESC");

String sql = "insert into books_info(BI_NUM, BI_IMAGE, BI_TITLE, BI_TYPE, BI_STAR, BI_CREDAT, BI_DESC) ";
sql += "values(seq_books_bi_num.nextval, '/imgs/book02.jpg', ?, ?, ?, ?, ?)";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, bi_title);
ps.setString(2, bi_type);
ps.setString(3, bi_star);
ps.setString(4, bi_credat);
ps.setString(5, bi_desc);

int result = ps.executeUpdate();
if(result == 1){
	out.println("<br>Your book has been registered.");
	out.println("<a href=\"/bdi-web/jsp/books/list.jsp\">Go back to the list</a>");
	con.commit();
} else {
	out.println("There is a registration ERROR!");
	con.rollback();
}

%>