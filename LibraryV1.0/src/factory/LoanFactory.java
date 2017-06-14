package factory;

import java.time.LocalDateTime;

import model.Book;
import model.Loan;
import model.Member;

public class LoanFactory {

	public static Loan CreateLoan(Book book, Member member)
	{
		
		Loan loan = new Loan();
		loan.setBook(book);
		loan.setMember(member);
		LocalDateTime now = LocalDateTime.now();
		loan.setLoanDate(now);
		loan.setReturnDate(now.plusDays(10));
		return loan;
	
	}
	
}
