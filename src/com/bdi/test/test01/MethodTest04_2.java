package com.bdi.test.test01;

class Mother04_2{
	static int a = 300;
	static {
		System.out.println(5);
	}
	
	Mother04_2(){
		System.out.println(1);
	}
}

public class MethodTest04_2 extends Mother04_2 {
	MethodTest04_2(){
		System.out.println(3);
	}
	
	public static void main(String[] args) {
		Mother04_2 m42 = new Mother04_2();
		m42.a = 100;
		Mother04_2 m422 = new Mother04_2();
//		m42 = new Mother04_2();
		System.out.println(m422.a);
//		System.out.println(m42.a);
	}
}

/*
5
1
1
100
*/