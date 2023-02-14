class InstanceInit {
	InstanceInit() {
		System.out.println("Inside InstanceInit()");
	}

	InstanceInit(int i) {
		this();
		System.out.println("Inside InstanceInit(int)");
	}

	InstanceInit(int a, int b) {
		System.out.println("Inside InstanceInit(int, int)");
	}

	{
		System.out.println("Inside instance initializer");
	}

	public static void main(String[] args) {
		System.out.println("\ncalling InstanceInit()");
		new InstanceInit();
		System.out.println("\ncalling InstanceInit(1)");
		new InstanceInit(1);
		System.out.println("\ncalling InstanceInit(2, 3)");
		new InstanceInit(2, 3);
	}
}
