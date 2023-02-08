public class LabelledBreak {
	public static void main(String[] args) {
	label:	{
			if (true)
				break label;
			System.out.println("Hello, World!");
		}
	}
}
