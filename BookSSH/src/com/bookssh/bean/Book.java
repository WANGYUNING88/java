package com.bookssh.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="book")
public class Book {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="book_id")
	private Integer book_id;
	@Column(name="book_name")
	private String book_name;
	@Column(name="book_writer")
	private String book_writer;
	@Column(name="book_publisher")
	private String book_publisher;
	@Column(name="book_publish_data")
	private String book_publish_data;
	
	@ManyToOne
	@JoinColumn(name="type_id")
	private BookType bookType;
	@Column(name="book_price")
	private double book_price;
	@Column(name="book_img")
	private String book_img;
	@OneToMany(mappedBy="book", targetEntity=Order_detail.class, 
	        cascade=CascadeType.ALL)
	private Set<Order_detail> order_detailSet = new HashSet<Order_detail>();
	
	
	public Set<Order_detail> getOrder_detailSet() {
		return order_detailSet;
	}
	public void setOrder_detailSet(Set<Order_detail> order_detailSet) {
		this.order_detailSet = order_detailSet;
	}
	public Integer getBook_id() {
		return book_id;
	}
	public void setBook_id(Integer book_id) {
		this.book_id = book_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_writer() {
		return book_writer;
	}
	public void setBook_writer(String book_writer) {
		this.book_writer = book_writer;
	}
	public String getBook_publisher() {
		return book_publisher;
	}
	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}
	public String getBook_publish_data() {
		return book_publish_data;
	}
	public void setBook_publish_data(String book_publish_data) {
		this.book_publish_data = book_publish_data;
	}
	
	
	public double getBook_price() {
		return book_price;
	}
	

	public BookType getBookType() {
		return bookType;
	}

	public void setBookType(BookType bookType) {
		this.bookType = bookType;
	}
	public void setBook_price(double book_price) {
		this.book_price = book_price;
	}
	public String getBook_img() {
		return book_img;
	}
	public void setBook_img(String book_img) {
		this.book_img = book_img;
	}
	
}
