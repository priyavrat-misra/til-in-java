import java.util.Scanner;

public class Arrays {
	public static void main(String[] args) {
		System.out.print("Enter an array starting with it's size: ");
		Scanner s = new Scanner(System.in);
		int n = s.nextInt();
		int[] A = new int[n];

		for (int i = 0; i < n; ++i)
			A[i] = s.nextInt();

		System.out.print("A\t\t:");
		for (int i : A)
			System.out.printf(" %d", i);
		System.out.println();

		System.arraycopy(A, 0, A, 1, A.length - 1);

		System.out.print("shifted A\t:");
		for (int i : A)
			System.out.printf(" %d", i);
		System.out.println();
	}
}
