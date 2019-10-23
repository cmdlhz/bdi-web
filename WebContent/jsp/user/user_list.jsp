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
<title>Login List</title>
</head>
<body>
<form>
	<select name="search">
		<option>SELECT</option>
		<option value="ui_name">Name</option>
		<option value="ui_id">ID</option>
		<option value="ui_age">Age</option>
	</select> : <input type="text" name="searchStr"><button>SEARCH</button>
</form>
<table border="1">
	<tr>
		<th>No.</th>
		<th>ID</th>
		<th>PWD</th>
		<th>Name</th>
		<th>Age</th>
		<th>Etc</th>
		<th>Hobby</th>
	</tr>
<%
	String search = request.getParameter("search");
	String searchStr = request.getParameter("searchStr");
	String sql = "Select * from user_info ";
	if(search != null){
		if("ui_name".equals(search)){
			sql += "where ui_name like ?";
		} else if("ui_id".equals(search)){
			sql += "where ui_id like ?";
		} else if("ui_age".equals(search)){
			sql += "where ui_age like ?";
		} else {
			out.println("You selected an invalid input.");
		}
	}
	sql += "order by ui_num asc";
	
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	if(search != null){
		if("ui_name".equals(search) || "ui_id".equals(search) || "ui_age".equals(search)){
			ps.setString(1, "%" + searchStr + "%");	
		}
	}
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
%>
	<tr>
		<td><%= rs.getString("UI_NUM")%></td>
		<td><a href="/bdi-web/jsp/user/user_update.jsp?ui_num=<%= rs.getString("UI_NUM") %>"><%= rs.getString("UI_ID")%></a></td>
		<td><%= rs.getString("UI_PWD")%></td>
		<td><%= rs.getString("UI_NAME")%></td>
		<td><%= rs.getString("UI_AGE")%></td>
		<td><%= rs.getString("UI_ETC")%></td>
		<td><%= rs.getString("HOBBY")%></td>
	</tr>
<%
	}
%>
</table>
<a href="/bdi-web/jsp/user/signup.jsp"><button>Sign Up</button></a>
</body>
</html>