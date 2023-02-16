class BoxedPrimitives {
	public static boxedPrimitives() {
		Integer c = Integer.valueOf('c');  // 99
		Integer i = Integer.valueOf("8");  // 8

		// Parsing strings: parseType
		String data = "4004,Effective Java,2007,T,4.9";
		String[] items = data.split(",");
		long id = Long.parseLong(items[0]);
		String title = items[1];
		int pubYear = Integer.parseInt(items[2]);
		char genre = items[3].charAt(0);
		double rating = Double.parseDouble(items[4]);

		// Utility methods
		boolean isDigit = Character.isDigit(genre);
		boolean isLetterOrDigit = Character.isLetterOrDigit(genre);
		boolean isUpperCase = Character.isUpperCase(genre);
		boolean isNan = Double.isNaN(0.0/0.0);
		
		String binary = Integer.toBinaryString(8);  // 000
		String pubYearAsString = Integer.toString(pubYear);
		
		// populating data structure
		ArrayList idList = new ArrayList();
		idList.add(id); // auto-boxing
		idList.add(Long.valueOf(id));
	}
}
