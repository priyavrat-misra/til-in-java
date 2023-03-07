package collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class CollectionsDemo {
	
	public static void main(String[] args) {
	
		// boolean addAll(Collection<? super T> c, T... elements);
		List<String> list = new ArrayList<>();
		list.add("Raj");
		list.add("John");
		list.add("John");
		
		String[] array = {"Anita"};
		
		Collections.addAll(list, array);
		
		System.out.println("list: " + list);
		
		// list.addAll(Arrays.asList(array))
		
		// static <T extends Comparable<? super T>> void sort(List<T> list)
		Collections.sort(list);
		
		System.out.println("Sorted list: " + list);
		
		// <T> int binarySearch(List<? extends Comparable<? super T>> list, T key)
		   // Needs to be sorted. O(log(n)). 
		   // If not sorted results are undefined. Might perform an inefficient linear search!!
		   // For Sets: HashSet ~ O(1). TreeSet ~ O(log(n)), i.e., same efficiency as binary search
		   // Note: List.contains is O(n)
		System.out.println("Is John There? : " + Collections.binarySearch(list, "John"));
		   
		// <T> int binarySearch(List<? extends T> list, T key, Comparator<? super T> c)
		
		Collections.reverse(list);
		System.out.println("Reverse list: " + list);
		
		Collections.swap(list, 0, 3);
		System.out.println("After swapping: " + list);
		
		System.out.println("# John's: " + Collections.frequency(list, "John"));
		
		Collections.shuffle(list);
		System.out.println("Shuffled list: " + list);
		
		System.out.println("Max: " + Collections.max(list)); // natural ordering
		System.out.println("Min: " + Collections.min(list));
		
		
		// Singleton ~ <T> Set<T> singleton(T o)
		//             Returns an immutable set containing only the specified object
		// Others: <T> List<T> singletonList(T o) & <K,V> Map<K,V> singletonMap(K key, V value)
		list.removeAll(Collections.singleton("John"));
		
		// Unmodifiable View ~ to provide clients with read-only access to internal collections
		Collection<String> unmodifiable = Collections.unmodifiableCollection(list);
		System.out.println("unmodifiable: " + unmodifiable);
		System.out.println("Is Anita there?: " + unmodifiable.contains("Anita"));
		//unmodifiable.add("John");
		list.add("John");
		System.out.println("unmodifiable 2: " + unmodifiable);
		
		// Check out other methods in the API
		//   ~ Methods starting with keyword empty like emptyList will be briefly discussed in 
		//      a subsequent lesson when discussing an item from Effective Java
		//   ~ Check back on methods starting with name "checked" as they are generics related
		//   ~ Synchronized methods will be reviewed in Concurrency chapter
	}
	
}