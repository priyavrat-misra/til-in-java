package collections;

// https://www.geeksforgeeks.org/java-implementing-iterator-and-iterable-interface/

import java.util.Iterator;

// Custom Linked List class using Generics
class List<T> implements Iterable<T> {
	Node<T> head, tail;

	// add new Element at tail of the linked list in O(1)
	public void add(T data) {
		Node<T> node = new Node<>(data, null);
		if (head == null)
			tail = head = node;
		else {
			tail.setNext(node);
			tail = node;
		}
	}

	// return Head
	public Node<T> getHead() {
		return head;
	}

	// return Tail
	public Node<T> getTail() {
		return tail;
	}

	// return Iterator instance
	public Iterator<T> iterator() {
		return new ListIterator<T>(this);
	}
}

class ListIterator<T> implements Iterator<T> {
	Node<T> current;

	// initialize pointer to head of the list for iteration
	public ListIterator(List<T> list) {
		current = list.getHead();
	}

	// returns false if next element does not exist
	@Override
	public boolean hasNext() {
		return current != null;
	}

	// return current data and update pointer
	@Override
	public T next() {
		T data = current.getData();
		current = current.getNext();
		return data;
	}

	// implement if needed
	@Override
	public void remove() {
		throw new UnsupportedOperationException();
	}
}

// Constituent Node of Linked List
class Node<T> {
	T data;
	Node<T> next;
	public Node(T data, Node<T> next) {
		this.data = data;
		this.next = next;
	}

	// Setter getter methods for Data and Next Pointer
	public void setData(T data) {
		this.data = data;
	}

	public void setNext(Node<T> next) {
		this.next = next;
	}

	public T getData() {
		return data;
	}

	public Node<T> getNext() {
		return next;
	}
}

// Driver class
class Main {
	public static void main(String[] args) {
		// Create Linked List
		List<String> myList = new List<>();

		// Add Elements
		myList.add("abc");
		myList.add("mno");
		myList.add("pqr");
		myList.add("xyz");

		// Iterate through the list using For Each Loop
		for (String string : myList)
			System.out.println(string);
	}
}
