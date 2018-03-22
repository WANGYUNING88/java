package com.bookssh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bookssh.bean.User;
import com.bookssh.dao.UserDao;

@Service
@Transactional
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public List<User> selectAllUser(){
		return userDao.selectAllUser();
	}
	public User login(User user) {
		return userDao.login(user);
	}
	public Integer insert(User user) {
		return userDao.insert(user);
	}
	public boolean update(User user) {
		return userDao.update(user);
	}
	public boolean delete(Integer user_id) {
		return userDao.delete(user_id);
	}
	public User selectByName(String user_name) {
		return userDao.selectByName(user_name);
	}
	public User confirmation(Integer user_id,String user_password) {
		return userDao.confirmation(user_id, user_password);
	}
//	public User selectById(Integer user_id) {
//		return userDao.selectById(user_id);
//	}
}
