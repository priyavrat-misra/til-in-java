import java.util.Scanner;

public class HelloWorld {
	public static void main(String[] args) {
		System.out.println("Hello, World!");

		Scanner s = new Scanner(System.in);
		System.out.print("Enter 2 numbers: ");
		System.out.println(Add.add(s.nextInt(), s.nextInt()));

		int[] a = {0, 1, 2, 3};
		int[] b = new int[3];
		System.arraycopy(a, 0, b, 0, 3);
		for (int i = 0; i < 3; ++i)
		 System.out.println(b[i]);

	}
}
