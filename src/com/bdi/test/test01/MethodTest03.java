package com.bdi.test.test01;

class Mother03{
	int c = 10;
	
	Mother03(){
		System.out.println("Mom 1");
	}
	Mother03(int a){
		System.out.println("Mom 2");
	}
}

public class MethodTest03 extends Mother03 {
	int c= 30;
	MethodTest03(int a){
		// 생략된 부분
//		super();
		// super()에 숫자를 넣으면 "Mom 1" 대신 "Mom 2"가 출력됨
		System.out.println("I'm executed");
	}
	public static void main(String[] args) {
		Mother03 mt03 = new MethodTest03(1);
	}
}

/*
Mom 1
I'm executed
*/