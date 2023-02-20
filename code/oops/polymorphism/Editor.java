package oops.polymorphism;

class Editor extends Staff {
	@Override
	void printUserType() {
		System.out.println("Editor");
	}
	void approveReview() {
		System.out.println("Editor: approveReview");
	}
	static void staticMethod() {
		System.out.println("Editor: staticMethod");
	}
}
