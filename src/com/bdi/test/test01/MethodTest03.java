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
		// ������ �κ�
//		super();
		// super()�� ���ڸ� ������ "Mom 1" ��� "Mom 2"�� ��µ�
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