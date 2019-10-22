package com.bdi.test.test01;

import java.util.ArrayList;
import java.util.List;

public class Food02 {
	private String name;
	private int price;
	
	public Food02(String name, int price) {
		this.name = name;
		this.price = price;
	}
	
	public String toString() {
		return "Person [name = " + name + ", price = " + price + "]";
	}
	
	public static void addMenu(List<Food02> menu2, String name, int price) {
		Food02 f2 = new Food02(name, price);
		menu2.add(f2);
	}
	
	public static void main(String[] args) {
		List<Food02> menu2 = new ArrayList<Food02>();
		Food02.addMenu(menu2, "Chicken", 20000);
		Food02.addMenu(menu2, "Beer", 5000);
//		Food02.addMenu(menu2, "Soju", 4000);
		for(Food02 f2 : menu2) {
			System.out.println(f2);	
		}
	}
}

/*
Person [name = Chicken, price = 20000]
Person [name = Beer, price = 5000]
Person [name = Soju, price = 4000]
 */