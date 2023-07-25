package com.mycompany.app.infra.book;

import java.util.List;

public interface BookService {
	
	public List<Book> bookAll(BookVo vo);
	
	public Book bookOne(BookVo vo);

	public int bookOneCount(BookVo vo);
	
	public int bookSingUp(Book dto);
	
	public int bookRelesed(Book dto);
	
	public int bookUelete(Book dto);
	
	public int bookUeleteCancel(Book dto);
	
	public int bookDel(Book dto);
}
