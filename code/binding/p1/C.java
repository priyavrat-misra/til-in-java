package binding.p1;

class C {
	public static void main(String[] args) {
		A obj1 = new A();
		B obj2 = new B();
		A obj3 = new B();

		obj1.foo();
		obj1.bar();

		obj2.foo();
		obj2.bar();

		obj3.foo();  // static binding
		obj3.bar();  // dynamic binding
	}
}
