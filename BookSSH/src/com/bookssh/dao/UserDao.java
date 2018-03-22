package com.bookssh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookssh.bean.User;
@Repository
public class UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	/*
	 * 检索全部USER
	 */
	public List<User> selectAllUser(){
		Session session = sessionFactory.getCurrentSession();
		String hql = "from User";
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		return list;
	}
	/*
	 * 登录验证
	 */
	public User login(User user) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from User where user_name=? and user_password=?";
		Query query = session.createQuery(hql);
	    query.setParameter(0, user.getUser_name());
	    query.setParameter(1, user.getUser_password());
	    User usered = (User)query.uniqueResult();
	    return usered;
	}
	/*
	 * 注册
	 */
	public Integer insert(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
		int result = user.getUser_id();
		return result;
	}
	/*
	 * 注册
	 * 用户名验证
	 */
	public User selectByName(String user_name) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from User where user_name=?";
		Query query = session.createQuery(hql);
	    query.setParameter(0, user_name);	    
	    User user = (User)query.uniqueResult();
	    return user;
	}
	/*
	 * 修改信息
	 * 注册时间不能改
	 */
	public boolean update(User user) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "update User set user_name=?,user_password=?,user_address=?,"
				+ "user_email=?,user_telephone=? where user_id=?)";		
		Query query = session.createQuery(hql);
		query.setParameter(0, user.getUser_name());
		query.setParameter(1, user.getUser_password());
		query.setParameter(2, user.getUser_address());
		query.setParameter(3, user.getUser_email());
		query.setParameter(4, user.getUser_telephone());
		query.setParameter(5, user.getUser_id());
		int result = query.executeUpdate();
		if(result!=0)
			return true;
		else
			return false;
		
	}
	/*
	 * 销户
	 */
	public boolean delete(Integer user_id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete from User where user_id=?");
		query.setParameter(0, user_id);
		int r = query.executeUpdate();
		if(r>0) {
			return true;
		}else {
			return false;
		}
	}
	/*
	 * 验证信息
	 * BY密码和id
	 */
	public User confirmation(Integer user_id, String user_password) {
		 Session session = sessionFactory.getCurrentSession();
		 String hql = "from User where user_id=? and user_password=?";
		 Query query = session.createQuery(hql);
		 query.setParameter(0, user_id);
		 query.setParameter(1, user_password);
		 User user = (User)query.uniqueResult();
		 return user;
	 }
//	/*
//	 *检索用户
//	 *BY USER_ID 
//	 */
//	public User selectById(Integer user_id) {
//		Session session = sessionFactory.getCurrentSession();
//		String hql = "from User where user_id=?";
//		Query query = session.createQuery(hql);
//	    query.setParameter(0, user_id);	    
//	    User user = (User)query.uniqueResult();
//	    return user;
//	}
	
	/*
	 * 分页显示
	 * 检索全部USER
	 */
//	public List<User> selectAllUserByPage(Page page){
//		Session session = sessionFactory.getCurrentSession();
//		String hql = "from User limit ?,?";
//		Query query = session.createQuery(hql);
//		query.setParameter(0, (page.getDpage()-1)*page.getPagecount());
//		query.setParameter(1, page.getPagecount());
//		List<User> list = query.list();
//		return list;
//	}
	
	
}
