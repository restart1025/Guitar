package specification;

import model.Book;

public class TypeSpecification implements Specification<Book>{

	private String type;
	
	public TypeSpecification(String type){
		 this.type = type;
	}
	
	@Override
	public boolean isSatisfiedBy(Book book) 
	{
		return (book.getType().equals(type));
	}
	

}
