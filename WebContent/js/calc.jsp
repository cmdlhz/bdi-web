<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculation</title>
</head>
<body>
	<!-- name은 form tag에서는 중요 -->
	<!-- id 뜻 : identity -->
	<!-- input tag가 type, id 변수를 가지고 있는 것 -->
	Num #1 : <input type="number" id="num1">
	+
	Num #2 : <input type="number" id="num2">
	= 
	<!-- "on" : event 발생 -->
	<!--  onclick 영역 => JavaScript 영역 -->
	<button onclick="calc()">Calculate</button>
<script>
	<!-- void가 되기도 하고 아니기도 함 -->
	calc(); // NaN, 0, false (alert(sum)은 실행 안 됨)
	// 되는 이유 : function hoisting (rendering 하기 위해 끝까지 먼저 다 읽기 때문에)
	// 화면을 그려내는 것 : rendering
	
	function calc(){
		var n1 = document.getElementById("num1");
		var n2 = document.getElementById("num2");
		
		sum = parseInt(n1.value) + parseInt(n2.value);
		alert(sum);
		
		n1 = new Number(n1.value);
		n2 = new Number(n2.value);
		alert(n1 + n2);
		alert(n1 == n2); // false : 같은 값을 집어넣어도
	}
	
	alert(a); // undefined
	var a = 3;
</script>
</body>
</html>