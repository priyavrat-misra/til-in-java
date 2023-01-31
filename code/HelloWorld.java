import java.util.Scanner;

public class HelloWorld {
	public static void main(String[] args) {
		System.out.println("Hello, World!");

		Scanner s = new Scanner(System.in);
		System.out.print("Enter 2 numbers: ");
		System.out.println(Add.add(s.nextInt(), s.nextInt()));
	}
}
