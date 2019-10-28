<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/first.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.write("Root Path : " + rootPath);
%>
<form>
	<select name="search">
		<option>SELECT</option>
		<option value="1">제목</option>
		<option value="2">내용</option>
		<option value="3">제목 + 내용</option>
	</select> : <input type="text" name="searchStr"><button>SEARCH</button>
</form>
<table border="1">
	<tr>
		<th>번호</th>
		<th>이미지</th>
		<th>제목</th>
		<th>종류</th>
		<th>별점</th>
		<th>출판일</th>
		<th>내용</th>
		<th>삭제</th>
	</tr>
<%
	String search = request.getParameter("search");
	String searchStr = request.getParameter("searchStr");
	String sql = "SELECT bi.BI_NUM, bi.BI_IMAGE, bi.BI_TITLE, bi.BI_STAR, bi.BI_CREDAT, bi.BI_DESC, "; 
	sql += "(select bt.bt_name FROM books_type bt where bt.BT_NUM = bi.bi_type) BI_TYPE ";
	sql += "FROM BOOKS_INFO bi ";
	
	if(search != null){
		if("1".equals(search)){
			sql += "where BI_TITLE like ?";
		} else if("2".equals(search)){
			sql += "where BI_DESC like ?";
		} else if ("3".equals(search)){
			sql += "where BI_TITLE like ? or BI_DESC like ?";
		} else {
			out.println("You inserted an invalid input.");
		}
	}
	
	sql += "order by bi_num";
	Connection con = DBCon.getCon();
	PreparedStatement ps = con.prepareStatement(sql);
	
	if(search != null) {
		if("1".equals(search) || "2".equals(search)){
			ps.setString(1, "%" + searchStr + "%");
		} else if("3".equals(search)){
			ps.setString(1, "%" + searchStr + "%");
			ps.setString(2, "%" + searchStr + "%");
		}
	}
	
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		final String bi_num = rs.getString("bi_num");
%>
	<tr>
		<td><%= bi_num %></td>
		<td>
			<!-- rootPath + rs.getString("bi_image") -->
<%-- 			<img src="<%= rootPath %>/imgs/book02.jpg" width="150px"> --%>
			<img src="<%= rootPath+rs.getString("BI_IMAGE")%>" width="150px">
		</td>
		<td><a href="<%=rootPath%>/jsp/books/update.jsp?BI_NUM=<%= rs.getString("BI_NUM")%>"><%= rs.getString("BI_TITLE")%></a></td>
		<td><%= rs.getString("BI_TYPE")%></td>
		<td><%= rs.getString("BI_STAR")%></td>
		<td><%= rs.getString("BI_CREDAT")%></td>
		<td><%= rs.getString("BI_DESC")%></td>
		<td><a href="<%=rootPath%>/jsp/books/delete.jsp?BI_NUM=<%= bi_num%>"><button>DELETE</button></a></td>
	</tr>
<%
	}
%>
</table>
<a href="<%=rootPath%>/jsp/books/insert.jsp"><button>CREATE</button></a>
<%-- <img src="<%= rootPath %>/imgs/book02.jpg"> --%>
</body>
</html>