<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- meta : 정보 data -->
<!-- IE 9 이하에서는 아래 tag가 없으면 한글이 깨져보임 -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- text로 나옴 -->
alert(0);
<script>
<!-- window.alert(2); 인데 window가 생략된 것임 -->
<!-- window (변수) : V8 engine에 의해  -->
<!-- NodeJS : V8 기반 -->
<!-- 영역 없음 => 호출 -->
<!-- 순서대로 실행 안 될 수도 있으니 주의! -->
<!-- JavaScript는 비동기 -->
 
<!-- alert(1); -->
<!--alert(2); -->

	var str = 1;
	alert(str+1);
	
	str = "1";
	alert(str+1);
	
	str = true;
	str = [1, 2, 3];
	<!-- Java와는 달리 null은 data type으로 존재함 -->
	<!-- Java에서는 null으로 값만 대입할 수 있음 -->
	str = null;

	str = undefined;

</script>
</body>
</html>