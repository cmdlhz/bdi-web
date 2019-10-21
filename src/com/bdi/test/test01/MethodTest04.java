package com.bdi.test.test01;

class Mother04{
	static int a = 3;
	static {
		System.out.println(5);
	}
	
	Mother04(){
		System.out.println(1);
	}
	Mother04(int a){
		System.out.println(2);
	}
}

public class MethodTest04 extends Mother04 {
	MethodTest04(){
		System.out.println(3);
	}
	
	MethodTest04(int a){
		System.out.println(4);
	}
	
	public static void main(String[] args) {
		System.out.println(Mother04.a);
		MethodTest04 m4 = new MethodTest04();
	}
}

/*
1
3
*/