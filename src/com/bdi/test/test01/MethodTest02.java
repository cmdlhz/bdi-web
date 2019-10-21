package com.bdi.test.test01;

class Mother02{
	int a = 10;
	
	Mother02(int a){
		System.out.println("I'm a mom.");
	}
	
	public void test() {
		System.out.println("Bye, son!!");
	}
}

public class MethodTest02 extends Mother02 {
	int a = 20;
	
	// 내가 만들면 컴파일러가 안 만들어줌
	MethodTest02(){
		// 생략된 부분
//		super();
		// [방법 1] 반드시 int라고 부를 수 있는 값을 넣어줘야 함
		super(1);
		super.test();
		System.out.println(this.a);
		System.out.println("I'm a son.");
	}
	public void test() {
		System.out.println("Bye, mom.");
	}
	public static void main(String[] args) {
		Mother02 mt02 = new MethodTest02();
		
	}
}

/*
I'm a mom.
Bye, son.
20
I'm a son.
*/