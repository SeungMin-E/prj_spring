package com.mycompany.app.infra.book;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BookDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.book.BookMapper";
	
	public int bookOneCount(BookVo vo) {
		return sqlSession.selectOne(namespace + ".bookOneCount" ,vo);
	}
	
	public List<Book> bookAll(BookVo vo){
		return sqlSession.selectList(namespace + ".bookAll", vo);
	}
	
	public Book bookOne(BookVo vo) {
		return sqlSession.selectOne(namespace + ".bookOne", vo);
	}
	
	public int bookSingUp(Book dto) {
		return sqlSession.insert(namespace + ".bookSingUp", dto);
	}
	
	public int bookRelesed(Book dto) {
		return sqlSession.update(namespace + ".bookRelesed", dto);
	}
	
	public int bookUelete(Book dto) {
		return sqlSession.update(namespace + ".bookUelete", dto);
	}
	
	public int bookUeleteCancel(Book dto) {
		return sqlSession.update(namespace + ".bookUeleteCancel", dto);
	}
	
	public int bookDel(Book dto) {
		return sqlSession.delete(namespace + ".bookDel", dto);
	}
}
