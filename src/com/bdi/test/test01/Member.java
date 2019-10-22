package com.bdi.test.test01;

public class Member {
	
	public void test10(String str) {
		str.replace("a","c");
	}
	
	public void test(String str) {
		str.replace("a", "b");
		test10(str);
	}
	
	public static void main(String[] args) {
		String str = "abc";
	}
}
