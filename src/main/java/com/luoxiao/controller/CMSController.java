package com.luoxiao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.luoxiao.service.UserService;

/**
 * @author losho
 *
 */
@Controller
public class CMSController {

	@Autowired
	private UserService userService;

	/**
	 * 角色页面
	 * @return
	 */
	@RequestMapping("cms/permissionManage")
	public String toPermissionPage() {
		return "cms/permissionManage";
	}

	@RequestMapping("cms/userList")
	public String userList(){
		return "cms/userList";
	}
	
}
