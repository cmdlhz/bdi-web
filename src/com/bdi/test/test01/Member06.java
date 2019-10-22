package com.bdi.test.test01;

class Human{
	int a;
}

public class Member06 {
	int a;
	
	public String test(int a) {
		return "def";
	}
	
	// 변수명은 중요하지 않음
	// Member06에 들어갈 수 있는 것만 입력 가능
	public static void changeMember(Member06 variable) {
		// 새로운 m6 이건 이 안에서 죽음
		variable = new Member06();
		variable.a = 10;
		System.out.println("NEW : " + variable.a);
	}
	
	public static void main(String[] args) {
		Member06 m6 = new Member06();
		System.out.println(m6.a); // 0
		changeMember(m6);
		// 위에서 m5가 아니라 m5가 가지고 있는 a 값을 바꿈
		System.out.println(m6.a); // 0
		
		Human h = new Human();
		// ERROR : The method changeMember(Member06) in the type Member06 is not applicable for the arguments (Human)
		// "Human extends Member06"을 통해 상속받으면 사용 가능
//		changeMember(h);
		System.out.println("Human : " + h.a);
	}
}

/*
0
NEW : 10
0
Human : 0
*/
