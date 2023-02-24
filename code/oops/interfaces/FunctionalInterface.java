package oops.interfaces;

interface FunctionalInterface {
	default void foo() {}
	// if there were no default then it would have resulted in an error
	// as compiler can't tell whose lambda implementation it is
	void bar();
}
