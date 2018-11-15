package com.demo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.bean.User;
import com.demo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	public static final Logger log=Logger.getLogger(UserController.class);
	@Resource
private UserService us;
	@RequestMapping("/list")
	public String getUserList(Model model){
		List<User> list=us.getUserList();
		if(list.size()>0){
			model.addAttribute("U_list", list);
		}
		return "ulist";
		
	}
}
