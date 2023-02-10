class LabelledContinue {
	public static void main(String[] args) {
		outer: for (int i = 0; i < 5; ++i) {
			System.out.printf("i = %d\nj =", i);
			for (int j = 0; j < 5; ++j) {
				if (i == 2 && j == 2) {
					System.out.println();
					continue outer;
				}
				System.out.printf(" %d", j);
			}
			System.out.println();
		}
	}
}
