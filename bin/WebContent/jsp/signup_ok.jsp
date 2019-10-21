<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String age = request.getParameter("age");
String etc = request.getParameter("etc");

if(id != null){
	out.println("What you entered as ID : " + id + "<br>");
	out.println("What you entered as ID : " + pwd + "<br>");
	out.println("What  you entered as ID : " + name + "<br>");
	out.println("What you entered as ID : " + age + "<br>");
	out.println("What you entered as ID : " + etc + "<br>");
	
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "insert into user_info(ui_id, ui_pwd, ui_name, ui_age, ui_etc) ";
	
	sql += " values('" + id + "','" + pwd + "','" + name + "','" + age + "','" + etc + "')";
	
	int result = stmt.executeUpdate(sql);
	// 하나이면 완료됐다는 뜻으로
	if(result == 1){
		out.println("Sign Up : completed");
		
	}
	con.commit();
}
%>
<a href="/bdi-web/jsp/signup"></a>