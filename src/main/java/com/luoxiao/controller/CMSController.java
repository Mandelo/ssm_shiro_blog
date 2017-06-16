package com.luoxiao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.luoxiao.service.UserService;

@Controller
public class CMSController {

	@Autowired
	private UserService userService;

	@RequestMapping("cms/permissionManage")
	public String toPermissionPage() {
		return "cms/permissionManage";
	}

}
