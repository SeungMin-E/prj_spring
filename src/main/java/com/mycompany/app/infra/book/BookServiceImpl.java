package com.mycompany.app.infra.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	BookDao dao;
	
	@Override
	public int bookOneCount(BookVo vo) {
		return dao.bookOneCount(vo);
	}
	
	@Override
	public List<Book> bookAll(BookVo vo) {
		return dao.bookAll(vo);
	}

	@Override
	public Book bookOne(BookVo vo) {
		return dao.bookOne(vo);
	}

	@Override
	public int bookSingUp(Book dto) {
		return dao.bookSingUp(dto);
	}

	@Override
	public int bookRelesed(Book dto) {
		return dao.bookRelesed(dto);
	}

	@Override
	public int bookUelete(Book dto) {
		return dao.bookUelete(dto);
	}

	@Override
	public int bookUeleteCancel(Book dto) {
		return dao.bookUeleteCancel(dto);
	}

	@Override
	public int bookDel(Book dto) {
		return dao.bookDel(dto);
	}

	

}
