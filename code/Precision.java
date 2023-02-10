import java.math.BigDecimal;

class Precision {
	public static void main(String[] args) {
		System.out.println(0.1 + 0.2);
		BigDecimal a = new BigDecimal("0.1");
		BigDecimal b = new BigDecimal("0.2");
		System.out.println(a.add(b));

		System.out.println(1 - 0.9);
		a = new BigDecimal("1");
		b = new BigDecimal("0.9");
		System.out.println(a.subtract(b));
	}
}
