package com.bookssh.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.bookssh.bean.Order_detail;
import com.bookssh.bean.Orders;

@Repository
public class OrdersDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	/*
	 * 检索全部ORDERS
	 */
	public List<Orders> selectAllOrders(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Orders");
		List<Orders> orderlist = query.list();
		return orderlist;
	}
	/*
	 * 检索目标OREDER
	 * USER_ID
	 */
	public Orders selectOrderByUser_id(Integer user_id) {
		Session session = sessionFactory.getCurrentSession();
		Orders order = session.get(Orders.class, user_id);
		return order;		
	}
	/*
	 * 检索目标OREDER
	 * ORDER_ID
	 */
	public Orders selectOrderById(Integer order_id) {
		Session session = sessionFactory.getCurrentSession();
		Orders order = session.get(Orders.class, order_id);
		return order;		
	}
	/*
	 * 检索目标ORDER_DETAIL
	 * ORDER_DETAIL_ID
	 */
	public List<Order_detail> selectOrderDetailById(Integer order_id){
		Session session = sessionFactory.openSession();
		Transaction tran = session.beginTransaction();
		Orders o = (Orders) session.get(Orders.class, order_id);
		
		List<Order_detail> order_detaillist =new ArrayList<Order_detail>(o.getOrder_detailSet());
		tran.commit();
		session.close();
		return order_detaillist;
	}
	/*
	 * 检索目标ORDER
	 * USER_ID
	 */
	public List<Orders> selectOrdersById(Integer user_id) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Orders where user.user_id=?";
		Query query = session.createQuery(hql);
		query.setParameter(0, user_id);
		List <Orders> orderslist = query.list();
		return orderslist;		
	}
	/*
	 * 删除订单
	 */
	public boolean deleteOrder(Integer order_id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete from Orders where order_id=?");
		query.setParameter(0, order_id);
		int r = query.executeUpdate();
		if(r>0) {
			return true;
		}else {
			return false;
		}
		
	}
	/*
	 * 建立订单
	 */
	public Orders insertOrders(Orders order) {
		Session session = sessionFactory.getCurrentSession();
		session.save(order);
		return order;		
	}
	/*
	 * 保存订单详细情况
	 */
	public Order_detail insertOrder_detail(Order_detail order_detail) {
		Session session = sessionFactory.getCurrentSession();
		session.save(order_detail);
		return order_detail;		
	}
	/*
	 * 修改订单状态
	 */
	public Integer updateState(Integer order_id,Integer order_state) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("update from Orders set order_state=? where order_id=?");
		
		query.setParameter(0, order_state);
		query.setParameter(1, order_id);
		int result = query.executeUpdate();
		return result;
	}
	/*
	 * 搜索关键字
	 */
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
	public List<Orders> key(String keyword){
		Session session = sessionFactory.getCurrentSession();
		List<Orders> orderlist =new ArrayList<Orders>();
		if(keyword=="") {
			Query query = session.createQuery("from Orders");
			 orderlist = query.list();
		}else {
			boolean flag = isNumericZidai(keyword);
			Integer id =null;
			if(flag) {
				id = Integer.parseInt(keyword);
			}
			Query query = session.createQuery("from Orders where order_id=? or user.user_id =? "
					+ "or user.user_name like :two");
			query.setParameter(0, id);
			query.setParameter(1, id);
			query.setParameter("two", "%"+keyword+"%");
			orderlist = query.list();
		}
		return orderlist;
	}
}
