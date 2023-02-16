public class Employee {
	private int age, id;
	private String name;
	static int count;
	final String dept = "R&D";

	Employee() {
		count += 1;
	}

	Employee(String name, int age) {
		this();
		this.name = name;
		this.age = age;
	}

	Employee(String name, int age, int id) {
		this(name, age);
		this.id = id;
	}

	public static Employee create(String name, int age, int id) {
		return new Employee(name, age, id);
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
		Employee[] employee = {
			new Employee("abc", 24),
			new Employee()
		};
		employee[1].setName("xyz");
		employee[1].setAge(23);

		System.out.printf("Employee Count: %d\nEmployee Dept: %s\n", Employee.count, employee[0].dept);
		System.out.printf("%s's age: %d\n", employee[0].getName(), employee[0].getAge());
		employee[0].setAge(25);
		System.out.printf("%s's new age: %d\n", employee[0].getName(), employee[0].getAge());

		Employee manager = Employee.create("mno", 30, 1111);
		System.out.printf("Employee name\t: %s\nEmployee age\t: %d\n", manager.getName(), manager.getAge());
	}
}
