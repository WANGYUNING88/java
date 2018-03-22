package com.bookssh.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookssh.bean.Book;
import com.bookssh.bean.BookType;
import com.bookssh.bean.Order_detail;

@Repository
public class BookDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	 public static boolean isNumericZidai(String str) {
	        for (int i = 0; i < str.length(); i++) {
	            System.out.println(str.charAt(i));
	            if (!Character.isDigit(str.charAt(i))) {
	                return false;
	            }
	        }
	        return true;
	    }
	
	public static boolean notChinese(String str) {
		String regEx = "[\u4e00-\u9fa5]";
		Pattern pat = Pattern.compile(regEx);
		Matcher matcher = pat.matcher(str);
		boolean flg = true ;
		if (matcher.find())
			flg = false;

		return flg;
	}
	
	public List<Book> keyword(String keyword){
		Session session = sessionFactory.getCurrentSession();
		List<Book> list = new ArrayList<Book>();
		if(keyword=="") {
			String hql = "from Book";
			Query query = session.createQuery(hql);
			 list = query.list();
		}else {
			boolean flag = isNumericZidai(keyword);
			Integer type_id =null;
			if(flag) {
				type_id = Integer.parseInt(keyword);
			}
			Query query = session.createQuery("from Book where book_id=? or book_name like :one "
					+ "or book_writer like :two");
			query.setParameter(0, type_id);
			query.setParameter("one", "%"+keyword+"%");
			query.setParameter("two", "%"+keyword+"%");
			list = query.list();
		}
		return list;
	}
	
	public Book selectBookById(Integer book_id){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Book where book_id=?");
		query.setParameter(0, book_id);
		Book book = (Book) query.uniqueResult();
		return book;
	}
	public List<Book> selectAllBook(){
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Book";
		Query query = session.createQuery(hql);
		List<Book> list = query.list();
		return list;
	}
	public List<Book> selectBookByType(Integer type_id){
		Session session = sessionFactory.getCurrentSession();
		BookType bookType = session.get(BookType.class,type_id);
		List<Book> list = new ArrayList<Book>(bookType.getBookSet());
		
		return list;
	}
	public Integer insertBook(Book book) {
		Session session = sessionFactory.getCurrentSession();
		BookType bookType = session.get(BookType.class, book.getBookType().getType_id());
		book.setBookType(bookType);
		session.save(book);
		Integer book_id = book.getBook_id();
		return book_id;
	}
	public boolean deleteBook(Integer book_id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete from Book where book_id=?");
		query.setParameter(0, book_id);
		int r = query.executeUpdate();
		if(r>0) {
			return true;
		}else {
			return false;
		}
	}
	public boolean updateBook(Book book) {
		Session session = sessionFactory.getCurrentSession();
		Book booked = session.get(Book.class, book.getBook_id());
		booked.setBook_name(book.getBook_name());
		booked.setBook_writer(book.getBook_writer());
		booked.setBook_publisher(book.getBook_publisher());
		booked.setBook_publish_data(book.getBook_publish_data());
		booked.setBook_price(book.getBook_price());
		booked.setBook_img(book.getBook_img());
		BookType bookType = session.get(BookType.class, book.getBookType().getType_id());
		booked.setBookType(bookType);
		session.save(booked);
		return true;
		
	}
	public BookType selectTypeById(Integer type_id){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from BookType where type_id=?");
		query.setParameter(0, type_id);
		BookType bookType = (BookType) query.uniqueResult();
		return bookType;
	}
	public BookType selectTypeByName(String type_name){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from BookType where type_name=?");
		query.setParameter(0, type_name);
		BookType bookType = (BookType) query.uniqueResult();
		return bookType;
	}
	public List<BookType> selectAllType(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from BookType");
		List<BookType> list = query.list();
		return list;
	}
	public BookType insertType(BookType bookType) {
		Session session = sessionFactory.getCurrentSession();
		session.save(bookType);
		return bookType;
	}
	public boolean deleteType(Integer type_id) {
		Session session = sessionFactory.getCurrentSession();
		int r=session.createQuery("delete from BookType where type_id=?").
		setParameter(0, type_id).executeUpdate();
		if(r>0) {
			return true;
		}else {
			return false;
		}
	}
	public boolean updateType(BookType bookType) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("update BookType  set type_name=? where type_id=?");
		query.setParameter(0, bookType.getType_name());	
		query.setParameter(1, bookType.getType_id());
		int r = query.executeUpdate();
		if(r>0) {
			return true;
		}else {
			return false;
		}
		
	}
	public List<Book> newBooks(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Book order by book_id desc");
		query.setFirstResult(0);   //从第0条开始
		query.setMaxResults(3);//一共取3条
		List<Book> list = query.list();
		return list;
	}
	public List<Book> hotBook(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Order_detail group by book_id order by count(*) desc");
		query.setFirstResult(0);   //从第0条开始
		query.setMaxResults(3);//一共取3条
		List<Order_detail> list = query.list();
		List<Book> hotlist = new ArrayList<Book>();;
	    if(list!=null) {
			for(int i=0;i<list.size();i++) {
				Order_detail o = list.get(i);
				Book book = new Book();
				book = o.getBook();
				hotlist.add(book);
			}
			return hotlist;
	    }else {
	    	return null;
	    }
	}
}
