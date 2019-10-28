<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String bi_user = request.getParameter("BI_USER");
String bi_title = request.getParameter("BI_TITLE");
String bi_content = request.getParameter("BI_CONTENT");

String sql = "insert into board_info(BI_NUM, BI_USER, BI_TITLE, BI_CONTENT, BI_CREDAT, BI_CRETIM, BI_MODDAT, BI_MODTIM) ";
sql += "values(seq_bi_num.nextval, ?, ?, ?, to_char(SYSDATE,'YYYYMMDD'), TO_CHAR(SYSDATE,'HH24MISS'), to_char(SYSDATE,'YYYYMMDD'), TO_CHAR(SYSDATE,'HH24MISS'))";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, bi_user);
ps.setString(2, bi_title);
ps.setString(3, bi_content);

int result = ps.executeUpdate();
if(result == 1){
	out.println("<br>Your posting has been registered.");
	out.println("<a href=\"/bdi-web/jsp/board/list.jsp\">Go back to the list</a>");
	con.commit();
} else {
	out.println("There is a registration ERROR!");
	con.rollback();
}

%>