<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap-theme.min.css">
<script
	src="${pageContext.request.contextPath }/style/js/bootstrap.min.js"></script>
<!--引入wangEditor.css-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/style/wangEditor/css/wangEditor.min.css">
<!--引入jquery和wangEditor.js-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/style/wangEditor/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/style/wangEditor/js/wangEditor.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>写博客</title>
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath }/index">我的博客</a>
		</div>
		<div>
			<!--向左对齐-->
		</div>
	</div>
	</nav>
	<form class="form-horizontal"
		action="${pageContext.request.contextPath }/user/submitBlog"
		method="post" style="margin-top: 250px">
		<div class="form-group">
			<div class="col-md-3"></div>
			<label for="inputTitle" class="control-label" id="title" >(标题推荐20字以内)</label>
			<div class="col-md-5 text-left">
				<input type="text" class="form-control" name="title" size="20" maxlength="20">
			</div>
		</div>

		<div class="form-group">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<textarea id="textarea1" name="content" rows="15" maxlength="1000">
   				 <p>请输入内容...</p>
				</textarea>
			</div>
			<div class="col-md-3"></div>
		</div>

		<div class="form-group">
			<div class="col-md-5"></div>
			<div class="col-md-2">
				<button type="submit" class="btn btn-primary"
					style="margin-top: 20px;">提交博客</button>
			</div>
		</div>
	</form>
	<!--这里引用jquery和wangEditor.js-->
	<script type="text/javascript">
		var editor = new wangEditor('textarea1');
		editor.create();
	</script>
</body>
</html>