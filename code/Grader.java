public class Grader {
	public static char determineGrade (int marks) {
		if (marks < 0)
			throw new IllegalArgumentException("Marks can't be negative.");
		else if (marks < 60)
			return 'E';
		else if (marks < 70)
			return 'D';
		else if (marks < 80)
			return 'C';
		else if (marks < 90)
			return 'B';
		else 
			return 'A';
	}
}
