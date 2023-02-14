import java.util.HashMap;

class StaticInit {
	static final double i;
	static HashMap<Integer, String> h = new HashMap<>();
	static {
		i = Math.random();
		h.put(1, "one");
		h.put(2, "two");
	}
	public static void main(String[] args) {
		System.out.println(StaticInit.i);
	}
}
