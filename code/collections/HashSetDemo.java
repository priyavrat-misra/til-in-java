package collections;

import java.util.Set;
import java.util.HashSet;

class HashSetDemo {
	public static void main(String[] args) {
		Set<String> set1 = new HashSet<>();
		set1.add("a");
		set1.add("b");
		set1.add("a");
		System.out.println("set1: " + set1);

		Set<Book> set2 = new HashSet<>();
		set2.add(new Book("Walden", "Henry Thoreau", 1854));
		set2.add(new Book("Walden", "Henry Thoreau", 1854));
		System.out.println("set2: " + set2);
	}
}

class Book {

	private String title;
	private String author;
	private int year;

	String getTitle() {
		return title;
	}

	String getAuthor() {
		return author;
	}

	int getYear() {
		return year;
	}

	Book(String title, String author, int year) {
		this.title = title;
		this.author = author;
		this.year = year;
	}

	/* @Override
	public String toString() {
		return "Book [title=" + title + ", author=" + author + ", year=" + year + "]";
	}*/

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((author == null) ? 0 : author.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + year;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book other = (Book) obj;
		if (author == null) {
			if (other.author != null)
				return false;
		} else if (!author.equals(other.author))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (year != other.year)
			return false;
		return true;
	}

}
