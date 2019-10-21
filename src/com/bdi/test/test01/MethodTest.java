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
	// �̸��� ���� � ���� �ϴ��� ���� ����
	// 1) ���
	// 2) return data type�� ���ƾ� ��
	// 3) parameter ���ƾ���
	// 4) parent�� ���������ں��� ���� �� ����
	public void test(int a, int b) {
		System.out.println(a + b);
	}
	public void test(int a, String b) {
		System.out.println(a + b);
	}
	public static void main(String[] args) {
		MethodTest mt = new MethodTest();
		mt.test(2, 3);
		System.out.println("mt�� �ִ� c : " + mt.c); // ������ overriding ������ �ƴ�
		// MethodTest���� �ҷ��ͼ� "123" �� ��
		
		Mother mt2 = new MethodTest();
		System.out.println("mt2�� �ִ� c : " + mt2.c);
	}
}

/*
5
mt�� �ִ� c : 123
mt2�� �ִ� c : 3
*/