<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<html>
<head>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-default navbar-fixed-top"
					role="navigation">
				<div class="navbar-header">

					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">BLOG</a>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="toMainPage">首页</a></li>
						<li><a href="#">####</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">博客<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<c:if test="${sessionScope.loginUser != null }">
									<li><a href="toWriteBlog"
										class="glyphicon glyphicon-pencil">写博客</a></li>
								</c:if>
								<li><a href="#" class="glyphicon glyphicon-inbox"> ###</a>
								</li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<!-- 搜索框 -->
					<form class="navbar-form navbar-left" role="search"
						action="blogSearch">
						<div class="form-group">
							<input name="title" type="text" class="form-control"
								placeholder="请输入关键字" />
						</div>
						<button type="submit"
							class="btn btn-default glyphicon glyphicon-search">搜博客</button>
					</form>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">关于 </a></li>
						<c:if test="${loginUser == null }">
							<li><a data-toggle="modal" data-target="#loginModal" href="">登录/注册</a></li>
						</c:if>
						<c:if test="${loginUser != null }">
							<li class = "dropdown"><a href="">[ ${loginUser.username } ]</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			</nav>
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
						<form action="user/login" method="post"
							class="form col-md-12 center-block">
							<div class="form-group">
								<input name="username" type="text" class="form-control input-lg"
									placeholder="用户名">
							</div>
							<div class="form-group">
								<input name="password" type="password"
									class="form-control input-lg" placeholder="登录密码">
							</div>
							<div class="form-group">
								<button class="btn btn-primary btn-lg btn-block" type="submit">立刻登录</button>
								<span><a href="#">找回密码</a></span> <span><a
									href="user/register" class="pull-right">注册</a></span>
							</div>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

	</div>
	<%-- 

	<div class="container-fluid">
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">博客系统</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">首页</a></li>
				<li><a href="#">Link</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>

			<ul class="nav navbar-nav navbar-right">
				<li><a data-toggle="modal" data-target="#loginModal" href="">登录</a></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <shiro:user>
							<shiro:principal />
						</shiro:user>  <span class="caret"> </span>
				</a>

					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul></li>


				<!--  -->
			</ul>
		</div>



		<div id="loginModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close">&times;</button>
						<h1 class="text-center text-primary">欢迎登录</h1>
					</div>
					<div class="modal-body">
						<form action="user/login" method="post"
							class="form col-md-12 center-block">
							<div class="form-group">
								<input name="username" type="text" class="form-control input-lg"
									placeholder="用户名">
							</div>
							<div class="form-group">
								<input name="password" type="password"
									class="form-control input-lg" placeholder="登录密码">
							</div>
							<div class="form-group">
								<button class="btn btn-primary btn-lg btn-block" type="submit">立刻登录</button>
								<span><a href="#">找回密码</a></span> <span><a
									href="user/registPage" class="pull-right">注册</a></span>
							</div>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!-- slide start -->

		
	</nav>
	<div class = "row">
		asaaa
	</div>
	</div> --%>

	<%-- 	<shiro:user>
		<h3>
			登录身份[
			<shiro:principal />
			]
		</h3>
		<h2>可执行操作</h2>
		<a href="">Log out</a>
	</shiro:user>
	<a href="<%=request.getContextPath()%>/user/login">login</a>
	<a href="<%=request.getContextPath()%>/user/registPage">regist</a>
	<shiro:hasPermission name="resource:delete">
		<a href="">删除</a>
	</shiro:hasPermission>
	<shiro:hasPermission name="resource:edit">
		<a href="">修改</a>
	</shiro:hasPermission>
	<shiro:hasPermission name="resource:list">
		<a href="">查看</a>
	</shiro:hasPermission>
	<br> --%>

</body>
</html>