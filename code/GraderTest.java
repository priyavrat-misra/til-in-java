import org.junit.Test;
import static org.junit.Assert.*;

public class GraderTest {
	@Test
	public void fiftyNineMeansE() {
		assertEquals(Grader.determineGrade(59), 'E');
	}
	@Test
	public void zeroMeansE() {
		assertEquals(Grader.determineGrade(0), 'E');
	}
	@Test
	public void sixtyOneMeansD() {
		assertEquals(Grader.determineGrade(61), 'D');
	}
	@Test
	public void seventyNineMeansC() {
		assertEquals(Grader.determineGrade(79), 'C');
	}
	@Test
	public void eigthyNineMeansB() {
		assertEquals(Grader.determineGrade(89), 'B');
	}
	@Test
	public void ninetyMeansA() {
		assertEquals(Grader.determineGrade(90), 'A');
	}
	/* works for JUnit v4.13+
	@Test
	public void negativeThrowsAnException() {
		assertThrows(IllegalArgumentException.class,
				() -> {
					Grader.determineGrade(-1);
				}
			);
	}
	*/
}
