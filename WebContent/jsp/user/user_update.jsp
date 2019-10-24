<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public String checkStr(String str, String targetStr){
		String[] strs = str.split(", ");
		for(String s:strs){
			if(s.equals(targetStr)){
				return "checked";
			}
		}
		return "";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login List</title>
</head>
<body>
<%
	String ui_num = request.getParameter("ui_num");
	String sql = "Select * from user_info where ui_num = ?";
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, ui_num);
	ResultSet rs = ps.executeQuery();
	
	if(!rs.next()){
		out.println("Information of " + ui_num + " doesn't exist.");
	} else {
%>
<form method="POST" action="/bdi-web/jsp/user/update_ok.jsp">
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
	<tr>
		<td><%= rs.getString("UI_NUM")%></td>
		<td><input type="text" name="UI_ID" value="<%= rs.getString("UI_ID")%>"></td>
		<td><input type="password" name="UI_PWD" value="<%= rs.getString("UI_PWD")%>"></td>
		<td><input type="text" name="UI_NAME" value="<%= rs.getString("UI_NAME")%>"></td>
		<td><input type="number" name="UI_AGE" value="<%= rs.getString("UI_AGE")%>"></td>
		<td><input type="text" name="UI_ETC" value="<%= rs.getString("UI_ETC")%>"></td>
		<td>
			<input type="checkbox" name="HOBBY" value="study" <%= checkStr(rs.getString("HOBBY"), "study")%>>study
			<input type="checkbox" name="HOBBY" value="game" <%= checkStr(rs.getString("HOBBY"), "game")%>>game
			<input type="checkbox" name="HOBBY" value="swimming" <%= checkStr(rs.getString("HOBBY"), "swimming")%>>swimming
		</td>
		<!-- 기준이 되는 UI_NUM 넘겨줌 -->
		<input type="hidden" name="UI_NUM" value="<%=rs.getString("UI_NUM")%>">
	</tr>
<%
	}

%>
</table>
<button>UPDATE</button>
</form>
</body>
</html>
