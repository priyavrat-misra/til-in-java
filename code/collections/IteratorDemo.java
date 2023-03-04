package collections;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;

public class IteratorDemo {	

	static void iteratorDemo() {
		List<Integer> list = new ArrayList<Integer>(){{
			add(1);
			add(9);
			add(8);
			add(6);
			add(1);
		}};
		Iterator<Integer> it = list.iterator();
		while (it.hasNext()) {
			int element = it.next();
			if (element == 9)
				it.remove();
		}
		list.forEach(System.out::println);  // method reference
		list.forEach(IteratorDemo::filter);
	}

	static void filter(Integer i) {
		if (i == 1)
			System.out.println(i);
	}

	public static void main(String[] args) {
		iteratorDemo();
	}

}
