package com.bookssh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bookssh.bean.Book;
import com.bookssh.bean.BookType;
import com.bookssh.dao.BookDao;

@Service
@Transactional
public class BookService {
	@Autowired
	private BookDao bookDao;
/*
 * bookType
 */
	public BookType selectTypeById(Integer type_id){
		return (BookType)bookDao.selectTypeById(type_id);
	}
	public List<BookType> selectAllType(){
		return bookDao.selectAllType();
	}
	public BookType insertType(BookType bookType) {
		return bookDao.insertType(bookType);
	}
	public boolean deleteType(Integer type_id) {
		return bookDao.deleteType(type_id);
	}
	public boolean updateType(BookType bookType) {
		return bookDao.updateType(bookType);
	}
	public BookType selectTypeByName(String type_name){
		return bookDao.selectTypeByName(type_name);
	}
/*
 * book
 */
	public Book selectBookById(Integer book_id){
		return bookDao.selectBookById(book_id);
	}
	public List<Book> selectAllBook(){
		return bookDao.selectAllBook();
	}
	public Integer insertBook(Book book) {
		return bookDao.insertBook(book);
	}
	public boolean deleteBook(Integer book_id) {
		return bookDao.deleteBook(book_id);
	}
	public boolean updateBook(Book book) {
		return bookDao.updateBook(book);
	}
	public List<Book> selectBookByType(Integer type_id){
		return bookDao.selectBookByType(type_id);
	}
	public List<Book> keyword(String keyword){
		return bookDao.keyword(keyword);
	}
	public List<Book> newBooks() {
		// TODO Auto-generated method stub
		return bookDao.newBooks();
	}
	public List<Book> hotBook(){
		return bookDao.hotBook();
				
	}
}
