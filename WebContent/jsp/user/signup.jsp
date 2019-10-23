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
<title>User Login</title>
</head>
<body>
<%
	// 이렇게 해야 입력된 한글이 안 깨져 보임
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	if(id!=null){
		String sql = "select * from user_info where UI_ID = ? and UI_PWD = ?";
		Connection con = DBCon.getCon();
		PreparedStatement ps = con.prepareStatement(sql);
		// DB에서는 0이 아니라 1부터 시작~!
		ps.setString(1, id);
		ps.setString(2, pwd);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
			out.println("Welcome, " + rs.getString("ui_name"));
		} else{
			out.println("You entered wrong Id & passwords...!");
		}
	}
%>
<form method="POST" action="/bdi-web/jsp/user/signup_ok.jsp">
	ID : <input type="text" name="UI_ID"><br>
	PWD : <input type="password" name="UI_PWD"><br>
	Name : <input type="text" name="UI_NAME"><br>
	Age : <input type="number" name="UI_AGE"><br>
	Etc : <input type="text" name="UI_ETC"><br>
	Hobby :
		<input type="checkbox" name="hobby" value="study">공부
		<input type="checkbox" name="hobby" value="game">게임
		<input type="checkbox" name="hobby" value="swimming">수영<br>
	<button>Sign Up</button>
</form>
</body>
</html>