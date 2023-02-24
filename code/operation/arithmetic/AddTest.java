package operation.arithmetic;

import org.junit.Test;
import static org.junit.Assert.*;

public class AddTest {
	@Test
	public void twoPlusTwo() {
		assertEquals(4, Add.add(2, 2));
	}
	@Test
	public void minusTwoPlusOne() {
		assertTrue(Add.add(-2, 1) == -1);
	}
}
