<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String bi_num = request.getParameter("BI_NUM");
String bi_title = request.getParameter("BI_TITLE");
String bi_type = request.getParameter("BI_TYPE");
String bi_star = request.getParameter("BI_STAR");
String bi_credat = request.getParameter("BI_CREDAT");
String bi_desc = request.getParameter("BI_DESC");

String sql = "Update books_info set BI_TITLE=?, BI_TYPE=?, BI_STAR=?, BI_CREDAT=?, BI_DESC=? ";
sql += "where bi_num = ?";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, bi_title);
ps.setString(2, bi_type);
ps.setString(3, bi_star);
ps.setString(4, bi_credat);
ps.setString(5, bi_desc);
ps.setString(6, bi_num);

int result = ps.executeUpdate();
if(result == 1){
	out.println("Updates - completed<br>");
	out.println("<a href=\"/bdi-web/jsp/books/list.jsp\">리스트 가기</a>");
	con.commit();
} else {
	out.println("There is an update ERROR!");
	out.println("<a href=\"/bdi-web/jsp/books/list.jsp\">리스트 가기</a>");
	out.println(sql);
	con.rollback();
}
%>