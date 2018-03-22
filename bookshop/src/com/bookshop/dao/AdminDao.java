package com.bookshop.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookshop.bean.Admin;

@Repository
public class AdminDao {
	@Autowired
	private SessionFactory sessionFactory;
	public Admin select(Admin admin) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		Query query = session.createQuery("from Admin where admin_name=? and admin_password=?");
		query.setParameter(0, admin.getAdmin_name());
		query.setParameter(1, admin.getAdmin_password());
		Admin adminLogined = (Admin)query.uniqueResult();
		
//		session.close();
		return adminLogined;
	}

	public boolean insert(Admin admin) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		session.save(admin);
		
//		session.close();
		return true;
	}
	public boolean update(Admin admin) {
		Session session = sessionFactory.getCurrentSession();
		
		Query query = session.createQuery("update Admin a set a.admin_name=? ,a.admin_password=? where a.admin_id=?");
		query.setParameter(0, admin.getAdmin_name());
		query.setParameter(1, admin.getAdmin_password());
		query.setParameter(2, admin.getAdmin_id());
		query.executeUpdate();
//		session.close();
		return true;
	}
}
