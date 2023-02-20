package oops.polymorphism;

class User {
	int id = 1;
	String userType = "User";

	void printUserType() {
		System.out.println(this);
	}
	@Override
	public String toString() {
		return String.format("%s (%d)", userType, id);
	}
	void saveWebLink() {
		System.out.println("User: saveWeblink");
		postAReview();
	}
	void postAReview() {
		System.out.println("User: postAReview");
	}
	static void staticMethod() {
		System.out.println("User: staticMethod");
	}
}
