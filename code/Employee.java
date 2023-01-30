public class Employee {
	static int count;
	final String dept = "R&D";
	public int age;

	public static void main(String[] args) {
		Employee e1 = new Employee();
		Employee.count += 1;
		e1.age = 24;

		Employee e2 = new Employee();
		Employee.count += 1;
		e2.age = 40;

		System.out.printf("Employee Count: %d\nEmployee Dept: %s\n", Employee.count, e1.dept);
	}
}
