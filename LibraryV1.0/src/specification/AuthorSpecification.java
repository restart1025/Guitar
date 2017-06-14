package specification;

import model.Book;

public class AuthorSpecification implements Specification<Book> {

	private String author;
	
	public AuthorSpecification(String author)
	{
		this.author = author;
	}
	
	@Override
	public boolean isSatisfiedBy(Book book) 
	{
		return (book.getAuthor().equals(author));
	}
	
	public final String getAuthor() {
		return author;
	}
	public final void setAuthor(String author) {
		this.author = author;
	}
}
