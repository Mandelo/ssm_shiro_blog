/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-09-12 16:32:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
USE ssm;
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `content` longtext,
  `createTime` timestamp NULL DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('12', '123213', '   				 <p>请输入内容...</p>\r\n				', '2017-02-05 19:35:50', 'admin', '1');
INSERT INTO `blog` VALUES ('13', 'HelloWorld', '   				 <p>请输入内容...</p>\r\n				<p>trytry同样trytry同样</p>', '2017-02-09 14:21:05', 'admin', '1');
INSERT INTO `blog` VALUES ('14', '13123123', '   				 <p>请输入内容...</p>\r\n				<p>12312321321</p>', '2017-02-09 15:26:08', 'admin', '1');
INSERT INTO `blog` VALUES ('15', '1231232132132321', '   				 <p>请输入内容...</p>\r\n				', '2017-02-09 16:45:05', 'admin', '1');
INSERT INTO `blog` VALUES ('16', 'yuyuyuyu', '   				 <p>请输入内容...</p>\r\n				', '2017-02-09 16:45:15', 'admin', '1');
INSERT INTO `blog` VALUES ('17', 'yuyuyuyu', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:20', 'admin', '1');
INSERT INTO `blog` VALUES ('18', 'y21323232', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:26', 'admin', '1');
INSERT INTO `blog` VALUES ('19', 'y2132323221321323', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:29', 'admin', '1');
INSERT INTO `blog` VALUES ('20', '123ghgjhj', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:33', 'admin', '1');
INSERT INTO `blog` VALUES ('21', 'ytuytu123', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:38', 'admin', '1');
INSERT INTO `blog` VALUES ('22', 'ytuytu123', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:40', 'admin', '1');
INSERT INTO `blog` VALUES ('23', '12321321321323', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:44', 'admin', '1');
INSERT INTO `blog` VALUES ('24', 'uiuyiuyiuyi', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:48', 'admin', '1');
INSERT INTO `blog` VALUES ('25', '232323', '   				 <p>请输入内容...</p>\r\n				', '2017-02-16 15:54:15', 'admin', '1');
INSERT INTO `blog` VALUES ('26', 'TestCode', '   				 <p>&nbsp;@RequestMapping(value&nbsp;=&nbsp;\"/user/login\",&nbsp;method&nbsp;=&nbsp;RequestMethod.POST)\r\n</p><p>	public&nbsp;String&nbsp;login(User&nbsp;user,&nbsp;HttpSession&nbsp;session,&nbsp;Model&nbsp;model)&nbsp;{\r\n</p><p>		UsernamePasswordToken&nbsp;token&nbsp;=&nbsp;new&nbsp;UsernamePasswordToken(\r\n</p><p>				user.getUsername(),&nbsp;user.getPassword());\r\n</p><p>		Subject&nbsp;subject&nbsp;=&nbsp;SecurityUtils.getSubject();\r\n</p><p>		try&nbsp;{\r\n</p><p>			subject.login(token);\r\n</p><p>			User&nbsp;loginUser&nbsp;=&nbsp;userService.selectByUsername(user.getUsername());\r\n</p><p>			session.setAttribute(\"loginUser\",&nbsp;loginUser);\r\n</p><p>			//&nbsp;System.out.println(loginUser);\r\n</p><p>			return&nbsp;\"/success\";\r\n</p><p>		}&nbsp;catch&nbsp;(Exception&nbsp;e)&nbsp;{\r\n</p><p>			model.addAttribute(\"errorMsg\",&nbsp;\"登录失败\");\r\n</p><p>			return&nbsp;\"redirect:/user/index\";\r\n</p><p>		}\r\n</p><p>	}</p>\r\n				<p><br></p>', '2017-02-16 21:40:26', 'admin', '1');
INSERT INTO `blog` VALUES ('27', 'javaeretrt', '   				 <p>请输入内容...</p>\r\n				<p>retrtrtrtrt</p>', '2017-02-20 01:52:10', 'admin', '1');
INSERT INTO `blog` VALUES ('28', 'AAAAAAAAAjava', '   				 <p>请输入内容...</p>\r\n				<p>retrtrtrtrt</p>', '2017-02-20 01:52:19', 'admin', '1');
INSERT INTO `blog` VALUES ('29', '沃尔特java', '   				 <p>请输入内容...</p>\r\n				<p>retrtrtrtrt</p>', '2017-02-20 01:52:30', 'admin', '1');
INSERT INTO `blog` VALUES ('30', '123', '   				 <p>请输入内容...</p>\r\n				<p>123</p>', '2017-02-20 02:00:48', 'admin', '1');
INSERT INTO `blog` VALUES ('31', '123', '   				 <p>请输入内容...</p>\r\n				<p>123</p>', '2017-02-20 02:00:51', 'admin', '1');
INSERT INTO `blog` VALUES ('32', '123', '   				 <p>请输入内容...</p>\r\n				<p>123</p>', '2017-02-20 02:00:53', 'admin', '1');
INSERT INTO `blog` VALUES ('33', '11', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 02:06:48', 'admin', '1');
INSERT INTO `blog` VALUES ('34', 'java从入门到精通', '   				 <p>请输入内容...</p>\r\n				<p><u>12321321321323</u></p><p><br></p>', '2017-02-20 19:10:50', 'admin', '1');
INSERT INTO `blog` VALUES ('35', 'Mysql从入门到精通', '   				 <p>请输入内容...</p>\r\n				<p><u>12321321321323123123213</u></p><p><br></p>', '2017-02-20 19:11:11', 'admin', '1');
INSERT INTO `blog` VALUES ('36', 'java基础知识', '   				 <p>请输入内容...</p>\r\n				<p><u>12321321321323123123213</u></p><p><br></p>', '2017-02-20 19:11:25', 'admin', '1');
INSERT INTO `blog` VALUES ('37', 'mysql基础', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:12:07', 'admin', '1');
INSERT INTO `blog` VALUES ('38', 'java从入门到放弃', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:12:52', 'admin', '1');
INSERT INTO `blog` VALUES ('39', 'JS基础知识', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:16:05', 'admin', '1');
INSERT INTO `blog` VALUES ('40', 'jane', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:16:20', 'admin', '1');
INSERT INTO `blog` VALUES ('41', '1234', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:25:49', 'admin', '1');
INSERT INTO `blog` VALUES ('42', '12345', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:25:52', 'admin', '1');
INSERT INTO `blog` VALUES ('43', '123456', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:25:55', 'admin', '1');
INSERT INTO `blog` VALUES ('44', '1234567', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:25:58', 'admin', '1');
INSERT INTO `blog` VALUES ('45', '', '   				 <p>请输入内容...</p><p><br></p><pre style=\"max-width: 100%;\"><code class=\"java hljs\" codemark=\"1\"><span class=\"hljs-function\"><span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">void</span> <span class=\"hljs-title\">setName</span><span class=\"hljs-params\">(String username)</span></span>{\r\n       <span class=\"hljs-keyword\">this</span>.name=name;\r\n}</code></pre>\r\n				<p><br></p>', '2017-02-21 23:01:58', 'admin', '1');
INSERT INTO `blog` VALUES ('46', 'adfgfjavert', '   				 <p>请输入内容...</p>\r\n				', '2017-02-23 23:22:26', 'admin', '1');
INSERT INTO `blog` VALUES ('47', '123213jav45t45', '   				 <p>请输入内容...</p>\r\n				', '2017-02-23 23:22:39', 'admin', '1');
INSERT INTO `blog` VALUES ('48', '123213java45t45', '   				 <p>请输入内容...</p>\r\n				', '2017-02-23 23:22:45', 'admin', '1');
INSERT INTO `blog` VALUES ('49', '富文本编辑器测试', '   				 <pre style=\"max-width:100%;overflow-x:auto;\"><code class=\"java hljs\" codemark=\"1\">@RequestMapping(\"/user/profile/userList\")\r\n	@ResponseBody\r\n	public ModelAndView userList(HttpSession session){\r\n		User loginUser = (User) session.getAttribute(\"loginUser\");\r\n		//System.out.println(loginUser);\r\n		ModelAndView mv = new ModelAndView();\r\n		mv.addObject(\"loginUser\",loginUser);\r\n		mv.setViewName(\"/user/profile/userList\");\r\n		return mv;\r\n</code></pre><h1>习近平：中国要变成一个强国，各方面都要强<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/0b/tootha_thumb.gif\"><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/c9/geili_thumb.gif\"></h1><font size=\"5\"><span>2月23日下午，习近平考察了北京新机场建设。北京新机场位于北京市南部，规划远期年客流吞吐量1亿人次、飞机起降<i><font face=\"Comic Sans MS\">量88万架次，已于2014年开工建设，2019年将建成并投入运营。</font></i></span></font><p><br></p>', '2017-02-25 22:01:29', 'admin', '1');
INSERT INTO `blog` VALUES ('50', '', '   				 <div><h1>起点和方向<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/0b/tootha_thumb.gif\" style=\"font-size: 14px;\"><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6e/panda_thumb.gif\" style=\"font-size: 14px;\"></h1><blockquote><p>在接下来的两章中，我们将从项目背景一直讨论到关键技术的实践。这其中既会包括各种技术也会包括产品和交互的思考。</p></blockquote><p><ol><li><font color=\"#008080\">项目的背景是，公司业务迅速扩张，有大量对内的系统页面需要搭建。而前端人力是瓶颈，所以我们希望能以服务化的方式输出前端能力，让公司内所有非前端出身但有编程能力的人都能使用这种服务快速地开发出较高质量的页面。 从产品角度来说，它的目标已经很明确了</font>：</li></ol></p><ul><li><font size=\"5\"><u>使用人群：非前端的开发者</u></font></li><li><font size=\"5\">要提供的服务：能以中上等开发速度开发出中上等可维护性页面的集成开发环境(以下简称开发环境)</font></li></ul><p><font size=\"5\">有了这个目标，我们就可以开始设计产品形态了。</font></p><p>页面分为视图和逻辑两部分，在目前组件化的大背景下，视图基本上可以等同于组件树。首先，什么样的页面编辑方式学习成本最低同时最快速？<strike>当然是所见即所得，拖拽或者编辑树型结构的数据这两种方式都可以接受。实际测试中拖拽最容易上手，熟悉了快捷键的情况下则编辑组件树更快。</strike></p><p>接着，怎样让用户编写页面逻辑既能学习成本低，又能保障质量？学习成本低意味着概念要少，或者都是用户已知的概念。保障质量这个概念比较大，我们可以从开发的两个阶段来考虑：</p><ul><li>一是开发时最好有保障，例如前端开发时的 eslint 加上编辑器提示就能很好地提前避免一些低级错误。</li><li>二是在开发完之后，代码应该“有迹可循”，无论是排查问题，还是扩展需求，都要让用户在头脑里第一时间就知道应该怎样写逻辑，写在哪里。也就意味着概念要完善，职责分明。同时，工具层面也可以有些辅助功能，例如传统编辑器的变量搜索等。</li></ul></div><p><br></p>', '2017-03-03 14:44:11', 'admin', '1');
INSERT INTO `blog` VALUES ('51', '富文本测试', '   				 <p>code测试</p><pre style=\"max-width: 100%;\"><code class=\"java hljs\" codemark=\"1\"><span class=\"hljs-comment\">/**\r\n	 * 查看登录用户的所博客\r\n	 * <span class=\"hljs-doctag\">@param</span> userId 当前登录用户Id\r\n	 * <span class=\"hljs-doctag\">@param</span> page 当前页码\r\n	 * <span class=\"hljs-doctag\">@param</span> rows 每页记录数量\r\n	 * <span class=\"hljs-doctag\">@return</span> page对象\r\n	 */</span>\r\n	<span class=\"hljs-meta\">@RequestMapping</span>(value=<span class=\"hljs-string\">\"/user/blog_list\"</span>,method=RequestMethod.GET)\r\n	<span class=\"hljs-function\"><span class=\"hljs-keyword\">public</span> ModelAndView <span class=\"hljs-title\">selectAllByUserId</span><span class=\"hljs-params\">(Integer userId,@RequestParam(required = <span class=\"hljs-keyword\">false</span>,defaultValue=<span class=\"hljs-string\">\"1\"</span>)</span>Integer page,@<span class=\"hljs-title\">RequestParam</span><span class=\"hljs-params\">(required = <span class=\"hljs-keyword\">false</span>,defaultValue=<span class=\"hljs-string\">\"5\"</span>)</span>Integer rows)</span>{\r\n		ModelAndView mv = <span class=\"hljs-keyword\">new</span> ModelAndView();\r\n		PageHelper.startPage(page, rows);\r\n		List&lt;Blog&gt; list = blogService.selectAllbyUserId(userId, page, rows);\r\n		PageInfo&lt;Blog&gt; p = <span class=\"hljs-keyword\">new</span> PageInfo&lt;Blog&gt;(list);\r\n		mv.addObject(<span class=\"hljs-string\">\"page\"</span>, p);\r\n		mv.addObject(<span class=\"hljs-string\">\"userId\"</span>, userId);\r\n		mv.setViewName(<span class=\"hljs-string\">\"user/blog_list\"</span>);\r\n		<span class=\"hljs-keyword\">return</span> mv;\r\n	}</code></pre><p>文本测试：</p><p><b><u>这样，你就定义了一个变量a，这个变量除了有x和y两个公有成员外，还有两个add和mul两个函数（公有方法）。但是这样的定义方法的缺点有2条：</u></b></p><p>1<font color=\"#00ffff\">.批量生成对象很不方便，如果你var b=a;那么你每次修改b的成员，都会同时改掉a的</font><font color=\"#000000\" style=\"background-color: rgb(255, 0, 0);\">成员，因为JavaScript的引用机制</font></p><p></p><blockquote><p>2.如果每次生成对象需要自定义一些成员，都要写出相应的赋值操作，增加代码行数。</p></blockquote><p><br></p>', '2017-03-05 01:38:50', '123', '3');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `username` varchar(20) NOT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `operation` varchar(15) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', 'admin', '127.0.0.1', '2018-09-11 20:37:27', 'login', '执行成功');
INSERT INTO `log` VALUES ('2', 'Mike', '192.168.1.44', '2018-09-11 20:39:15', 'login', '执行成功');
INSERT INTO `log` VALUES ('3', 'admin', '127.0.0.1', '2018-09-11 20:59:34', 'login', '执行成功');
INSERT INTO `log` VALUES ('4', 'admin', '127.0.0.1', '2018-09-11 21:01:30', 'login', '执行成功');
INSERT INTO `log` VALUES ('5', 'admin', '127.0.0.1', '2018-09-11 21:07:02', 'login', '执行成功');
INSERT INTO `log` VALUES ('6', 'admin', '127.0.0.1', '2018-09-11 21:08:51', 'login', '执行成功');
INSERT INTO `log` VALUES ('7', 'admin', '127.0.0.1', '2018-09-11 21:11:45', 'login', '执行成功');
INSERT INTO `log` VALUES ('8', 'admin', '127.0.0.1', '2018-09-11 21:13:43', 'login', '执行成功');
INSERT INTO `log` VALUES ('9', 'admin', '127.0.0.1', '2018-09-11 21:14:40', 'login', '执行成功');
INSERT INTO `log` VALUES ('10', 'admin', '127.0.0.1', '2018-09-11 21:15:28', 'login', '执行成功');
INSERT INTO `log` VALUES ('11', 'admin', '127.0.0.1', '2018-09-11 21:16:24', 'login', '执行成功');
INSERT INTO `log` VALUES ('12', 'admin', '127.0.0.1', '2018-09-11 21:17:52', 'login', '执行成功');
INSERT INTO `log` VALUES ('13', 'admin', '127.0.0.1', '2018-09-11 21:19:02', 'login', '执行成功');
INSERT INTO `log` VALUES ('14', 'admin', '127.0.0.1', '2018-09-11 21:20:36', 'login', '执行成功');
INSERT INTO `log` VALUES ('15', 'admin', '127.0.0.1', '2018-09-11 21:21:41', 'login', '执行成功');
INSERT INTO `log` VALUES ('16', 'admin', '127.0.0.1', '2018-09-11 21:23:04', 'login', '执行成功');
INSERT INTO `log` VALUES ('17', '123', '127.0.0.1', '2018-09-11 21:23:10', 'logOut', '执行成功');
INSERT INTO `log` VALUES ('18', 'admin', '127.0.0.1', '2018-09-12 14:41:01', 'login', '执行成功');
INSERT INTO `log` VALUES ('19', 'admin', '127.0.0.1', '2018-09-12 14:44:33', 'login', '执行成功');
INSERT INTO `log` VALUES ('20', 'admin', '127.0.0.1', '2018-09-12 14:47:08', 'login', '执行成功');
INSERT INTO `log` VALUES ('21', 'admin', '127.0.0.1', '2018-09-12 15:00:35', 'login', '执行成功');
INSERT INTO `log` VALUES ('22', 'admin', '127.0.0.1', '2018-09-12 15:04:05', 'login', '执行成功');
INSERT INTO `log` VALUES ('23', 'admin', '127.0.0.1', '2018-09-12 15:05:04', 'login', '执行成功');
INSERT INTO `log` VALUES ('24', 'admin', '127.0.0.1', '2018-09-12 15:26:32', 'login', '执行成功');
INSERT INTO `log` VALUES ('25', 'admin', '127.0.0.1', '2018-09-12 15:28:29', 'login', '执行成功');
INSERT INTO `log` VALUES ('26', 'admin', '127.0.0.1', '2018-09-12 15:29:24', 'login', '执行成功');
INSERT INTO `log` VALUES ('27', 'admin', '127.0.0.1', '2018-09-12 15:32:47', 'login', '执行成功');
INSERT INTO `log` VALUES ('28', 'admin', '127.0.0.1', '2018-09-12 15:39:12', 'login', '执行成功');
INSERT INTO `log` VALUES ('29', 'admin', '127.0.0.1', '2018-09-12 15:40:38', 'login', '执行成功');
INSERT INTO `log` VALUES ('30', 'admin', '127.0.0.1', '2018-09-12 15:43:26', 'login', '执行成功');
INSERT INTO `log` VALUES ('31', 'admin', '127.0.0.1', '2018-09-12 15:44:56', 'login', '执行成功');
INSERT INTO `log` VALUES ('32', 'admin', '127.0.0.1', '2018-09-12 15:48:48', 'login', '执行成功');
INSERT INTO `log` VALUES ('33', 'admin', '127.0.0.1', '2018-09-12 15:50:07', 'login', '执行成功');
INSERT INTO `log` VALUES ('34', 'admin', '127.0.0.1', '2018-09-12 15:52:12', 'login', '执行成功');
INSERT INTO `log` VALUES ('35', 'admin', '127.0.0.1', '2018-09-12 15:53:13', 'login', '执行成功');
INSERT INTO `log` VALUES ('36', 'admin', '127.0.0.1', '2018-09-12 15:55:21', 'login', '执行成功');
INSERT INTO `log` VALUES ('37', 'admin', '127.0.0.1', '2018-09-12 15:55:36', 'login', '执行成功');
INSERT INTO `log` VALUES ('38', 'admin', '127.0.0.1', '2018-09-12 15:56:04', 'login', '执行成功');
INSERT INTO `log` VALUES ('39', 'admin', '127.0.0.1', '2018-09-12 15:57:08', 'login', '执行成功');
INSERT INTO `log` VALUES ('40', 'admin', '127.0.0.1', '2018-09-12 15:57:43', 'login', '执行成功');
INSERT INTO `log` VALUES ('41', 'admin', '127.0.0.1', '2018-09-12 15:58:39', 'login', '执行成功');
INSERT INTO `log` VALUES ('42', 'admin', '127.0.0.1', '2018-09-12 16:00:07', 'login', '执行成功');
INSERT INTO `log` VALUES ('43', 'admin', '127.0.0.1', '2018-09-12 16:05:02', 'login', '执行成功');
INSERT INTO `log` VALUES ('44', 'admin', '127.0.0.1', '2018-09-12 16:07:42', 'login', '执行成功');
INSERT INTO `log` VALUES ('45', 'admin', '127.0.0.1', '2018-09-12 16:13:25', 'login', '执行成功');
INSERT INTO `log` VALUES ('46', 'admin', '127.0.0.1', '2018-09-12 16:13:30', 'logOut', '执行成功');
INSERT INTO `log` VALUES ('47', 'admin', '127.0.0.1', '2018-09-12 16:19:06', 'login', '执行成功');
INSERT INTO `log` VALUES ('48', 'admin', null, null, null, '执行失败');
INSERT INTO `log` VALUES ('49', 'admin', '127.0.0.1', '2018-09-12 16:20:08', 'login', '执行成功');
INSERT INTO `log` VALUES ('50', 'admin', null, null, null, '执行失败');
INSERT INTO `log` VALUES ('51', 'admin', '127.0.0.1', '2018-09-12 16:21:47', 'login', '执行成功');
INSERT INTO `log` VALUES ('52', 'admin', null, null, null, '执行失败');
INSERT INTO `log` VALUES ('53', 'admin', '127.0.0.1', '2018-09-12 16:23:18', 'login', '执行成功');
INSERT INTO `log` VALUES ('54', 'admin', null, null, null, '执行失败');
INSERT INTO `log` VALUES ('55', 'admin', '127.0.0.1', '2018-09-12 16:23:53', 'login', '执行成功');
INSERT INTO `log` VALUES ('56', 'admin', '127.0.0.1', '2018-09-12 16:23:58', 'logOut', '执行成功');
INSERT INTO `log` VALUES ('57', 'admin', '127.0.0.1', '2018-09-12 16:26:28', 'login', '执行成功');
INSERT INTO `log` VALUES ('58', 'admin', '127.0.0.1', '2018-09-12 16:26:33', 'logOut', '执行成功');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'delete');
INSERT INTO `permission` VALUES ('2', 'edit');
INSERT INTO `permission` VALUES ('3', 'list');
INSERT INTO `permission` VALUES ('4', 'UI1');
INSERT INTO `permission` VALUES ('5', 'UI2');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin');
INSERT INTO `role` VALUES ('2', 'manager');
INSERT INTO `role` VALUES ('3', 'user');
INSERT INTO `role` VALUES ('4', 'IOS_dev');
INSERT INTO `role` VALUES ('5', 'JAVA_dev');
INSERT INTO `role` VALUES ('6', 'PHP_dev');
INSERT INTO `role` VALUES ('7', 'UI_dev');
INSERT INTO `role` VALUES ('8', 'C++_dev');
INSERT INTO `role` VALUES ('9', 'C_dev');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(20) DEFAULT NULL,
  `permission_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');
INSERT INTO `role_permission` VALUES ('4', '2', '2');
INSERT INTO `role_permission` VALUES ('5', '2', '3');
INSERT INTO `role_permission` VALUES ('6', '3', '3');
INSERT INTO `role_permission` VALUES ('7', '4', '4');
INSERT INTO `role_permission` VALUES ('8', '4', '4');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `regTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123', '2016-12-26', 'male', '34343@qw.com', '1', '2017-03-18 12:53:39');
INSERT INTO `user` VALUES ('2', '张三', '123', '2017-03-21', 'male', '2132@123', '1', '2014-03-18 22:53:39');
INSERT INTO `user` VALUES ('3', '李四', '123', '2017-03-06', 'male', 'trytyt@wqew', '1', '2011-03-18 22:53:39');
INSERT INTO `user` VALUES ('4', '王五', '123', '2018-03-08', 'Female', '1232132@123.com', '1', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('5', '李白', '123', '2018-03-23', 'Female', '232434@123.com', '1', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('6', 'Andrew', '123', '2017-03-21', 'male', '2132@123', '1', '2014-03-18 22:53:39');
INSERT INTO `user` VALUES ('7', 'Lili', '123', '2017-03-06', 'male', 'trytyt@wqew', '0', '2011-03-18 22:53:39');
INSERT INTO `user` VALUES ('8', 'jack', '123', '2018-03-08', 'Female', '1232132@123.com', '0', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('9', 'lucy', '123', '2018-03-23', 'Female', '232434@123.com', '0', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('10', 'Mike', '123', '2017-03-21', 'male', '2132@123', '0', '2014-03-18 22:53:39');
INSERT INTO `user` VALUES ('11', 'Man', '123', '2017-03-06', 'male', 'trytyt@wqew', '1', '2011-03-18 22:53:39');
INSERT INTO `user` VALUES ('12', 'Chilton', '123', '2018-03-08', 'Female', '1232132@123.com', '0', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('13', 'Micheal', '123', '2018-03-23', 'Female', '232434@123.com', '0', '2018-03-18 22:53:39');
INSERT INTO `user` VALUES ('15', 'tom', '123adqwe', '2018-09-05', '女', '18986940541@163.com', '1', '2018-09-06 12:41:09');
INSERT INTO `user` VALUES ('16', 'adminwqewe', '123', '2018-09-07', '女', 'qweqe@123.com', '1', '2018-09-06 15:50:12');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) DEFAULT NULL,
  `role_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('198', '1', '1');
INSERT INTO `user_role` VALUES ('199', '1', '2');
INSERT INTO `user_role` VALUES ('200', '1', '3');
INSERT INTO `user_role` VALUES ('223', '3', '4');
INSERT INTO `user_role` VALUES ('224', '3', '3');
INSERT INTO `user_role` VALUES ('225', '3', '6');
INSERT INTO `user_role` VALUES ('226', '3', '7');
INSERT INTO `user_role` VALUES ('227', '3', '8');
INSERT INTO `user_role` VALUES ('228', '3', '9');
INSERT INTO `user_role` VALUES ('237', '2', '2');
INSERT INTO `user_role` VALUES ('238', '2', '3');
INSERT INTO `user_role` VALUES ('239', '2', '4');
INSERT INTO `user_role` VALUES ('240', '2', '5');
INSERT INTO `user_role` VALUES ('241', '4', '3');
INSERT INTO `user_role` VALUES ('242', '5', '3');
INSERT INTO `user_role` VALUES ('243', '6', '3');
INSERT INTO `user_role` VALUES ('244', '15', '3');
INSERT INTO `user_role` VALUES ('245', '16', '3');
