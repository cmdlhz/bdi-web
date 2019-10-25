<%@page import="com.bdi.test.Lotto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.test.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Lotto lo = new Lotto();
List<Integer> lottoList = lo.getLottoList();

String sql = "insert into lotto(SEQ, NUM1, NUM2, NUM3, NUM4, NUM5, NUM6) ";
sql += "values(seq.nextval, ?, ?, ?, ?, ?, ?)";

Connection con = DBCon.getCon();
PreparedStatement ps = con.prepareStatement(sql);

for(int i=0; i<lottoList.size(); i++) {
	ps.setInt(i+1, lottoList.get(i));
}

int result = ps.executeUpdate();
if(result == 1){
	out.println("<br>Random #s have been generated.");
	out.println("<a href=\"/bdi-web/jsp/lotto/list.jsp\">되돌아가기</a>");
	con.commit();
} else {
	out.println("There is a processing error.");
}
%>