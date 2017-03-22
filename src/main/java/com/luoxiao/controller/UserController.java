package com.luoxiao.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.luoxiao.model.User;
import com.luoxiao.model.UserRole;
import com.luoxiao.service.UserRoleService;
import com.luoxiao.service.UserService;

/**
 * @author luoxiao
 * @date 2017年1月14日
 */
@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserRoleService userRoleService;

	/**
	 * 跳转首页
	 * 
	 * @return
	 */
	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public String toIndex(HttpSession session) {
		return "index";
	}

	/**
	 * 注册操作
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/user/regist", method = RequestMethod.POST)
	public ModelAndView save(User user) {
		ModelAndView mv = new ModelAndView();
		try {
			userService.save(user);
			Integer id = user.getId();
			System.out.println(id);
			/* UserRole userRole = userRoleService.selectByUserId(id); */
			UserRole userRole = new UserRole();
			userRole.setUserId(id);
			// 默认注册用户，RoleId即为3
			userRole.setRoleId(3);
			userRoleService.insert(userRole);
			mv.setViewName("success/registSuccess");
		} catch (Exception e) {
			mv.setViewName("error/registError");
			e.printStackTrace();
		}
		mv.addObject("user", userService.selectById(user.getId()));
		return mv;
	}

	/**
	 * 跳转到注册页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/user/register", method = RequestMethod.GET)
	public String registPage(Model model) {
		return "user/register";
	}

	/**
	 * 登录功能
	 * 
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/user/login", method = RequestMethod.POST)
	public String login(User user, HttpSession session, Model model) {
		UsernamePasswordToken token = new UsernamePasswordToken(
				user.getUsername(), user.getPassword());
		Subject subject = SecurityUtils.getSubject();
		try {
			subject.login(token);
			User loginUser = userService.selectByUsername(user.getUsername());
			session.setAttribute("loginUser", loginUser);
			System.out.println(loginUser);
			return "/success";
		} catch (Exception e) {
			model.addAttribute("errorMsg", "登录失败");
			return "redirect:/user/index";
		}

	}

	/**
	 * ajax
	 * 检查用户名是否可用
	 * 
	 * @param username
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/user/checkUser", method = RequestMethod.GET)
	public String checkUser(String username, HttpServletRequest resqust,
			HttpServletResponse response) {
		Boolean b = userService.userIsExist(username);
		String result = b ? "true" : "false";
		return result;
	}

}
