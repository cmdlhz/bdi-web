package com.bdi.test.test01;

public class Member05 {
	int a;
	
	public String test(int a) {
		return "def";
	}
	
	public static void changeMember(Member05 m5) {
		m5.a = 10;
	}
	
	public static void main(String[] args) {
		Member05 m5 = new Member05();
		System.out.println(m5.a); // 0
		changeMember(m5);
		// 위에서 m5가 아니라 m5가 가지고 있는 a 값을 바꿈
		System.out.println(m5.a); // 10
	}
}

/*
compiler가 넣어주는 것

Integer이 었으면 null
int라서 0
*/