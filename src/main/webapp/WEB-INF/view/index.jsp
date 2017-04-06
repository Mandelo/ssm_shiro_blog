<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>

<script
	src="${pageContext.request.contextPath }/style/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<style type="text/css">
body {
	background-color: #f5f5f5;
}

#contents {
	background-color: #FFF;
	padding-left: 20px;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-inverse navbar-fixed-top"
					role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index">Luoxiao's BLOG</a>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class=""><a href="index" class="glyphicon glyphicon-home">首页</a></li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle glyphicon glyphicon-inbox"
							data-toggle="dropdown">博客中心<strong class="caret"></strong></a> <c:if
								test="${sessionScope.loginUser != null }">
								<ul class="dropdown-menu">
									<li><a href="user/toAddBlog"
										class="glyphicon glyphicon-pencil"> 写博客</a></li>
									<li><a
										href="${pageContext.request.contextPath }/user/blog_list?userId=${loginUser.id}"
										class="glyphicon glyphicon-inbox"> 我的博客</a></li>
								</ul>
								<!-- 进入搜索页面 -->
							</c:if>
						<li><a href="search" class="glyphicon glyphicon-search">搜索智能提示</a></li>
						<!-- 博客展示 -->
						<li><a href="user/blogExample"
							class="glyphicon glyphicon-file">博客展示</a></li>
						<li><a href="#" style="margin-top: 2px;" id="w"></a></li>
						
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${loginUser != null }">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">[${loginUser.username }]<strong
									class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="user/logOut"
										class="glyphicon glyphicon-inbox"> 退出帐号</a></li>
										<shiro:hasRole name="admin"><li><a href="${pageContext.request.contextPath }/cms/index" class="glyphicon glyphicon-th-large"> 后台管理</a></li></shiro:hasRole>
								</ul></li>
						</c:if>
						<li><a href="#">关于 </a></li>
						<c:if test="${loginUser == null }">
							<li><a data-toggle="modal" data-target="#loginModal" href=""><span
									class="glyphicon glyphicon-log-in"></span> 登录</a></li>
							<li><a href="user/register"><span
									class="glyphicon glyphicon-user"></span> 注册 </a></li>
						</c:if>

					</ul>
				</div>
			</div>
			</nav>
		</div>

		<br> <br> <br> <br> <br> <br>
	</div>
	<!-- Content -->
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6" id=contents>
			<h1>关于DEMO</h1>
			<h2>简介</h2>
			<h2>快速使用</h2>
			<ol>
				<li>导入sql文件，修改数据库文件，update项目</li>
				<li>用户名：admin 密码：123</li>
			</ol>
			<h2>内置功能</h2>
			<ol>
				<li>用户登录校验以及注册(默认注册用户角色为【user】)。</li>
				<li>登录用户对博客查看管理等。</li>
				<li>仿google搜索智能提示。</li>
				<li>富文本博客提交</li>
				<li>用户管理：登录用户只有拥有角色为【admin】的用户才能进入管理页面</li>
				<li>角色管理：实现对用户-角色的查看，删除，分配等操作。</li>
			</ol>
			<h2>技术选型</h2>
			<p>1.后端</p>
			<ul>
				<li>核心框架：Spring Framework 4.2.7</li>
				<li>安全框架：Apache Shiro 1.2.4</li>
				<li>视图框架：Spring MVC 4.2.7</li>
				<li>持久层框架：Mybatis 3.4.0</li>
				<li>日志管理：SLF4J 、Log4j</li>
				<li>分页插件：PapeHelper</li>
			</ul>
			<P>2.前端</P>
			<ul>
				<li>布局：DIV+CSS bootstrap</li>
				<li>字体：fonts-awesome</li>
				<li>登录框：bootstrap Modal</li>
				<li>JS框架：jQuery min</li>
				<li>日历控件：自定义js</li>
				<li>实时天气：新浪天气api</li>
				<li>富文本编辑器：WangEditor</li>
			</ul>
			<P>3.开发平台</P>
			<ul>
				<li>开发环境： jdk1.8 + tomcat8</li>
				<li>语言：java jsp</li>
				<li>开发环境：Java EE、Eclipse、Maven、webStrom</li>
			</ul>
		</div>
	</div>
	<!--   登录弹窗 -->
	<div id="loginModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h1 class="text-center text-primary">欢迎登录</h1>
				</div>
				<div class="modal-body">
					<form id="login1" action="user/login" method="post"
						class="form col-md-12 center-block">
						<div class="form-group">
							<input id="username" name="username" type="text"
								class="form-control input-lg" placeholder="用户名">
						</div>
						<div class="form-group">
							<input id="password" name="password" type="password"
								class="form-control input-lg" placeholder="登录密码">
						</div>
						<div class="form-group">
							<div id="loginInfo"></div>
						</div>
						<div class="form-group">
							<button id="submit1" class="btn btn-primary btn-lg btn-block"
								type="button" onclick="validatePassword()">立刻登录</button>
						</div>
					</form>
				</div>


				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function validatePassword() {
			var username = $("#username").val();
			var password = $("#password").val();
			/* 判断用户名密码是否为空 */
			if (username == "") {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>用户名不能为空！</b>");
				$("#username").focus();
				return;
			}
			if (password == "") {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>密码不能为空！</b>");
				$("#password").focus();
				return;
			}
			/* ajax验证密码 */
			$
					.ajax({
						type : "GET",
						url : "validatePassword",
						data : {
							"username" : username
						},
						async : true,
						success : function(data) {
							/* alert(password==data); */
							if (password == data) {
								$("#login1").submit();
							} else {
								$("#loginInfo")
										.html(
												"<b style='color:red;font-size:15px;'>用户名或密码错误！</b>");
							}
							/* alert(data); */
						}
					})
		}
		/* Enter提交 */
		$(document).ready(function() {
			$("body").keydown(function(e) {
				var curKey = e.which;
				if (curKey == 13) {
					/* 这里一定不能为“sunbmit”详情见官方api文档 */
					$("#submit1").click();
					return false;
				}
			});
		});

		/* 天气预报 */
		$
				.getScript(
						'http://php.weather.sina.com.cn/iframe/index/w_cl.php?code=js&day=0&city=&dfc=1&charset=utf-8',
						function(a) {
							var s = "", r = "", q = "";
							for (s in window.SWther.w) {
								q = SWther.w[s][0];
								r = {
									city : s,
									date : SWther.add.now.split(" ")[0] || "",
									day_weather : q.s1,
									night_weather : q.s2,
									day_temp : q.t1,
									night_temp : q.t2,
									day_wind : q.p1,
									night_wind : q.p2
								}, $("#w").html(
										"[" + r.city + "]" + " " + q.s1 + " "
												+ q.t1 + "℃");
							}
						});
	</script>
</body>
</html>