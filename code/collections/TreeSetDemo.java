package collections;

import java.util.Set;
import java.util.TreeSet;
// import java.lang.Comparable;
import java.util.Comparator;

class TreeSetDemo {
	public static void main(String[] args) {
		Set<Book> books = new TreeSet<>(new YearComparator());
		books.add(new Book("Harry Potter", "J.K.Rowling", 1997));
		books.add(new Book("Harry Potter", "J.K.Rowling", 1997));
		books.add(new Book("Walden", "Henry David Thoreau", 1854));
		books.add(new Book("Effective Java", "Joshua Bloch", 2008));

		for (Book book : books) {
			System.out.println(book);
		}
	}
}

class YearComparator implements Comparator {
	@Override
	public int compare(Object o1, Object o2) {
		return ((Book) o1).getYear().compareTo(((Book) o2).getYear());
	}
}

class Book /*implements Comparable*/ {

	private String title;
	private String author;
	private int year;

	String getTitle() {
		return title;
	}

	Integer getYear() {
		return year;
	}

	Book(String title, String author, int year) {
		this.title = title;
		this.author = author;
		this.year = year;
	}

	/* @Override
	public int compareTo(Object book) {
		return getTitle().compareTo(((Book)book).getTitle()); // utilizing String’s compareTo
	}*/

	@Override
	public String toString() {
		return "Book [title=" + title + ", author=" + author + ", year=" + year + "]";
	}

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
