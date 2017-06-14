package model;

import java.util.ArrayList;
import java.util.List;

import factory.LoanFactory;


public class Member {

	private String Id;
	private String name;
	private List<Loan> loans;
	
	public Member(String name){
		this.name = name;
		loans = new ArrayList<>();
	}
	
	/**
	 * 检查用户是否已借此书，如果已借，则归还，并将书标识未借
	 * @param book
	 */
	public final void Return(Book book)
	{
		Loan loan = FindCurrentLoanFor(book);
		if(loan != null)
		{
			loan.MarkAsReturned();
			book.setLoanTo(null);
		}
	}
	/**
	 * 查找用户租书记录
	 * @param book
	 * @return
	 */
	private final Loan FindCurrentLoanFor(Book book) 
	{
		Loan loanHistory = null;
		for(Loan loan : loans)
		{
			if(loan.getBook() == book)
			{
				loanHistory = loan;
			}
		}
		return loanHistory;
	}
	/**
	 * 检查该书是否被其他人借出（未借出则返回true）
	 * @param book
	 * @return
	 */
	public final boolean CanLoan(Book book)
	{
		return book.getLoanTo() == null;
	}
	/**
	 * 借书
	 * @param book
	 * @return
	 */
	public final Loan Loan(Book book){
		 Loan loan = null;
		 if ( CanLoan(book) )
		 {
			 loan = LoanFactory.CreateLoan(book, this);
			 loans.add(loan);
		 }
		 return loan;
	 }
	
	public final String getId() {
		return Id;
	}
	public final void setId(String id) {
		Id = id;
	}
	public final String getName() {
		return name;
	}
	public final void setName(String name) {
		this.name = name;
	}
	public final List<Loan> getLoans() {
		return loans;
	}
	public final void setLoans(List<Loan> loans) {
		this.loans = loans;
	}
	
}
