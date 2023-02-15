class StringBuilderClass {
	public static void main(String[] args) {
		StringBuilder s = new StringBuilder();
		s.append("hello world");                   // hello world 
		s.setCharAt(0, 'H');                       // Hello world
		s.insert(s.indexOf(" "), ",");             // Hello, world
		s.replace(7, 8, "W");                      // Hello, World
		s.insert(s.length(), "!");                 // Hello, World!
		// or s.append("!");
		System.out.println(s);
		System.out.println(s.capacity());          // 16
		s.delete(s.indexOf(","), s.indexOf("!"));  // Hello!
		System.out.println(s);
		System.out.println(s.capacity());          // 16
		s.trimToSize();
		System.out.println(s.capacity());          // 6
	}
}
