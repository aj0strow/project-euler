package problems;

import static org.junit.Assert.*;
import org.junit.Test;

public class Problem0001Test {
	
	int[] factors = {3, 5};
	
	@Test
	public void testSumOfMultiplesBelow() {
		assertEquals( 23, Problem0001.sumOfMultiplesBelow(10, factors) );
	}
	
	@Test
	public void testMultiplesOfBelow() {
		int[] multiples = Problem0001.multiplesOfBelow(10, factors);
		int[] expectedResult = {3, 5, 6, 9};
		assertArrayEquals(multiples, expectedResult);
	}
	
	@Test
	public void testHasFactor() {
		assertTrue(Problem0001.hasFactor(15, factors));
	}

}
