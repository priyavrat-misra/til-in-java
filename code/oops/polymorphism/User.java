package oops.polymorphism;

class User {
	void printUserType() {
		System.out.println("User");
	}
	void saveWebLink() {
		System.out.println("User: saveWeblink");
		postAReview();
	}
	void postAReview() {
		System.out.println("User: postAReview");
	}
}
