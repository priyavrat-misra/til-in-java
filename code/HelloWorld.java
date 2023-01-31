import java.util.Scanner;

public class HelloWorld {
	public static void main(String[] args) {
		if (args.length == 1)
			System.out.printf("Hello, %s!", args[0]);
		else
			System.out.print("Hello, World!");

		Scanner s = new Scanner(System.in);
		System.out.print("\nEnter 2 numbers: ");
		System.out.println(Add.add(s.nextInt(), s.nextInt()));
	}
}
