<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>
	查询id = ${user.id }，结果：
	<table border="1px">
		<thead>
			<tr>
				<td>id</td>
				<td>username</td>
				<td>password</td>
				<td>age</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${user.id }</td>
				<td>${user.username }</td>
				<td>${user.password }</td>
				<td>${user.age }</td>
			</tr>
		</tbody>
	</table>
</body>
</html>