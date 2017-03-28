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

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>

<script
	src="${pageContext.request.contextPath }/style/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.table th, .table td {
	text-align: center;
	vertical-align: middle !important;
}

.glyphicon {
	text-align: right;
}

.text {
	bottom: 200px;
	position: absolute;
}
</style>
</head>
<body>
	<form action="" method="POST" id="_form">
		<input type="hidden" id="_method" name="_method" />
	</form>
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
		<div class="row">
			<div class="col-md-2"></div>
			<div class='col-me-8'>
				<table class='table table-bordered table-hover'>
					<thead>
						<td colspan="4"><h2>用户列表</h2></td>
					</thead>
					<tr>
						<th>UID</th>
						<th>用户名</th>
						<th>拥有角色</th>
						<th>操作</th>
					</tr>
					<c:forEach var="urt" items="${urList }">
						<tr>
							<td class="uid">${urt.id }</td>
							<td>${urt.username }</td>
							<td>${urt.roles }</td>
							<td>
								<%-- <a href="${pageContext.request.contextPath }/deleteUser?id=${urt.id }"
								class="glyphicon glyphicon-remove">删除</a> --%> <a href="${pageContext.request.contextPath }/deleteUser?id=${urt.id }"
								class="glyphicon glyphicon-remove">删除</a> 
								<input type="hidden" value=" ${urt.username  } " />
								<a href="${pageContext.request.contextPath }/roleManage?userId=${urt.id }"
								class="glyphicon glyphicon-pencil">修改</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$(".glyphicon-remove").click(function() {
				var label = $(this).next(":hidden").val();
				var flag = confirm("确定要删除名为" + label + "的用户吗?");
				if (flag) {
					var url = $(this).attr("href");
					$("#_form").attr("action", url);
					$("#_method").val("GET");
					$("#_form").submit();
				}
				return false;
			});
		})
	</script>
</body>
</html>