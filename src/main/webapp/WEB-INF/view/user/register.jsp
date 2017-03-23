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
<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>

<title>注册页面</title>

</head>
<!-- ajax验证用户名可用 -->
<%-- var url = "${pageContext.request.contextPath }/user/checkUser?username="
					+ (username.value) + "&time=" + new Date().getTime(); --%>
<script type="text/javascript">
	function validate() {
		var username = $("#username").val();
		var password = $("#password").val();
		var email = $("#email").val();
		var birth = $("#birthDate").val();
		var gender = $('input:radio:checked').val();
		if (username == "") {
			$("#spanUsername")
					.html(
							"<b style='color:red;font-size:15px;margin-top:auto;'>用户名不能为空！</b>");
			$("#username").focus();
			return;
		} else {
			validateUsername();
		}
		if (password == "") {
			$("#spanPassword")
					.html(
							"<b style='color:red;font-size:15px;margin-top:auto;'>密码不能为空！</b>");
			$("#password").focus();
			return;
		} else {
			$("#spanPassword").html("");
		}
		if (email == "") {
			$("#spanEmail")
					.html(
							"<b style='color:red;font-size:15px;margin-top:auto;'>email不能为空！</b>");
			$("#email").focus();
			return;
		} else {
			$("#spanEmail").html("");
		}

		if (birth == "") {
			$("#spanBirth")
					.html(
							"<b style='color:red;font-size:15px;margin-top:auto;'>年月不能为空！</b>");
			$("#birthDate").focus();
			return;
		} else {
			$("#spanBirth").html("");
		}
		$("#form1").submit();

	}
	/* 检查用户名是否可用 */
	function validateUsername() {
		$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath }/user/checkUser?username="
							+ (username.value)
							+ "&time="
							+ new Date().getTime(),
					async : true,
					success : function(res) {
						if (res == "true") {
							$("#spanUsername")
									.html(
											"<b style='color:red;font-size:15px;margin:5px auto;text-align:left'>用户名已被使用！</b>");
							$("#username").focus();
							return;
						} else {
							$("#spanUsername").html("");
						}
					}
				})
	}
</script>
<body>
	<div class="container-fluid full">
		<form action="${pageContext.request.contextPath }/user/regist"
			class="form-horizontal" role="form" method="post" id="form1">
			<h2>欢迎注册</h2>
			<div class="form-group">
				<label for="firstName" class="col-sm-3 control-label">用户名</label>
				<div class="col-sm-5">
					<input name="username" type="text" id="username" maxlength="10"
						placeholder="请输入用户名" class="input form-control" autofocus />
				</div>
				<label class="col-sm-3 control-label" id="spanUsername"></label>
			</div>

			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">密码</label>
				<div class="col-sm-5">
					<input name="password" type="password" id="password" maxlength="15"
						placeholder="请输入密码" class="input form-control">
				</div>

				<label class="col-sm-3 control-label" id="spanPassword"></label>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-3 control-label">Email</label>
				<div class="col-sm-5">
					<input name="email" type="email" id="email" placeholder="Email"
						class="form-control">
				</div>
				<label class="col-sm-3 control-label" id="spanEmail"></label>
			</div>

			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">出生年月</label>
				<div class="col-sm-5">
					<input name="birth" type="date" id="birthDate" class="form-control">
				</div>
				<label class="col-sm-3 control-label" id="spanBirth"></label>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-3">性别</label>
				<div class="col-sm-6">
					<div class="row">
						<div class="col-sm-6">
							<label class="radio-inline"> <input name="gender"
								class="gender" type="radio" id="femaleRadio" value="Female"
								checked=true>女
							</label>
						</div>
						<div class="col-sm-6">
							<label class="radio-inline"> <input name="gender"
								class="gender" type="radio" id="maleRadio" value="Male">男
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
					<button type="button" id="submit1"
						class="btn btn-primary btn-block" onclick="validate()">立即注册</button>
				</div>
			</div>
		</form>
		<!-- /form -->
		<!-- <strong>© 2017 - Site Built By LuoXiao</strong> -->
	</div>
</body>
</html>