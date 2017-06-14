package model;

public class Book {

	private String Id;
	private String Author;
	private String Type;
	private String ISBN;
	private String Title;
	private Member LoanTo;
	
	public Book(String Author, String Type, String ISBN, String Title){
		this.Author = Author;
		this.Type = Type;
		this.ISBN = ISBN;
		this.Title = Title;
	}
	
	public final String getId() {
		return Id;
	}
	public final void setId(String id) {
		Id = id;
	}
	public final String getAuthor() {
		return Author;
	}
	public final void setAuthor(String author) {
		Author = author;
	}
	public final String getType() {
		return Type;
	}
	public final void setType(String type) {
		Type = type;
	}
	public final String getISBN() {
		return ISBN;
	}
	public final void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public final String getTitle() {
		return Title;
	}
	public final void setTitle(String title) {
		Title = title;
	}
	public Member getLoanTo() {
		return LoanTo;
	}
	public void setLoanTo(Member loanTo) {
		LoanTo = loanTo;
	}
	
	
	
}
