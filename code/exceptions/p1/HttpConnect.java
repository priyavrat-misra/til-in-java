package exceptions.p1;

import java.io.FileNotFoundException;
import java.io.IOException;

class HttpConnect {
	/**
	 * @param destination
	 * @param data
	 * @throws IOException : checked exception
	 * @throws IllegalArgumentException : unchecked exception
	 */
	static void send(int destination, String data) throws IOException {
		System.out.println("inside send()");
		if (destination < 0 || destination > 1)
			throw new IllegalArgumentException();
		else if (destination == 0)
			throw new FileNotFoundException();
		else if (destination == 1)
			throw new IOException();
		System.out.println("end of send()");
	}
}
