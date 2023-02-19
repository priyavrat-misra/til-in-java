package oops.polymorphism;

class Staff extends User {
	@Override
	void printUserType() {
		System.out.println("Staff");
	}
	@Override
	void postAReview() {
		System.out.println("Staff: postAReview");
	}
}
