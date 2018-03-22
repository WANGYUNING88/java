package com.bookssh.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bookssh.bean.Admin;
import com.bookssh.service.AdminService;

@Controller
public class AdminAction {
	@Autowired
	private AdminService adminService;
	@RequestMapping("/adminLogin")
	public String login(Admin admin,Model model,HttpSession session) {
		Admin adminLogined = adminService.login(admin);
		if(adminLogined!=null) {
			session.setAttribute("admin", adminLogined);
			model.addAttribute("admin", adminLogined);
			return "Backstage";
		}else {
			model.addAttribute("errorMsg", "�û��������벻��ȷ");
			return "adminlogin";
		}
	}
	@RequestMapping("/adminRegister")
	public String register(Admin admin,Model model) {
		boolean result = adminService.register(admin);
		if(result) {
			model.addAttribute("errorMsg", "����Ա��ӳɹ�");
			return "Backstage";
		}else {
			model.addAttribute("errorMsg", "����Ա���ʧ��");
			return "Backstage";
		}
	}
	@RequestMapping("/adminUpdate")
	public String update(Admin admin,Model model) {
		boolean result = adminService.update(admin);
		if(result) {
			model.addAttribute("errorMsg", "����Ա�޸ĳɹ�");
			return "Backstage";
		}else {
			model.addAttribute("errorMsg", "����Ա�޸�ʧ��");
			return "Backstage";
		}
	}
	@RequestMapping("/adminSelect")
	public void select(String admin_name,HttpServletResponse response) {
		Admin admin = adminService.selectByName(admin_name);
		boolean result;
		if(admin==null) {
			result = true;
		}else {
			result = false;
		}
		try {
			response.getWriter().write("{\"result\":"+result+"}");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
