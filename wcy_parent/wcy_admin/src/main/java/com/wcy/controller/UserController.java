package com.wcy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wcy.entity.User;
import com.wcy.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("userlist")
	public String list(Model model){
		List<User> list = userService.getUser();
		model.addAttribute("list", list);
		return "user_list";
	}
}
