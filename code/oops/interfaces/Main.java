package oops.interfaces;

class Main {
	public static void main(String[] args) {
		C c = new X();
		c.foo();
		c.bar();
		c.foobar();
		c.go();

		new Main().lambdaTest(() -> System.out.println("FunctionalInterface: bar"));
	}
	void lambdaTest(FunctionalInterface fi) {
		fi.bar();
	}
}
