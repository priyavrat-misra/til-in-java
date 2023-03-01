package exceptions.p1;

// import java.io.FileNotFoundException;
import java.io.IOException;

class Main {
	public static void main(String[] args) {
		System.out.println("inside main()");
		try {
			share(-1);
			// share(0);
			// share(1);
		} /*catch (FileNotFoundException e) {
		e.printStackTrace();
		} */catch (IOException e) {
			e.printStackTrace();
		} finally {
			System.out.println("inside main()'s finally");
		}
		System.out.println("end of main()");
	}

	static void share(int dest) throws IOException/*, *FileNotFoundException*/ {
		System.out.println("inside share()");
		HttpConnect.send(dest, "Hello");
		System.out.println("end of share()");
	}
}
