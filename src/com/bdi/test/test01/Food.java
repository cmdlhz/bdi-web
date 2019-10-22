package com.bdi.test.test01;

import java.util.ArrayList;
import java.util.List;

public class Food {
	public String name;
	public int price;
	
	public String toString() {
		return "Person [name = " + name + ", price = " + price + "]";
	}
	
	public static void main(String[] args) {
		Food f = new Food();
		f.name = "Chicken";
		f.price = 20000;
		
		Food f2 = new Food();
		f2.name = "Beer";
		f2.price = 5000;		
		
//		Food f3 = new Food();
//		f3.name = "Soju";
//		f3.price = 4000;
		
		List<Food> menu = new ArrayList<Food>();
		menu.add(f);
		menu.add(f2);
//		menu.add(f3);

		System.out.println(menu);
	}
}

// [Person [name = Chicken, price = 20000], Person [name = Beer, price = 5000], Person [name = Soju, price = 4000]]
