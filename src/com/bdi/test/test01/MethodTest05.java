package com.bdi.test.test01;

class Mother05{
	static int a = 300;
	int b = -10;
	static {
		System.out.println(5);
	}
	
	Mother05(){
		System.out.println(1);
	}
}

public class MethodTest05 extends Mother05 {
	MethodTest05(){
		System.out.println(3);
	}
	
	public static void main(String[] args) {
		System.out.println(Mother05.a);
		Mother05 m5 = new Mother05();
		System.out.println(m5.b);
	}
}

/*
5
300
1
-10
*/