public class Employee {
	int age;
	String name;
	static int count;
	final String dept = "R&D";

	Employee() {
		count += 1;
	}

	Employee(String name, int age) {
		this.name = name;
		this.age = age;
		count += 1;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getName() {
		return this.name;
	}

	public int getAge() {
		return this.age;
	}

	public static void main(String[] args) {
		Employee e1 = new Employee("abc", 24);
		Employee e2 = new Employee();
		e2.setName("xyz");
		e2.setAge(23);

		System.out.printf("Employee Count: %d\nEmployee Dept: %s\n", Employee.count, e1.dept);
		System.out.printf("%s's age: %d\n", e1.getName(), e1.getAge());
		e1.setAge(25);
		System.out.printf("%s's new age: %d\n", e1.getName(), e1.getAge());
	}
}
