package oops.interfaces;

class X extends AbstractA implements B, C {
	public void foo() {
		System.out.println("X: foo");
		System.out.println(B.VAL);
		bar();          // invokes bar() from AbstractA
		B.super.bar();  // invokes bar() from B
	}
	public void foobar() {
		System.out.println("X: foobar");
	}
	@Override
	public void go() {
		/**
		 * solves the diamond problem as both `B` and `C`
		 * have their versions of `go()`
		 */
		System.out.println("X: go");
	}
}
