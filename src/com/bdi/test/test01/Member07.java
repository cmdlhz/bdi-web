package com.bdi.test.test01;

import java.util.ArrayList;
import java.util.List;

public class Member07 {
	int a;

	public static void main(String[] args) {
		Member07 m7 = new Member07();
		List<Member07> mList = new ArrayList<Member07>();
		
		m7.a = 10;
		mList.add(m7);
		m7.a = 20;
		mList.add(m7);
		m7.a = 30;
		mList.add(m7);
		m7.a = 40;
		
		for(int i=0; i<mList.size(); i++) {
			System.out.println(mList.get(i).a);
		}
	}
}

/*
40
40
40
 */