/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.16-log : Database - ssm
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE = '' */;

/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS */`ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm`;

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id`         INT(11)   NOT NULL AUTO_INCREMENT,
  `title`      VARCHAR(40)        DEFAULT NULL,
  `content`    LONGTEXT,
  `createTime` TIMESTAMP NULL     DEFAULT NULL,
  `author`     VARCHAR(20)        DEFAULT NULL,
  `user_id`    INT(11)            DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 52
  DEFAULT CHARSET = utf8;

/*Data for the table `blog` */

INSERT INTO `blog` (`id`, `title`, `content`, `createTime`, `author`, `user_id`)
VALUES (12, '123213', '   				 <p>请输入内容...</p>\r\n				', '2017-02-05 19:35:50', 'admin', 1),
  (13, 'HelloWorld', '   				 <p>请输入内容...</p>\r\n				<p>trytry同样trytry同样</p>', '2017-02-09 14:21:05', 'admin', 1),
  (14, '13123123', '   				 <p>请输入内容...</p>\r\n				<p>12312321321</p>', '2017-02-09 15:26:08', 'admin', 1),
  (15, '1231232132132321', '   				 <p>请输入内容...</p>\r\n				', '2017-02-09 16:45:05', 'admin', 1),
  (16, 'yuyuyuyu', '   				 <p>请输入内容...</p>\r\n				', '2017-02-09 16:45:15', 'admin', 1),
  (17, 'yuyuyuyu', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:20', 'admin', 1),
  (18, 'y21323232', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:26', 'admin', 1),
  (19, 'y2132323221321323', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:29', 'admin', 1),
  (20, '123ghgjhj', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:33', 'admin', 1),
  (21, 'ytuytu123', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:38', 'admin', 1),
  (22, 'ytuytu123', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:40', 'admin', 1),
  (23, '12321321321323', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:44', 'admin', 1),
  (24, 'uiuyiuyiuyi', '   				 <p>请输入内容...123213</p>\r\n				<p><br></p>', '2017-02-09 16:45:48', 'admin', 1),
  (25, '232323', '   				 <p>请输入内容...</p>\r\n				', '2017-02-16 15:54:15', 'admin', 1),
  (26, 'TestCode', '   				 <p>&nbsp;@RequestMapping(value&nbsp;=&nbsp;\"/user/login\",&nbsp;method&nbsp;=&nbsp;RequestMethod.POST)\r\n</p><p>	public&nbsp;String&nbsp;login(User&nbsp;user,&nbsp;HttpSession&nbsp;session,&nbsp;Model&nbsp;model)&nbsp;{\r\n</p><p>		UsernamePasswordToken&nbsp;token&nbsp;=&nbsp;new&nbsp;UsernamePasswordToken(\r\n</p><p>				user.getUsername(),&nbsp;user.getPassword());\r\n</p><p>		Subject&nbsp;subject&nbsp;=&nbsp;SecurityUtils.getSubject();\r\n</p><p>		try&nbsp;{\r\n</p><p>			subject.login(token);\r\n</p><p>			User&nbsp;loginUser&nbsp;=&nbsp;userService.selectByUsername(user.getUsername());\r\n</p><p>			session.setAttribute(\"loginUser\",&nbsp;loginUser);\r\n</p><p>			//&nbsp;System.out.println(loginUser);\r\n</p><p>			return&nbsp;\"/success\";\r\n</p><p>		}&nbsp;catch&nbsp;(Exception&nbsp;e)&nbsp;{\r\n</p><p>			model.addAttribute(\"errorMsg\",&nbsp;\"登录失败\");\r\n</p><p>			return&nbsp;\"redirect:/user/index\";\r\n</p><p>		}\r\n</p><p>	}</p>\r\n				<p><br></p>', '2017-02-16 21:40:26', 'admin', 1),
  (27, 'javaeretrt', '   				 <p>请输入内容...</p>\r\n				<p>retrtrtrtrt</p>', '2017-02-20 01:52:10', 'admin', 1),
  (28, 'AAAAAAAAAjava', '   				 <p>请输入内容...</p>\r\n				<p>retrtrtrtrt</p>', '2017-02-20 01:52:19', 'admin', 1),
  (29, '沃尔特java', '   				 <p>请输入内容...</p>\r\n				<p>retrtrtrtrt</p>', '2017-02-20 01:52:30', 'admin', 1),
  (30, '123', '   				 <p>请输入内容...</p>\r\n				<p>123</p>', '2017-02-20 02:00:48', 'admin', 1),
  (31, '123', '   				 <p>请输入内容...</p>\r\n				<p>123</p>', '2017-02-20 02:00:51', 'admin', 1),
  (32, '123', '   				 <p>请输入内容...</p>\r\n				<p>123</p>', '2017-02-20 02:00:53', 'admin', 1),
  (33, '11', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 02:06:48', 'admin', 1),
  (34, 'java从入门到精通', '   				 <p>请输入内容...</p>\r\n				<p><u>12321321321323</u></p><p><br></p>', '2017-02-20 19:10:50', 'admin', 1),
  (35, 'Mysql从入门到精通', '   				 <p>请输入内容...</p>\r\n				<p><u>12321321321323123123213</u></p><p><br></p>', '2017-02-20 19:11:11', 'admin', 1),
  (36, 'java基础知识', '   				 <p>请输入内容...</p>\r\n				<p><u>12321321321323123123213</u></p><p><br></p>', '2017-02-20 19:11:25', 'admin', 1),
  (37, 'mysql基础', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:12:07', 'admin', 1),
  (38, 'java从入门到放弃', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:12:52', 'admin', 1),
  (39, 'JS基础知识', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:16:05', 'admin', 1),
  (40, 'jane', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:16:20', 'admin', 1),
  (41, '1234', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:25:49', 'admin', 1),
  (42, '12345', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:25:52', 'admin', 1),
  (43, '123456', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:25:55', 'admin', 1),
  (44, '1234567', '   				 <p>请输入内容...</p>\r\n				', '2017-02-20 19:25:58', 'admin', 1), (45, '',
                                                                                                  '   				 <p>请输入内容...</p><p><br></p><pre style=\"max-width: 100%;\"><code class=\"java hljs\" codemark=\"1\"><span class=\"hljs-function\"><span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">void</span> <span class=\"hljs-title\">setName</span><span class=\"hljs-params\">(String username)</span></span>{\r\n       <span class=\"hljs-keyword\">this</span>.name=name;\r\n}</code></pre>\r\n				<p><br></p>',
                                                                                                  '2017-02-21 23:01:58',
                                                                                                  'admin', 1),
  (46, 'adfgfjavert', '   				 <p>请输入内容...</p>\r\n				', '2017-02-23 23:22:26', 'admin', 1),
  (47, '123213jav45t45', '   				 <p>请输入内容...</p>\r\n				', '2017-02-23 23:22:39', 'admin', 1),
  (48, '123213java45t45', '   				 <p>请输入内容...</p>\r\n				', '2017-02-23 23:22:45', 'admin', 1),
  (49, '富文本编辑器测试',
   '   				 <pre style=\"max-width:100%;overflow-x:auto;\"><code class=\"java hljs\" codemark=\"1\">@RequestMapping(\"/user/profile/userList\")\r\n	@ResponseBody\r\n	public ModelAndView userList(HttpSession session){\r\n		User loginUser = (User) session.getAttribute(\"loginUser\");\r\n		//System.out.println(loginUser);\r\n		ModelAndView mv = new ModelAndView();\r\n		mv.addObject(\"loginUser\",loginUser);\r\n		mv.setViewName(\"/user/profile/userList\");\r\n		return mv;\r\n</code></pre><h1>习近平：中国要变成一个强国，各方面都要强<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/0b/tootha_thumb.gif\"><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/c9/geili_thumb.gif\"></h1><font size=\"5\"><span>2月23日下午，习近平考察了北京新机场建设。北京新机场位于北京市南部，规划远期年客流吞吐量1亿人次、飞机起降<i><font face=\"Comic Sans MS\">量88万架次，已于2014年开工建设，2019年将建成并投入运营。</font></i></span></font><p><br></p>',
   '2017-02-25 22:01:29', 'admin', 1), (50, '',
                                        '   				 <div><h1>起点和方向<img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/0b/tootha_thumb.gif\" style=\"font-size: 14px;\"><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/6e/panda_thumb.gif\" style=\"font-size: 14px;\"></h1><blockquote><p>在接下来的两章中，我们将从项目背景一直讨论到关键技术的实践。这其中既会包括各种技术也会包括产品和交互的思考。</p></blockquote><p><ol><li><font color=\"#008080\">项目的背景是，公司业务迅速扩张，有大量对内的系统页面需要搭建。而前端人力是瓶颈，所以我们希望能以服务化的方式输出前端能力，让公司内所有非前端出身但有编程能力的人都能使用这种服务快速地开发出较高质量的页面。 从产品角度来说，它的目标已经很明确了</font>：</li></ol></p><ul><li><font size=\"5\"><u>使用人群：非前端的开发者</u></font></li><li><font size=\"5\">要提供的服务：能以中上等开发速度开发出中上等可维护性页面的集成开发环境(以下简称开发环境)</font></li></ul><p><font size=\"5\">有了这个目标，我们就可以开始设计产品形态了。</font></p><p>页面分为视图和逻辑两部分，在目前组件化的大背景下，视图基本上可以等同于组件树。首先，什么样的页面编辑方式学习成本最低同时最快速？<strike>当然是所见即所得，拖拽或者编辑树型结构的数据这两种方式都可以接受。实际测试中拖拽最容易上手，熟悉了快捷键的情况下则编辑组件树更快。</strike></p><p>接着，怎样让用户编写页面逻辑既能学习成本低，又能保障质量？学习成本低意味着概念要少，或者都是用户已知的概念。保障质量这个概念比较大，我们可以从开发的两个阶段来考虑：</p><ul><li>一是开发时最好有保障，例如前端开发时的 eslint 加上编辑器提示就能很好地提前避免一些低级错误。</li><li>二是在开发完之后，代码应该“有迹可循”，无论是排查问题，还是扩展需求，都要让用户在头脑里第一时间就知道应该怎样写逻辑，写在哪里。也就意味着概念要完善，职责分明。同时，工具层面也可以有些辅助功能，例如传统编辑器的变量搜索等。</li></ul></div><p><br></p>',
                                        '2017-03-03 14:44:11', 'admin', 1), (51, '富文本测试',
                                                                             '   				 <p>code测试</p><pre style=\"max-width: 100%;\"><code class=\"java hljs\" codemark=\"1\"><span class=\"hljs-comment\">/**\r\n	 * 查看登录用户的所博客\r\n	 * <span class=\"hljs-doctag\">@param</span> userId 当前登录用户Id\r\n	 * <span class=\"hljs-doctag\">@param</span> page 当前页码\r\n	 * <span class=\"hljs-doctag\">@param</span> rows 每页记录数量\r\n	 * <span class=\"hljs-doctag\">@return</span> page对象\r\n	 */</span>\r\n	<span class=\"hljs-meta\">@RequestMapping</span>(value=<span class=\"hljs-string\">\"/user/blog_list\"</span>,method=RequestMethod.GET)\r\n	<span class=\"hljs-function\"><span class=\"hljs-keyword\">public</span> ModelAndView <span class=\"hljs-title\">selectAllByUserId</span><span class=\"hljs-params\">(Integer userId,@RequestParam(required = <span class=\"hljs-keyword\">false</span>,defaultValue=<span class=\"hljs-string\">\"1\"</span>)</span>Integer page,@<span class=\"hljs-title\">RequestParam</span><span class=\"hljs-params\">(required = <span class=\"hljs-keyword\">false</span>,defaultValue=<span class=\"hljs-string\">\"5\"</span>)</span>Integer rows)</span>{\r\n		ModelAndView mv = <span class=\"hljs-keyword\">new</span> ModelAndView();\r\n		PageHelper.startPage(page, rows);\r\n		List&lt;Blog&gt; list = blogService.selectAllbyUserId(userId, page, rows);\r\n		PageInfo&lt;Blog&gt; p = <span class=\"hljs-keyword\">new</span> PageInfo&lt;Blog&gt;(list);\r\n		mv.addObject(<span class=\"hljs-string\">\"page\"</span>, p);\r\n		mv.addObject(<span class=\"hljs-string\">\"userId\"</span>, userId);\r\n		mv.setViewName(<span class=\"hljs-string\">\"user/blog_list\"</span>);\r\n		<span class=\"hljs-keyword\">return</span> mv;\r\n	}</code></pre><p>文本测试：</p><p><b><u>这样，你就定义了一个变量a，这个变量除了有x和y两个公有成员外，还有两个add和mul两个函数（公有方法）。但是这样的定义方法的缺点有2条：</u></b></p><p>1<font color=\"#00ffff\">.批量生成对象很不方便，如果你var b=a;那么你每次修改b的成员，都会同时改掉a的</font><font color=\"#000000\" style=\"background-color: rgb(255, 0, 0);\">成员，因为JavaScript的引用机制</font></p><p></p><blockquote><p>2.如果每次生成对象需要自定义一些成员，都要写出相应的赋值操作，增加代码行数。</p></blockquote><p><br></p>',
                                                                             '2017-03-05 01:38:50', '123', 3);

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id`              INT(20) NOT NULL AUTO_INCREMENT,
  `permission_name` VARCHAR(50)      DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8;

/*Data for the table `permission` */

INSERT INTO `permission` (`id`, `permission_name`)
VALUES (1, 'delete'), (2, 'edit'), (3, 'list'), (4, 'UI1'), (5, 'UI2');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id`        INT(20) NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(20)      DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 10
  DEFAULT CHARSET = utf8;

/*Data for the table `role` */

INSERT INTO `role` (`id`, `role_name`)
VALUES (1, 'admin'), (2, 'manager'), (3, 'user'), (4, 'IOS_dev'), (5, 'JAVA_dev'), (6, 'PHP_dev'), (7, 'UI_dev'),
  (8, 'C++_dev'), (9, 'C_dev');

/*Table structure for table `role_permission` */

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `id`            INT(20) NOT NULL AUTO_INCREMENT,
  `role_id`       INT(20)          DEFAULT NULL,
  `permission_id` INT(20)          DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 9
  DEFAULT CHARSET = utf8;

/*Data for the table `role_permission` */

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`)
VALUES (1, 1, 1), (2, 1, 2), (3, 1, 3), (4, 2, 2), (5, 2, 3), (6, 3, 3), (7, 4, 4), (8, 4, 4);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id`       INT(20)     NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(16) NOT NULL,
  `birth`    DATE                 DEFAULT NULL,
  `gender`   VARCHAR(10)          DEFAULT NULL,
  `email`    VARCHAR(40)          DEFAULT NULL,
  `status`   VARCHAR(10)          DEFAULT NULL,
  `regTime`  TIMESTAMP   NULL     DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 7
  DEFAULT CHARSET = utf8;

/*Data for the table `user` */

INSERT INTO `user` (`id`, `username`, `password`, `birth`, `gender`, `email`, `status`, `regTime`)
VALUES (1, 'admin', '123', '2016-12-26', 'male', '34343@qw.com', '1', '2017-03-18 12:53:39'),
  (2, '张三', '123', '2017-03-21', 'male', '2132@123', '1', '2014-03-18 22:53:39'),
  (3, '李四', '123', '2017-03-06', 'male', 'trytyt@wqew', '1', '2011-03-18 22:53:39'),
  (4, '王五', '123', '2018-03-08', 'Female', '1232132@123.com', '1', '2018-03-18 22:53:39'),
  (5, '李白', '123', '2018-03-23', 'Female', '232434@123.com', '1', '2018-03-18 22:53:39'),
  (6, 'Andrew', '123', '2017-03-21', 'male', '2132@123', '1', '2014-03-18 22:53:39'),
  (7, 'Lili', '123', '2017-03-06', 'male', 'trytyt@wqew', '1', '2011-03-18 22:53:39'),
  (8, 'jack', '123', '2018-03-08', 'Female', '1232132@123.com', '1', '2018-03-18 22:53:39'),
  (9, 'lucy', '123', '2018-03-23', 'Female', '232434@123.com', '1', '2018-03-18 22:53:39'),
  (10, 'Mike', '123', '2017-03-21', 'male', '2132@123', '1', '2014-03-18 22:53:39'),
  (11, 'Man', '123', '2017-03-06', 'male', 'trytyt@wqew', '1', '2011-03-18 22:53:39'),
  (12, 'Chilton', '123', '2018-03-08', 'Female', '1232132@123.com', '1', '2018-03-18 22:53:39'),
  (13, 'Micheal', '123', '2018-03-23', 'Female', '232434@123.com', '1', '2018-03-18 22:53:39'),
  (14, 'Jess', '123', '2018-03-02', 'Female', '1232132@123.com', '1', '2018-03-18 22:53:39');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id`      INT(20) NOT NULL AUTO_INCREMENT,
  `user_id` INT(20)          DEFAULT NULL,
  `role_id` INT(20)          DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 244
  DEFAULT CHARSET = utf8;

/*Data for the table `user_role` */

INSERT INTO `user_role` (`id`, `user_id`, `role_id`)
VALUES (198, 1, 1), (199, 1, 2), (200, 1, 3), (223, 3, 4), (224, 3, 5), (225, 3, 6), (226, 3, 7), (227, 3, 8),
  (228, 3, 9), (237, 2, 2), (238, 2, 3), (239, 2, 4), (240, 2, 5), (241, 4, 3), (242, 5, 3), (243, 6, 3);

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;
