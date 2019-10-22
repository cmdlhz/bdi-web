package com.bdi.test.test01;

import java.util.ArrayList;
import java.util.List;

public class Member08 {
	int a;
	
	public static void main(String[] args) {
		Member08 m8 = new Member08();
		List<Member08> mList = new ArrayList<Member08>();
		
		m8.a = 10;
		mList.add(m8);
		m8.a = 20;
		mList.add(m8);
		m8.a = 30;
		mList.add(m8);
		
		m8 = new Member08();
		
		for(int i=0; i<mList.size(); i++) {
			System.out.println(mList.get(i).a);
		}
	}
}

/*
30
30
30
 * 
 */