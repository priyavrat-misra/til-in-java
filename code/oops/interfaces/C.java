package oops.interfaces;

interface C extends A {
	void foobar();
	default void go() {
		System.out.println("C: go");
	}
}
