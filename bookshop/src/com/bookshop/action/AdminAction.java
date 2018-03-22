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
}
