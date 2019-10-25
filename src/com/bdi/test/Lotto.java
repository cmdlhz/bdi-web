package com.bdi.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Lotto {
	public List<Integer> getLottoList(){
		List<Integer> nums = new ArrayList<Integer>();
		Random r = new Random();
		
		for(int i=0; i<6; i++) {
			int ranNum = r.nextInt(45) + 1;
			if(nums.indexOf(ranNum) == -1) {
				nums.add(ranNum);
			} else {
				i--;
			}
		}
		return nums;
	}
}
