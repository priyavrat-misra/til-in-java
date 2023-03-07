package collections;

import java.util.ArrayDeque;
import java.util.Deque;

public class QueueDemo {
	
	private static void dequeTest() {
		System.out.println("\nInside dequeTest ...");
		
		// Queue - FIFO
		Deque<String> deque = new ArrayDeque<>();
		deque.add("walden");
		deque.add("harry potter");
		deque.add("head first java");
		
		System.out.println("\nPrinting Queue ...");
		System.out.println(deque.remove()); // removeFirst
		System.out.println(deque.remove());
		System.out.println(deque.remove());
		
		// Stack - LIFO
		deque.push("walden");
		deque.push("harry potter");
		deque.push("head first java");
		
		System.out.println("\nPrinting Stack ...");
		System.out.println(deque.pop()); 
		System.out.println(deque.pop());
		System.out.println(deque.pop());
	}
	
	public static void main(String[] args) {
		dequeTest();
	}
	
}
