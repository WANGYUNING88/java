package com.bookssh.action;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bookssh.bean.User;
import com.bookssh.service.UserService;

@Controller
public class UserAction {
	@Autowired
	private UserService userService;
	
	/*
	 * �û���¼
	 */
	@RequestMapping("/userLogin")
	public void userLogin(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
		User user = new User();
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		user.setUser_name(user_name);
		user.setUser_password(user_password);
		User userLogin = userService.login(user);		
		boolean result;
		if(userLogin!=null) {
			result = true;
			session.setAttribute("user", userLogin);
		}
		else{
			result = false;
		}
		response.getWriter().write("{\"result\":"+result+"}");
//		return "redirect:/selectAllBook.do?id=2"; 
	}
	/*
	 * �û�ע��
	 */
	@RequestMapping("/userLoginOut")
	 public String loginOut(HttpServletRequest request,HttpSession session) {
		session.invalidate(); 
		return "redirect:/selectAllBook.do?id=2";
	}
	/*
	 * ��̨����ȫ���û�
	 */
	@RequestMapping("/selectAllUser")
	 public String selectAllUser(Model model) {
		List<User> userlist = userService.selectAllUser();
		model.addAttribute("userlist",userlist);
		return "allUser";
	}
	/*
	 * �û�ע��
	 * �û�����֤
	 */
	@RequestMapping("/userSelect")
	public void userSelect(String user_name,HttpServletResponse response) {
		User user = userService.selectByName(user_name);
		boolean result;
		if(user==null) {
			result = true;
		}else {
			result = false;
		}
		try {
			response.getWriter().write("{\"result\":"+result+"}");
		} catch (IOException e) {

			e.printStackTrace();
		}
	}
	/*
	 * ע��user
	 */
	@RequestMapping("/insertUser")
	public String insertUser(HttpServletResponse response,HttpServletRequest request) throws ParseException, IOException {
		//ʵ��user
		User user =new User();
		String user_name=request.getParameter("user_name");
		String user_password=request.getParameter("user_password");
		String user_address=request.getParameter("user_address");
		String user_email=request.getParameter("user_email");
		String user_telephone=request.getParameter("user_telephone");
		user.setUser_name(user_name);
		user.setUser_password(user_password);
		user.setUser_address(user_address);
		user.setUser_telephone(user_telephone);
		user.setUser_email(user_email);
		//��ȡ��ǰע��ʱ��
		Date dt=new Date();
	    SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd");
	    String order_tame = matter1.format(dt);
	    Date order_time =null;
		order_time =  matter1.parse(order_tame);
		java.sql.Date date = new java.sql.Date(order_time.getTime());//
		//ע��ʱ��
		user.setUser_posttime(date);
		//�����û���Ϣ
		Integer result = userService.insert(user);	
		response.getWriter().write("{\"result\":"+result+"}");//ע��ɹ� 1 
		return null;
	}
	/*
	 * �޸�����
	 * user
	 */
	@RequestMapping("/updateUser")
	public String updateUser(HttpServletResponse response,HttpServletRequest request) throws ParseException, IOException {
		//ʵ��user
		User user =new User();
		String id = request.getParameter("user_id");
		String user_name=request.getParameter("user_name");
		String user_password=request.getParameter("user_password");
		String user_address=request.getParameter("user_address");
		String user_email=request.getParameter("user_email");
		String user_telephone=request.getParameter("user_telephone");
		Integer user_id = new Integer(id);
		//posttime
		user.setUser_id(user_id);
		user.setUser_name(user_name);
		user.setUser_password(user_password);
		user.setUser_address(user_address);
		user.setUser_telephone(user_telephone);
		user.setUser_email(user_email);
		boolean result = userService.update(user);
		response.getWriter().write("{\"result\":"+result+"}");//ע��ɹ� 1 
		return null;
	}
	/*
	 * ��֤����
	 */
	@RequestMapping("/confirmation")
	public void confirmationPassword(HttpServletResponse response,HttpServletRequest request) throws IOException {
		String user_name=request.getParameter("user_name");
		String user_password=request.getParameter("user_password");
		System.out.println(user_name);
		System.out.println(user_password);
		User user = new User();
		user.setUser_name(user_name);
		user.setUser_password(user_password);
		User usered = userService.login(user);
		String i = "0";
		System.out.println(usered);
		if(usered!=null) {
			i="1";
		}else {
			i="2";
		}
		response.getWriter().write("{\"result\":"+i+"}");
	}
}
