public class Representations {
	public static void main(String[] args) {
		int intHex = 0x0041;
		int intBinary = 0b0100_0001;
		int intOctal = 0101;
		int intChar = 'A';
		System.out.printf("intHex: %d\nintBinary: %d\nintOctal: %d\nintChar: %d\n", intHex, intBinary, intOctal, intChar);

		char charHex = '\u0041';
		char charBinary = 0b0100_0001;
		char charOctal = 0101;
		char charInt = 65;
		System.out.printf("charHex: %c\ncharBinary: %c\ncharOctal: %c\ncharInt: %c\n", charHex, charBinary, charOctal, charInt);
	}
}
