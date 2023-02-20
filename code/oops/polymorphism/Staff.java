package oops.polymorphism;

class Staff extends User {
	int id = 2;
	Staff() {
		userType = "Staff";
	}

	@Override
	void printUserType() {
		System.out.println(this);
	}
	@Override
	void postAReview() {
		System.out.println("Staff: postAReview");
	}
}
