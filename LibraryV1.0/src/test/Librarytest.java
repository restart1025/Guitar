package test;

import model.Book;
import model.BookShelf;
import model.Loan;
import model.Member;

public class Librarytest {
	public static void main(String[] arges) throws InterruptedException{
		Book book1 = new Book("小李", "JAVA", "1562", "spring MVC");
		Book book2 = new Book("小李", "JAVA", "4651", "java核心卷程I");
		Book book3 = new Book("小李", "JAVA", "3652", "java核心卷程II");
		
		Member member = new Member("测试");
		BookShelf shelf = new BookShelf("小李", "JAVA");
		shelf.addBook(book1);
		shelf.addBook(book2);
		shelf.addBook(book3);
		
		//借书
		for( Book book : shelf.getBooks() )
		{
			if(book != null )
			{
				Loan loan = member.Loan(book);
				book.setLoanTo(member);
				if(loan != null)
				{
					System.out.println("借书成功\n" 
							+ "书名：" + loan.getBook().getTitle()
							+ "\n借书时间：" + loan.getLoanDate());
				}else{
					System.out.println("该书已被借走");
				}
			}else{
				System.out.println("该书不存在");
			}
		}
		//还书
		member.Return(book3);
		System.out.println("还书成功\n"
				+ "书名：" + book3.getTitle());
	}
	
	

}
