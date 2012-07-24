package problems;

import java.util.ArrayList;

import org.apache.commons.lang3.ArrayUtils;

/*
  If we list all the natural numbers below 10 that are multiples 
  of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 
  23.

  Find the sum of all the multiples of 3 or 5 below 1000.
 */

public class Problem0001 {
	
	
	
	public static void main(String[] args) {
		int[] factors = {3, 5};
		System.out.println( sumOfMultiplesBelow(1000, factors) );
		
		// 233168
	}
	
	static int sumOfMultiplesBelow(int maximum, int[] factors) {
		int[] multiples = multiplesOfBelow(maximum, factors);
		int sum = 0;
		for(int value : multiples) sum += value;
		return sum;
	}
	
	static int[] multiplesOfBelow(int maximum, int[] factors) {
		ArrayList<Integer> multiples = new ArrayList<Integer>();
		for(int value = 1; value < maximum; value++) {
			if( hasFactor(value, factors) )
				multiples.add(value);
		}
		return ArrayUtils.toPrimitive( multiples.toArray(new Integer[multiples.size()]), 0);
	}
	
	static boolean hasFactor(int value, int[] factors) {
		for(int factor : factors) {
			if(value % factor == 0) return true;
		}
		return false;
	}
	
	class Factor {
		
		public Factor() {
			
		}
		
		
	}


}






