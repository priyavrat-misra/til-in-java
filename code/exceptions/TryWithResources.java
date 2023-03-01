package exceptions;

import java.io.IOException;

class TryWithResources {
	public static void main(String[] args) {
		System.out.println("inside main()");
		try {
			autoResourceMgmt();
		} catch (IOException e) {
			// e.printStackTrace();
			Throwable[] throwables = e.getSuppressed();
			System.out.println(throwables[0].getMessage());
			System.out.println(throwables[1].getMessage());
		}
		System.out.println("end of main()");
	}

	static void autoResourceMgmt() throws IOException {
		System.out.println("inside autoResourceMgmt()");
		try (Test1 t1 = new Test1(); Test2 t2 = new Test2()) {
			throw new IOException("Important Exception");
		}
	}
}

class Test1 implements AutoCloseable {
	@Override
	public void close() throws IOException {
		throw new IOException("Trivial Exception 1");
	}
}

class Test2 implements AutoCloseable {
	@Override
	public void close() throws IOException {
		throw new IOException("Trivial Exception 2");
	}
}
