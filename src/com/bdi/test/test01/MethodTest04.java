package com.bdi.test.test01;

class Mother04{
	static int a;
	static {
		System.out.println(1);
	}
	
	Mother04(){
		System.out.println(2);
	}
	Mother04(int a){
		System.out.println(3);
	}
}

public class MethodTest04 extends Mother04 {
	MethodTest04(){
		System.out.println(4);
	}
	
	MethodTest04(int a){
		System.out.println(5);
	}
	
	public static void main(String[] args) {
		System.out.println(Mother04.a);
		MethodTest04 m4 = new MethodTest04(2);
	}
}

/*
1
3
*/