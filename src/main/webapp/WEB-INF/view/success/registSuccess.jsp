<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册成功！</title>
</head>
<body>
	<script>
		var t = 5;//设定跳转的时间 
		setInterval("refer()", 1000); //启动1秒定时 
		function refer() {
			if (t == 0) {
				location = "${pageContext.request.contextPath}/index"; //#设定跳转的链接地址 
			}
			document.getElementById('show').innerHTML = "注册成功！" + t + "秒后自动跳转到首页"; // 显示倒计时 
			t--; // 计数器递减 
			//本文转自： 
		}
	</script>
	<span id="show"></span>
</body>
</html>