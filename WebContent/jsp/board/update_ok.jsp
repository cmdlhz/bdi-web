<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String bi_num = request.getParameter("BI_NUM");
String bi_user = request.getParameter("BI_USER");
String bi_title = request.getParameter("BI_TITLE");
String bi_content = request.getParameter("BI_CONTENT");

String sql = "Update board_info set bi_user=?, bi_title=?, bi_content=?, ";
sql += " bi_moddat=to_char(sysdate, 'YYYYMMDD'),";
sql += " bi_modtim=to_char(sysdate, 'HH24MISS')";
sql += " where bi_num = ?";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, bi_user);
ps.setString(2, bi_title);
ps.setString(3, bi_content);
ps.setString(4, bi_num);

int result = ps.executeUpdate();
if(result == 1){
	out.println("Updates - completed<br>");
	out.println("<a href=\"/bdi-web/jsp/board/list.jsp\">리스트 가기</a>");
	con.commit();
} else {
	out.println("There is an update ERROR!");
	out.println(sql);
	con.rollback();
}
%>