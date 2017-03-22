<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="full">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 自定义CSS -->
<link href="${pageContext.request.contextPath }/style/css/regist.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>

<script src="${pageContext.request.contextPath }/style/js/bootstrap.min.js"></script>
<title>注册页面</title>

</head>
<!-- ajax验证用户名可用 -->
<script type="text/javascript">
	var xmlHttp;
	function createXMLHttpRequest() {
		//表示当前浏览器不是ie,如ns,firefox  
		if (window.XMLHttpRequest) {
			xmlHttp = new XMLHttpRequest();
		} else {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	function validate(username) {
		if ((username.value).length != 0) {
			/* 创建Ajax核心对象XMLHttpRequest */
			createXMLHttpRequest();
			var url = "${pageContext.request.contextPath }/user/checkUser?username="
					+ (username.value) + "&time=" + new Date().getTime();
			//设置请求的方式为GET，请求的url，异步提交
			xmlHttp.open("GET", url, true);
			//将方法地址赋值给onreadystatechange属性
			xmlHttp.onreadystatechange = callback;
			xmlHttp.send(null);
		} else {
			document.getElementById("spanUsername").innerHTML = "";
		}
	}
	function callback() {
		//4表示有响应
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				var text = xmlHttp.responseText;
				if (text == "true") {
					document.getElementById("spanUsername").innerHTML = "用户名已被使用!";
					document.getElementById("username").focus();
				} else {
					document.getElementById("spanUsername").innerHTML = "恭喜！用户名可用！";
				}
			}
		}
	}
</script>
<body>
	<div class="container-fluid full">
		<form action="${pageContext.request.contextPath }/user/regist"
			class="form-horizontal" role="form" method="post">
			<h2>欢迎注册</h2>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">用户名</label>
				<div class="col-sm-9">
					<input name="username" type="text" id="username"
						placeholder="请输入用户名" class="form-control" autofocus
						onblur="validate(this)" /><span id="spanUsername"></span>
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">密码</label>
				<div class="col-sm-9">
					<input name="password" type="password" id="password"
						placeholder="Password" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-3 control-label">Email</label>
				<div class="col-sm-9">
					<input name="email" type="email" id="email" placeholder="Email"
						class="form-control">
				</div>
			</div>

			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">出生年月</label>
				<div class="col-sm-9">
					<input name="birth" type="date" id="birthDate" class="form-control">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-3">性别</label>
				<div class="col-sm-6">
					<div class="row">
						<div class="col-sm-6">
							<label class="radio-inline"> <input name="gender"
								type="radio" id="femaleRadio" value="Female">女
							</label>
						</div>
						<div class="col-sm-6">
							<label class="radio-inline"> <input name="gender"
								type="radio" id="maleRadio" value="Male">男
							</label>
						</div>

					</div>
				</div>
			</div>
			<!-- /.form-group -->

			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3"></div>
			</div>
			<!-- /.form-group -->
			<div class="form-group">
				<div class="col-sm-8 col-sm-offset-3">
					<button type="submit" class="btn btn-primary btn-block">立即注册</button>
				</div>
			</div>
		</form>
		<!-- /form -->
		<!-- <strong>© 2017 - Site Built By LuoXiao</strong> -->
	</div>
	<!-- ./container -->

	<nav class="navbar navbar-fixed-bottom" role="navigation">
	<div class="container-fluid">
		<p class="text-center">
			© 2017 - Site Built By <strong>LuoXiao</strong>
		</p>
	</div>
	</nav>
</body>
</html>