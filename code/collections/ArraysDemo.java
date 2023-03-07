package collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.IntBinaryOperator;
import java.util.function.IntUnaryOperator;

public class ArraysDemo {
	
	private static void sequential() {
		// asList() ~ most commonly used
		// List<T> asList(T...)
		String[] strArray = new String[]{"Raj", "Anita"};
		List<String> strings = Arrays.asList(strArray); // fixed-size
		System.out.println("strings: " + strings);		
		//strings.remove(0);
		//strings.add("a");
		strings.set(0, "john");
		System.out.println("Updated Array: " + Arrays.toString(strArray));
		
		// Creating modifiable ArrayList from an Array
		strings = new ArrayList(Arrays.asList(strArray));
				
		// Showing varargs
		strings = Arrays.asList("Raj", "Anita");
		
		List<String> fixedList = Arrays.asList(new String[3]);
		// recall from autoboxing that arrays are not auto-boxeable
		//List<Integer> fixedList2 = Arrays.asList(new int[2]); 
		List<int[]> fixedList2 = Arrays.asList(new int[2]); 
		System.out.println("fixedList2.size: " + fixedList2.size());
		
		
		// Sorting: void sort(Object[]) - Uses Merge-sort with natural ordering
		// Partially sorted array: far fewer than nlog(n) comparisons 
		// Almost sorted array: approx. n comparisons, where n is array size
		Arrays.sort(strArray);  
		System.out.println(Arrays.toString(strArray));
		// Additional Comments: Well-suited for merging 2 or more sorted arrays
		//                      Concatenate the arrays & sort the resulting array!!
		
		// Sorting: void sort(int[]) - Uses quick sort
		int[] iArray = {23, 4, 59};
		Arrays.sort(iArray);
		System.out.println("Sorted iArray: " + Arrays.toString(iArray));	
		
		// void sort(T[] a, Comparator<? super T> c)
		
		// Binary Search: int binarySearch(int[], int); 
		//                returns index if element found
		//                otherwise returns -(insertion point) - 1
		//                input array must be sorted. Otherwise, behavior is undefined
		System.out.println("index returned by binary search: " + Arrays.binarySearch(new int[] {4,  23, 59}, 5));
		
		int[] newArray = Arrays.copyOf(iArray, 6);
		System.out.println("newArray: " + Arrays.toString(newArray));
		
		int[] newArray1 = new int[6];
		System.arraycopy(iArray, 0, newArray1, 0, iArray.length);
		System.out.println("newArray1: " + Arrays.toString(newArray1));
		
		Arrays.fill(newArray, 13);
		System.out.println("Fill with 13: " + Arrays.toString(newArray));
		
		System.out.println("Equals? " + Arrays.equals(iArray, newArray));
		
		// Arrays.deepEquals(Object[], Object[]);
		//  Returns true if arrays are deeply equal to one another. 
		//  Appropriate for nested arrays
		//int[][][] deepArray1 = { { {1, 2, 3}, {4, 5, 6} } };
		//int[][][] deepArray2 = { { {1, 2, 3}, {4, 5, 6} } };
		//int[][] deepArray1 = {{1, 2, 3}};
		//int[][] deepArray2 = {{1, 2, 3}};
		//int[] deepArray1 = {1, 2, 3}; // Covariance: Does not work as int[] is not a subtype of Object[]
		//int[] deepArray2 = {1, 2, 3};
		//System.out.println("Deep Array Equals? " + Arrays.deepEquals(deepArray1, deepArray2));
		
		Object[] objArray = new int[][][] { { {1, 2, 3}}};
		int[][] ia = (int[][])objArray[0];
		System.out.println(ia[0][2]);
	}
	
	
	
	
	
	
	
	// Java 8 ~ Parallelized Operations
	private static void parallel() {
		// For large arrays on multi-core. Min size atleast 1 >> 13 = 8192
		int[] iArray = {23, 4, 59};
		Arrays.parallelSort(iArray); 
		System.out.println("iArray parallel sort: " +  Arrays.toString(iArray));
		
		IntBinaryOperatorImpl IntBinaryOperatorImpl = new IntBinaryOperatorImpl();
		Arrays.parallelPrefix(iArray, IntBinaryOperatorImpl);
		System.out.println("Parallel Prefix: " + Arrays.toString(iArray));
		
		IntUnaryOperatorImpl intUnaryOperatorImpl = new IntUnaryOperatorImpl();
		intUnaryOperatorImpl.setArray(iArray);
		Arrays.parallelSetAll(iArray, intUnaryOperatorImpl);
		System.out.println("Parallel Set All: " + Arrays.toString(iArray));
	}
	
	public static void main(String[] args) {
		sequential();
		//parallel();
	}	
	
}

class IntBinaryOperatorImpl implements IntBinaryOperator {
	@Override
	public int applyAsInt(int left, int right) {
		return left + right;
	}	
}

class IntUnaryOperatorImpl implements IntUnaryOperator {
	int[] iArray;
	
	public void setArray(int[] iArray) {
		this.iArray = iArray;
	}

	@Override
	public int applyAsInt(int i) {
		if (iArray != null) {
			return iArray[i]+5;
		} else {
			return i;
		}		
	}
	
}


