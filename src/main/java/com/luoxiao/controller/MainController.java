package com.luoxiao.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.luoxiao.model.Blog;
import com.luoxiao.model.User;
import com.luoxiao.model.UserRole;
import com.luoxiao.model.UserRoleTemp;
import com.luoxiao.service.*;
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

/**
 * @author luoxiao
 * @date 2017年1月14日
 */
@Controller
public class MainController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserRoleService userRoleService;

    @Autowired
    private BlogService blogService;

    @Autowired
    private UserRoleTempService userRoleTempService;

    @Autowired
    private UserExtendService userExtendService;

    @Autowired
    private RoleService roleService;


    /**
     * 跳转首页
     *
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String toIndex(HttpSession session) {
        return "/index";
    }

    /**
     * 注册
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/user/regist", method = RequestMethod.POST)
    public ModelAndView save(User user) {
        ModelAndView mv = new ModelAndView();
        try {
            user.setStatus("1");
            user.setRegTime(new Date());
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
     * 后台首页
     *
     * @return
     */
    @RequestMapping(value = "/cms/cmsHome", method = RequestMethod.GET)
    public String cmsHome() {
        return "cms/cmsHome";
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
        subject.login(token);
        User loginUser = userService.selectByUsername(user.getUsername());
        session.setAttribute("loginUser", loginUser);
        return "/loginSuccess";
    }

    /**
     * 登出，清除session
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "/user/logOut")
    public String logOut(HttpSession session) {
        session.removeAttribute("loginUser");
        return "redirect:/index";
    }

    /**
     * ajax 检查用户名是否可用
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

    /**
     * ajax验证用户名密码
     *
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/validatePassword")
    public String validateUser(String username) {
        User _user = userService.selectByUsername(username);
        String _password = _user.getPassword();
        if (_password == null) {
            return "";
        } else {
            return _password;
        }
    }

    /**
     * 跳转到写博客页面
     *
     * @return
     */
    @RequestMapping(value = "/user/toAddBlog")
    public String toAddBlog() {
        return "user/blog_add";
    }

    @RequestMapping(value = "/cms/index")
    public String cmsIndex() {
        return "cms/index";
    }

    /**
     * 角色管理界面
     *
     * @return
     */
    @RequestMapping(value = "/cms/userManage")
    public ModelAndView userManage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("cms/userManage");
        return mv;
    }

    @ResponseBody
    @RequestMapping("/cms/userRoleList")
    public List<UserRoleTemp> getUserRoleList() {
        List<User> userList = userService.selectAll();
        List<UserRoleTemp> userRoleList = new ArrayList<UserRoleTemp>();
        for (User user : userList) {
            List<String> roleList = userExtendService.getRoles(user
                    .getUsername());
            UserRoleTemp u = new UserRoleTemp();
            u.setId(user.getId());
            u.setUsername(user.getUsername());
            u.setRoles(roleList);
            userRoleList.add(u);
        }
        return userRoleList;
    }


    /**
     * 跳转角色管理页面
     *
     * @return
     */
    @RequestMapping(value = "/roleManage")
    public String roleManage() {
        return "/cms/roleManage";
    }


    @RequestMapping(value = "user/blogExample")
    public String blogContent() {
        return "user/blogExample";
    }

    /**
     * 用户角色管理
     *
     * @param userId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/getRoles")
    public UserRoleTemp roleManage(
            @RequestParam(value = "userId") Integer userId) {
        UserRoleTemp u = new UserRoleTemp();
        User user = userService.selectById(userId);
        List<String> roles = userExtendService.getRoles(user.getUsername());
        u.setId(userId);
        u.setRoles(roles);
        u.setUsername(user.getUsername());
        return u;
    }

    /**
     * 修改角色roles，并保存
     *
     * @param userId
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/updateRoles", method = RequestMethod.GET)
    public UserRoleTemp updateRoles(
            @RequestParam(value = "userId") Integer userId,
            @RequestParam(value = "roleStr") String roleStr) {
        UserRoleTemp u = new UserRoleTemp();
        System.out.println(roleStr);
        // 根据用户userId删除所有RoleId
        userRoleService.deleteById(userId);
        // 遍历角色名
        String[] roleNames = roleStr.split(",");
        for (int i = 0; i < roleNames.length; i++) {
            Integer roleId = (roleService.getIdByRoleName(roleNames[i]));
            // 插入新的数据到UserRole表
            UserRole userRole = new UserRole();
            userRole.setUserId(userId);
            userRole.setRoleId(roleId);
            userRoleService.insert(userRole);
        }

        User user = userService.selectById(userId);
        List<String> roles = userExtendService.getRoles(user.getUsername());
        u.setId(userId);
        u.setRoles(roles);
        u.setUsername(user.getUsername());
        return u;
    }

    /**
     * 删除用户
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/deleteUser")
    public String deleteUserById(@RequestParam(value = "id") Integer id) {
        System.out.println(id);
        userService.deleteById(id);
        userRoleService.deleteById(id);
        return "redirect:/cms/userManage";
    }


    /**
     * 禁用用户
     */
    @ResponseBody
    @RequestMapping(value = "/blockUser")
    public String blockUserById(@RequestParam(value = "id") Integer id) {
        try {
            userService.blockUserById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    /**
     * 解禁
     */
    @ResponseBody
    @RequestMapping(value = "/unblockUser")
    public String unblockUserById(@RequestParam(value = "id") Integer id) {
        try {
            userService.unblockUserById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    /**
     * 跳转搜索页面
     *
     * @return
     */
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search() {
        return "/searchPage";
    }

    // 提交博客
    @RequestMapping(value = "/user/submitBlog", method = RequestMethod.POST)
    public ModelAndView submitBlog(Blog blog, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        try {
            blog.setCreateTime(new Date());
            User loginUser = (User) session.getAttribute("loginUser");
            blog.setUserId(loginUser.getId());
            blog.setAuthor(loginUser.getUsername());
            blogService.insert(blog);
            mv.setViewName("success/blogSubmitSuccess");
        } catch (Exception e) {
            mv.setViewName("error/errorPage");
            e.printStackTrace();
        }
        return mv;
    }

    /**
     * 博客
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/user/blogContents")
    public ModelAndView blogContents(Integer id) {
        Blog blog = blogService.selectById(id);
        ModelAndView mv = new ModelAndView();
        mv.addObject("blog", blog);
        mv.setViewName("user/blogContents");
        return mv;
    }

    /**
     * 查看登录用户的所博客
     *
     * @param userId 当前登录用户Id
     * @param page   当前页码
     * @param rows   每页记录数量
     * @return page对象
     */
    @RequestMapping(value = "/user/blog_list", method = RequestMethod.GET)
    public ModelAndView selectAllByUserId(Integer userId,
                                          @RequestParam(required = false, defaultValue = "1") Integer page,
                                          @RequestParam(required = false, defaultValue = "5") Integer rows) {
        ModelAndView mv = new ModelAndView();
        PageHelper.startPage(page, rows);
        List<Blog> list = blogService.selectAllbyUserId(userId, page, rows);
        PageInfo<Blog> p = new PageInfo<Blog>(list);
        mv.addObject("page", p);
        mv.addObject("userId", userId);
        mv.setViewName("user/blog_list");
        return mv;
    }

    // 删除博客
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam(value = "id") Integer id) {
        ModelAndView mv = new ModelAndView();
        blogService.deleteById(id);
        mv.setViewName("redirect:/user/blog_list");
        return mv;
    }

    /**
     * 模糊搜索分页，用于智能搜索提示，分页未使用。
     *
     * @param keyword 搜索关键字
     * @param page
     * @param rows
     * @return 博客列表
     */
    @ResponseBody
    @RequestMapping(value = "/searchBlog", method = RequestMethod.GET)
    public List<Blog> selectByKeyword(String keyword,
                                      @RequestParam(required = false, defaultValue = "1") Integer page,
                                      @RequestParam(required = false, defaultValue = "5") Integer rows) {
        List<Blog> list = blogService.selectByKeyword(keyword, page, rows);
        PageHelper.startPage(page, rows);
        return list;
    }

}
