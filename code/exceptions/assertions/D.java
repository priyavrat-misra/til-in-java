package exceptions.assertions;

public class D {

	void test(int i) {
		assert i > 0 : "invalid i in D.test";

		B b = new B();
		b.test(-1);
	}
}

