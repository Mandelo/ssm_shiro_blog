<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 自定义CSS -->
<link href="${pageContext.request.contextPath }/style/css/blog_list.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>

<script
	src="${pageContext.request.contextPath }/style/js/bootstrap.min.js"></script>

<title>博客管理系统</title>
</head>
<body>
	<!-- 导航条 -->
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath }/index">我的博客</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath }/index">返回首页</a></li>
				<li><a href="#">###</a></li>
			</ul>
		</div>
		<ul class="nav navbar-nav navbar-right">
				<li><a href="#"> 当前用户： [<shiro:principal />]
				</a></li>
			</ul>
	</div>
	</nav>

	<!-- 标题 -->
	<div class="container">
		<h1>我的博客列表</h1>
	</div>
	<!-- table -->
	<div class="container">
		<div class=""></div>
		<c:if test="${page != null && page.getTotal() > 0 }">
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th data-field="index" data-formatter="indexFormatter">编号</th>
						<th>标题</th>
						<th>创建时间</th>
						<th>作者</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${page.list}" var="blog">
						<tr>
							<td class="blogId">${blog.id}</td>
							<td><a
								href="
								${pageContext.request.contextPath }/user/blogContents?id=${blog.id }"
								class="BContent">《 ${blog.title } 》</a></td>
							<td><fmt:formatDate value="${blog.createTime }"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td>${blog.author }</td>
							<td><a class="	glyphicon glyphicon-remove"
								href="${pageContext.request.contextPath }/delete?id=${blog.id }" class="btn btn-danger" role="button">删除</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>


		<c:if test="${page != null && page.getTotal() > 0 }">
			<nav style="text-align: center">
			<ul class="pagination pagination-lg">
				<li><a>共 ${page.total } 条记录</a></li>
				<li><a>当前第 ${page.pageNum  } 页</a></li>
				<c:if test="${page.pageNum!= 1 }">
					<li><a href="?userId=${userId }&page=${page.pageNum -1}">上一页</a></li>
				</c:if>
				<c:if test="${page.pageNum < page.pages }">
					<li><a href="?userId=${userId }&page=${page.pageNum +1}">下一页</a></li>
				</c:if>
				<li><a>共 ${page.pages} 页</a></li>
			</ul>
			</nav>
		</c:if>

	</div>
</body>
</html>