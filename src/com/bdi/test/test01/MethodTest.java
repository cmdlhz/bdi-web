package com.bdi.test.test01;

class Mother{
	int c = 3;
	
	public void test() {
		System.out.println("bye");
	}
}

public class MethodTest extends Mother {
	String c = "123";
	// Overloading
	// 이름을 보고 어떤 일을 하는지 유추 가능
	// 1) 상속
	// 2) return data type이 같아야 함
	// 3) parameter 같아야함
	// 4) parent의 접근제어자보다 작을 수 없다
	public void test(int a, int b) {
		System.out.println(a + b);
	}
	public void test(int a, String b) {
		System.out.println(a + b);
	}
	public static void main(String[] args) {
		MethodTest mt = new MethodTest();
		mt.test(2, 3);
		System.out.println("mt에 있는 c : " + mt.c); // 변수는 overriding 개념이 아님
		// MethodTest에서 불러와서 "123" 일 뿐
		
		Mother mt2 = new MethodTest();
		System.out.println("mt2에 있는 c : " + mt2.c);
	}
}

/*
5
mt에 있는 c : 123
mt2에 있는 c : 3
*/