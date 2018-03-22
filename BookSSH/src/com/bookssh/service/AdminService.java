package com.bookssh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bookssh.bean.Admin;
import com.bookssh.dao.AdminDao;


@Service
@Transactional
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		
		return adminDao.select(admin);
	}
	public boolean register(Admin admin) {
		// TODO Auto-generated method stub
		
		return adminDao.insert(admin);
	}
	public boolean update(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.update(admin);
	}
	public Admin selectByName(String admin_name) {
		return adminDao.selectByName(admin_name);
	}
}
