<%@page import="java.sql.Statement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String mi_num = request.getParameter("mi_num");
String mi_name = request.getParameter("mi_name");
String mi_price = request.getParameter("mi_price");
String mi_date = request.getParameter("mi_date");
mi_date = mi_date.replace("-", "");
String mi_desc = request.getParameter("mi_desc");
String mi_age_limit = request.getParameter("mi_age_limit");
String mi_star_rate = request.getParameter("mi_star_rate");

String sql = "insert into movie(mi_num, mi_name, mi_price, mi_date, mi_desc, mi_age_limit, mi_star_rate) ";
sql += "values('" + mi_num + "',";
sql += "'" + mi_name + "',";
sql += "'" + mi_price + "',";
sql += "'" + mi_date + "',";
sql += "'" + mi_desc + "',";
sql += "'" + mi_age_limit + "',";
sql += "'" + mi_star_rate + "')";

System.out.println(sql);

Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
// .executeUpdate() => interface 개념
int result = stmt.executeUpdate(sql);
if(result == 1){
	out.println("Everything has been updated.");
	out.println("<a href=\"/bdi-web/jsp/movie/movie_list.jsp\">리스트 가기</a>");
	con.commit();
} else {
	out.println("There is an ERROR!");
	con.rollback();
}

%>