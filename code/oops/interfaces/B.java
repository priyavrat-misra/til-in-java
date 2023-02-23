package oops.interfaces;

interface B {
	char VAL = 'B';
	void foo();
	default void bar() {
		System.out.println("B: bar");
	}
	default void go() {
		System.out.println("B: go");
	}
}
