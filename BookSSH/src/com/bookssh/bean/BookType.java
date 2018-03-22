package com.bookssh.bean;


import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="booktype")
public class BookType {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="type_id")	
	private Integer type_id;
	@Column(name="type_name")	
	private String type_name;
	@OneToMany(mappedBy="bookType", targetEntity=Book.class, 
	        cascade=CascadeType.ALL)
	private Set bookSet = new HashSet<Book>();
	public void setBookSet(Set bookSet) {
		this.bookSet = bookSet;
	}

	public Integer getType_id() {
		return type_id;
	}
	
	public Set getBookSet() {
		return bookSet;
	}

	public void setBookSet(HashSet<Book> bookSet) {
		this.bookSet = bookSet;
	}
	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}
//	@Column(name="type_name")
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	
}
