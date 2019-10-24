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
<title>Board</title>
</head>
<body>
<form>
	<select name="search">
		<option>SELECT</option>
		<option value="1">Title</option>
		<option value="2">User</option>
		<option value="3">Content</option>
		<option value="4">Title + Content</option>
		<option value="5">Title + Content + User</option>
	</select> : <input type="text" name="searchStr"><button>SEARCH</button>
</form>
<table border="1">
	<tr>
		<th>번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>내용</th>
		<th>등록일자</th>
		<th>등록시간</th>
		<th>수정일자</th>
		<th>수정시간</th>
		<th>삭제</th>
	</tr>
<%
	String search = request.getParameter("search");
	String searchStr = request.getParameter("searchStr");
	String sql = "Select * from board_info ";
	if(search != null){
		if("1".equals(search)){
			sql += "where bi_title like ?";
		} else if("2".equals(search)){
			sql += "where bi_user like ?";
		} else if("3".equals(search)){
			sql += "where bi_content like ?";
		} else if("4".equals(search)){
			sql += "where bi_title like ? or bi_user like ?";
		} else if("5".equals(search)){
			sql += "where bi_title like ? or bi_user like ? or bi_content like ?";
		} else {
			out.println("You selected an invalid input.");
		}
	}
	sql += "order by bi_num asc";
	
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	if(search != null){

		if("1".equals(search) || "2".equals(search) || "3".equals(search)){
			ps.setString(1, "%" + searchStr + "%");
		} else if("4".equals(search)){
			ps.setString(1, "%" + searchStr + "%");
			ps.setString(2, "%" + searchStr + "%");
		} else if("5".equals(search)){
			ps.setString(1, "%" + searchStr + "%");
			ps.setString(2, "%" + searchStr + "%");
			ps.setString(3, "%" + searchStr + "%");
		}
	}
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		final String bi_num = rs.getString("bi_num");
%>
	<tr>
		<td><%= bi_num %></td>
		<td><%= rs.getString("BI_USER")%></td>
		<td><a href="/bdi-web/jsp/board/update.jsp?bi_num=<%= rs.getString("BI_NUM")%>"><%= rs.getString("BI_TITLE")%></a></td>
		<td><%= rs.getString("BI_CONTENT")%></td>
		<td><%= rs.getString("BI_CREDAT")%></td>
		<td><%= rs.getString("BI_CRETIM")%></td>
		<td><%= rs.getString("BI_MODDAT")%></td>
		<td><%= rs.getString("BI_MODTIM")%></td>
		<td><a href="/bdi-web/jsp/board/delete.jsp?bi_num=<%=bi_num%>"><button>DELETE</button></a></td>
	</tr>
<%
	}
%>
</table>
<a href="/bdi-web/jsp/board/create.jsp"><button>CREATE</button></a>
</body>
</html>