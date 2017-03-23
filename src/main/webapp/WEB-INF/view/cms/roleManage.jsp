<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
table {
	margin: 150px auto;
	valign: middle;
	align: center;
	width: 500px;
	height: 400px;
}

table tr td {
	border: 2px solid;
}

table td {
	text-align: center;
}

#select1 {
	text-align: center;
	font-size: 15px;
	width: 200px;
	height: 100px;
}
</style>
</head>
<body>
	<!-- 导航栏 -->
	<nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand">我的博客</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath }/index">&lt;&lt;返回首页</a></li>
				<!-- <li><a href="#">SVN</a></li> -->
			</ul>
			<!--向右对齐-->
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"> 当前用户： [<shiro:principal />]
				</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!-- 导航栏结束 -->
	<div class="container">
		<form action="updateUserRole" method="POST">
			<table>
				<tr>
					<td colspan="2" class="text-center"><h2>用户角色管理</h2></td>
				</tr>
				<tr>
					<td class="text-center">UID</td>
					<td id="uid"></td>
				</tr>
				<tr>
					<td>用户名</td>
					<td id="username" style="width: 400px;"></td>
				</tr>
				<tr>
					<td>角色</td>
					<td id="role"><select id="select1" multiple="multiple"
						size="4">
							<option value="admin">admin</option>
							<option value="manager">manager</option>
							<option value="user">user</option>
							<option value="IOS_dev">IOS_dev</option>
							<option value="JAVA_dev">JAVA_dev</option>
							<option value="PHP_dev">PHP_dev</option>
							<option value="UI_dev">UI_dev</option>
							<option value="C++_dev">C++_dev</option>
							<option value="C_dev">C_dev</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2"><button class="btn btn-primary" type="button"
							value="保存" onclick="update();">保存</button> <!-- 返回并刷新 -->
						<button type="button" value="返回" class="btn btn-default"
							onclick="javascript:location.href=document.referrer; ">返回</button></td>

				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			var url = location.search;
			if (url.indexOf("?") != -1) { //判断是否有参数
				var str = url.substr(1); //从第一个字符开始 因为第0个是?号 获取所有除问号的所有符串
				strs = str.split("="); //用等号进行分隔 （因为知道只有一个参数 所以直接用等号进分隔 如果有多个参数 要用&号分隔 再用等号进行分隔）
				var userId = strs[1];
				//alert(userId);
				$.ajax({
					url : "getRoles",
					type : "GET",
					data : {
						"userId" : userId
					},
					async : true,
					success : function(res) {
						$("#select1").focus();
						loadData(res);
					}
				})
			}
		})

		/* 填充返回数据 */
		function loadData(res) {
			var url = location.search;
			if (url.indexOf("?") != -1) {
				var str = url.substr(1);
				strs = str.split("=");
				var userId = strs[1];
				var username = res.username;
				var role = res.roles;
				$("#uid").text(userId);
				$("#username").text(username);
				$("option").each(function() {
					for (var i = 0; i < role.length; i++) {
						if (($(this).val()) == role[i]) {
							$(this).attr('selected', true);
						}
					}
				})
			}
		}

		/*点击保存按钮更新数据  */
		function update() {
			var url = location.search;
			if (url.indexOf("?") != -1) {
				var str = url.substr(1);
				strs = str.split("=");
				var userId = strs[1];
				var roles = [];
				$("#select1 option:selected").each(function() {
					roles.push($(this).text());
				});
				var roleStr = roles.join(",");
				/* alert(roleStr); */
				$.ajax({
					url : "updateRoles",
					method : "GET",
					data : {
						"userId" : userId,
						"roleStr" : roleStr,
					},
					async : true,
					success : function(data) {
						loadData(data);
						$("#select1").focus();
					}
				})
			}
		}
	</script>
</body>
</html>