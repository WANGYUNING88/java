package com.bookssh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bookssh.bean.Order_detail;
import com.bookssh.bean.Orders;
import com.bookssh.dao.OrdersDao;

@Service
@Transactional
public class OrdersSerivce {
	@Autowired
	private OrdersDao ordersDao;
	
	public List<Orders> selectAllOrders(){
		return ordersDao.selectAllOrders();
	}
	
	public Orders selectOrderByUser_id(Integer user_id) {
		return ordersDao.selectOrderById(user_id);
	}
	
	public List<Order_detail> selectOrderDetailById(Integer order_id){
		return (List<Order_detail>) ordersDao.selectOrderDetailById(order_id);
	}
	public List<Orders> selectOrdersById(Integer user_id) {
		return ordersDao.selectOrdersById(user_id);
	}
	public Orders insertOrders(Orders order) {
		return ordersDao.insertOrders(order);
	}
	public Order_detail insertOrder_detail(Order_detail order_detail) {
		return ordersDao.insertOrder_detail(order_detail);
	}
	public boolean deleteOrder(Integer order_id) {
		return ordersDao.deleteOrder(order_id);
	}
	public Orders selectOrderByOid(Integer order_id) {
		return ordersDao.selectOrderById(order_id);
	}
	public Integer updateState(Integer order_id,Integer order_state) {
		return ordersDao.updateState(order_id, order_state);
	}
	public List<Orders> key(String keyword){
		return ordersDao.key(keyword);
	}
}
