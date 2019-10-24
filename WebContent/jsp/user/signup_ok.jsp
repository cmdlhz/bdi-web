<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String[] hobbies = request.getParameterValues("hobby");
String hobby = "";
for(int i=0; i<hobbies.length; i++){
	hobby += hobbies[i] + ", ";
}
hobby = hobby.substring(0, hobby.length()-2);
out.println(hobby);

String ui_id = request.getParameter("UI_ID");
String ui_pwd = request.getParameter("UI_PWD");
String ui_name = request.getParameter("UI_NAME");
String ui_age = request.getParameter("UI_AGE");
String ui_etc = request.getParameter("UI_ETC");

String sql = "insert into user_info(UI_NUM, UI_ID, UI_PWD, UI_NAME, UI_AGE, UI_ETC, HOBBY) ";
sql += "values(seq_ui_num.nextval,?,?,?,?,?,?)";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, ui_id);
ps.setString(2, ui_pwd);
ps.setString(3, ui_name);
ps.setString(4, ui_age);
ps.setString(5, ui_etc);
ps.setString(6, hobby);

int result = ps.executeUpdate();
if(result == 1){
	out.println("<br>Sign up - completed / ");
	out.println("<a href=\"/bdi-web/jsp/user/user_list.jsp\">리스트 가기</a>");
	con.commit();
} else {
	out.println("There is a sign up ERROR!");
	con.rollback();
}

%>
