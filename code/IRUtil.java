public class IRUtil {
	public static int getFrequencyCount(String term, String doc) {
		term = term.toLowerCase();
		doc = doc.toLowerCase();
		int frequencyCount = 0;
		int index = doc.indexOf(term);
		while (index >= 0) {
			++frequencyCount;
			doc = doc.substring(index + term.length());
			index = doc.indexOf(term);
		}
		return frequencyCount;
	}

	public static double termFrequency(String term, String doc) {
		int frequencyCount = getFrequencyCount(term, doc);
		int totalTermCount = doc.split(" ").lenght;
		return (double) frequencyCount / totalTermCount;
	}
}
