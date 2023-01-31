public class Employee {
	int age;
	static int count;
	final String dept = "R&D";

	Employee (int age) {
		this.age = age;
		count += 1;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getAge() {
		return this.age;
	}

	public static void main(String[] args) {
		Employee e1 = new Employee(24);
		Employee e2 = new Employee(40);

		System.out.printf("Employee Count: %d\nEmployee Dept: %s\n", Employee.count, e1.dept);
		System.out.printf("e1's age: %d\n", e1.getAge());
		e1.setAge(25);
		System.out.printf("e1's new age: %d\n", e1.getAge());
	}
}
