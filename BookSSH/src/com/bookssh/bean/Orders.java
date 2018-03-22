package com.bookssh.bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="orders")
public class Orders {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="order_id")
	private Integer order_id;
	@Column(name="order_time")
	private Date order_time;
	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;
	@OneToMany(fetch = FetchType.LAZY,mappedBy="order", targetEntity=Order_detail.class, 
	        cascade=CascadeType.ALL)
	private Set<Order_detail> order_detailSet = new HashSet<Order_detail>();
	@Column(name="order_state")
	private Integer order_state;//取0(未完成)/1(完成)
	
	public Integer getOrder_state() {
		return order_state;
	}
	public void setOrder_state(Integer order_state) {
		this.order_state = order_state;
	}
	public User getUser() {
		return user;
	}
	public Set<Order_detail> getOrder_detailSet() {
		return order_detailSet;
	}
	public void setOrder_detailSet(Set<Order_detail> order_detailSet) {
		this.order_detailSet = order_detailSet;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	
	public Date getOrder_time() {
		return order_time;
	}
	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}
}
