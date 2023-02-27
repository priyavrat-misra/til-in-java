public class Grader {
	public static char determineGrade (int marks) {
		if (marks < 0)
			throw new IllegalArgumentException("Marks can't be negative.");
		if (marks < 60)
			return 'E';
		if (marks < 70)
			return 'D';
		if (marks < 80)
			return 'C';
		if (marks < 90)
			return 'B';
		else 
			return 'A';
	}
}
