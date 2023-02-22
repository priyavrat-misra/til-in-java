package oops.interfaces;

class X extends AbstractA implements B, C {
	public void foo() {
		System.out.println("X: foo");
		System.out.println(B.VAL);
	}
	public void foobar() {
		System.out.println("X: foobar");
	}
}
