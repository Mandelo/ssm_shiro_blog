<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 登录成功自动跳转 -->
	<script type="text/javascript">
		var t = 5;//设定跳转的时间 
		setInterval("refer()", 1000); //启动1秒定时 
		function refer() {
			if (t == 0) {
				location = "${pageContext.request.contextPath }/index"; //#设定跳转的链接地址 
			}
			document.getElementById('show').innerHTML = "<p style='text-align:center;font-size:20px'>登录成功！"
					+ t
					+ "秒后自动跳转到首页！<br/>或直接点击<a href='${pageContext.request.contextPath }/index'>这里</a></p>"; // 显示倒计时 
			t--; // 计数器递减 
			//本文转自： 
		}
	</script>

	<span id="show"></span>
</body>
</html>