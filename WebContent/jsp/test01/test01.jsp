<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 파일 하나당 Class 하나가 생성이 되므로 차라리 클래스를 따로 만드는 게 나음 -->
<!-- 그 다음 (Class 이름).(method 이름)() -->
<!-- ex) Common.test(); -->
<!-- test가 static일 경우 -->
<%!
	// 여기선 영역 있는 method 사용 가능
	public void test(){
	
	}

	//public void test(){
	//	// ERROR!!! request cannot be resolved
	//	request.getParameter("abc");
	//}
	
	// parameter로 request를 사용하기 때문에 사용 가능
	public void test(HttpServletRequest request){
		request.getParameter("abc");
	}
%>

<!-- Java가 만든 method안에서 동작  -->
<%
	// test.java 파일 들어가 보면
	// public void _jspService(){ ... } 안에 코드가 들어가기 때문에
	// method 안에 method를 선언할 수 없음
	// public void test(){
		
	// }

	test(request);
%>
</body>
</html>