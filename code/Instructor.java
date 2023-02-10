class Instructor {
    public long id;
	public String name;
	public String title;
	public String department;
	public Book[] books;
	
	public Instructor(long id, String name, String title, String department, Book[] books) {
		this(id, name, title, department);
		this.books = books;
	}
	
	public Instructor(long id, String name, String title, String department) {
		this(id, name, title);
		this.department = department;
	}
	
	public Instructor(long id, String name, String title) {
		this(id, name);
		this.title = title;
	}
	
	public Instructor(long id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public String getMostRecentBookTitle() {
		return books[books.length - 1].getTitle();
	}
	
	public Book updateBook(int index, String title) {
	    Book oldBook = new Book(books[index].getTitle());
		books[index].setTitle(title);
		return oldBook;
	}
	
	public Book updateBook(int index, Book book) {
	    Book oldBook = books[index];
		books[index] = book;
		return oldBook;
	}
	
	public static void main(String[] args) {
		Book book1 = new Book("Java for Beginners");
        Book book2 = new Book("Scala for Beginners");
        Book book3 = new Book("Effective Python");
		
		Instructor instructor = new Instructor(101, "John", "Assistant Professor", "Computer Science", new Book[]{book1, book2, book3});
		System.out.println(instructor.getMostRecentBookTitle());
		System.out.println("old book title: " + instructor.updateBook(1, "Effective C#").getTitle());
				
		Book book4 = new Book("Introduction to Data Mining");
		System.out.println("old book title: " + instructor.updateBook(1, book4).getTitle());
	}
}
