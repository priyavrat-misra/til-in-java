package collections;

import java.util.List;
import java.util.ArrayList;
import java.util.ListIterator;

class ListIteratorDemo {
	static void listIteratorDemo() {
		System.out.println("\n\nInside listIteratorDemo ...");
		List<String> list = new ArrayList<>();
		list.add("a");
		list.add("b");
		list.add("c");

		System.out.println("\nDisplaying current elements ... ");
		for (ListIterator<String> iterator = list.listIterator(); iterator.hasNext();) {
			System.out.println("iterator.nextIndex: " + iterator.nextIndex() + ", iterator.next: " + iterator.next());	  
		}

		System.out.println("\nDemonstrating add, remove, and set operations ... ");
		for (ListIterator iterator = list.listIterator(); iterator.hasNext();) {
			System.out.println("iterator.nextIndex: " + iterator.nextIndex() + ", iterator.next: " + iterator.next());
			if (iterator.nextIndex() == 1) {
				System.out.println("*** Adding test at index 1");
				iterator.add("test");
				System.out.println("iterator.nextIndex: " + iterator.nextIndex() + ", iterator.next: " + iterator.next());

				System.out.println("Removing test that was added at index 1");
				iterator.previous(); // "b"
				iterator.previous(); // "test"				  
				iterator.remove();   // remove "test"

				// Uncommenting below line gives an IllegalStateException as 
				// set should be preceded by next/previous/set
				//iterator.set("test");
				System.out.println("iterator.nextIndex: " + iterator.nextIndex() + ", iterator.next: " + iterator.next());
				System.out.println("Setting element at index 1 as test");
				iterator.set("test");
				System.out.println("Setting element at index 1 as test1 to show that two set operations can be invoked sequentially");
				iterator.set("test1");
			}  	  
		}	 

		System.out.println("\nDisplaying current elements ... ");
		for (ListIterator iterator = list.listIterator(); iterator.hasNext();) {
			System.out.println("iterator.nextIndex: " + iterator.nextIndex() + ", iterator.next: " + iterator.next());	  
		}
	}

	public static void main(String[] args) {
		listIteratorDemo();
	}
}
