package com.bdi.test.test01;

public class SplitTest2 {

	public static boolean hasStr(String[] strs, String targetStr) {
		for(String str:strs) {
			if(str.equals(targetStr)) {
				return true;
			}
		}
		return false;
	}

	public static void main(String[] args) {
		String hobby = "study, movie, game";
		String[] hobbies = hobby.split(", ");
		String hob1 = "study";
		
		if(hasStr(hobbies, hob1)) {
			System.out.println("checked");
		}
	}
}
