package com.bdi.test.test01;

public class SplitTest {
	
	public static void main(String[] args) {
		String hobby = "study, movie, game";
		String[] hobbies = hobby.split(", ");
		
		for(int i=0; i<hobbies.length; i++) {
			System.out.println(hobbies[i]);
		}
		
		String hob1 = "study";
		// forEach문으로 불렸으나
		// 1.8로 넘어오면서 forEach 예약어가 생겨서 더 이상 그렇게 부르지 않음
		for(String str:hobbies) {
			if(str.equals(hob1)) {
				System.out.println("checked");
				break;
				// study가 맞았다면 그 다음꺼는 비교 안 함
			}
		}
	}
}

/*
 * checked
study
movie
game
 * 
 */