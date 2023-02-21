package oops.abstraction;

class ConcreteSubclass extends AbstractSubclass {
	@Override
	void test2() {
		System.out.println("test 2");
	}
	@Override
	void test3() {
		System.out.println("test 3");
	}
	public static void main(String[] args) {
		ConcreteSubclass concrete = new ConcreteSubclass();
		concrete.test1();
		concrete.test2();
		concrete.test3();
	}
}
