package com.bdi.test;

class Phone {
	private static Phone phone;
	public static Phone newInstance() {
		if(phone==null) {
			phone = new Phone();
		}
		return phone;
	}
	private Phone() {
		System.out.println("Phone - generated");
	}
	public void close() {
		System.out.println("Phone - ended");
	}
}

class PhoneManager{
	private static Phone phone;
	private static boolean calling() {
		System.out.println("Calling - completed");
		return true;
	}
	public static Phone getPhone() {
		phone = Phone.newInstance();
		if(calling()) {
			return phone;
		} else {
			return null;
		}
	}
}

public class Test {
	public static void main(String[] args) {
		Phone ph = PhoneManager.getPhone();
		System.out.println("Everything is over.");
		// 전화기를 끊는것
		ph.close();
		// 전화기가 없어지는 게 아님
		System.out.println(ph);
	}
}

/*
Phone - generated
Calling - completed
Everything is over.
Phone - ended
com.bdi.test.Phone@15db9742
*/