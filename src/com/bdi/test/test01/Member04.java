package com.bdi.test.test01;

public class Member04 {
	int a;
	
	public String test(int a) {
		return "def";
	}

	public static String test() {
		String str = "abc";
		return str;
	}
	
	public static void main(String[] args) {
		String str = Member04.test();
		
		// 내가 만든 data type : Member04
		// class => 사용자 정의 data type
		Member04 m4 = new Member04();
		m4.a = 10;
		// test(int a)는 static이 아니어서
		m4.test(1);
	}
}
