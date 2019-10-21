package com.bdi.test.test01;

class Mother02_2{
	int a = 10;
	
	Mother02_2(int a){
		System.out.println("I'm a mom.");
	}
	
	public void test_2() {
		System.out.println("Bye, son!!");
	}
}

public class MethodTest02_2 extends Mother02_2 {
	int a = 20;
	
	// [방법 2] 처음부터 a를 pass해줘야 함
	MethodTest02_2(int a){
		super(a);
		super.test_2();
		System.out.println(this.a);
		System.out.println("I'm a son.");
	}
	public void test() {
		System.out.println("Bye, mom.");
	}
	public static void main(String[] args) {
		Mother02_2 mt02_2 = new MethodTest02_2(3);
		
	}
}
