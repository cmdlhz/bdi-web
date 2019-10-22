package com.bdi.test.test01;

public class Member03 {
	
	// 접근 제어자 사용
	/*
	 * Class안에 있으면서 다른 영역에 포함되지 않았을 때
	 * 	여기서 접근 제어자를 안 쓰면 default가 됨 
	 */
	
	int a; // = default 접근제어자
	// 1.8부터 존재하는 예약어 default와 다름
	// (interface용 default)
	
	// 에러 발생
//	default int b;
	
	public static String test() {
		// str에 접근하는게 아니라 return 해주는 데이터에 접근한 것
		String str = "abc";
		return str;
	}
	
	public static void main(String[] args) {
		String str = test();
		str.contentEquals("abc");
		
		// final은 local scope에서도 사용 가능
		final String str2 = test();
		
		// Cannot make a static reference to the non-static field a
//		a = 10;
		
		// 사용을 하려면 memory 생성을 해줘야 함
		Member03 m3 = new Member03();
		m3.a = 10;
	}
}
