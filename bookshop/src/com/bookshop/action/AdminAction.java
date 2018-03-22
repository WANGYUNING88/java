package com.bookshop.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bookshop.bean.Admin;
import com.bookshop.service.AdminService;

@Controller
public class AdminAction {
	@Autowired
	private AdminService adminService;
	@RequestMapping("/adminLogin")
	public String login(Admin admin,Model model) {
		Admin adminLogined = adminService.login(admin);
		if(adminLogined!=null) {
			model.addAttribute("admin", adminLogined);
			return "Backstage";
		}else {
			model.addAttribute("errorMsg", "用户名或密码不正确");
			return "adminlogin";
		}
	}
	@RequestMapping("/adminRegister")
	public String register(Admin admin,Model model) {
		boolean result = adminService.register(admin);
		if(result) {
			model.addAttribute("errorMsg", "管理员添加成功");
			return "Backstage";
		}else {
			model.addAttribute("errorMsg", "管理员添加失败");
			return "Backstage";
		}
	}
	@RequestMapping("/adminUpdate")
	public String update(Admin admin,Model model) {
		boolean result = adminService.update(admin);
		if(result) {
			model.addAttribute("errorMsg", "管理员修改成功");
			return "Backstage";
		}else {
			model.addAttribute("errorMsg", "管理员修改失败");
			return "Backstage";
		}
	}
}
