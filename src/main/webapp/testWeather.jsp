<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="w">
	<script type="text/javascript">
		$.getScript('http://php.weather.sina.com.cn/iframe/index/w_cl.php?code=js&day=0&city=&dfc=1&charset=utf-8',
						function(a) {
							var s = "", r = "", q = "";
							for (s in window.SWther.w) {
								q = SWther.w[s][0];
								r = {
									city : s,
									date : SWther.add.now.split(" ")[0] || "",
									day_weather : q.s1,
									night_weather : q.s2,
									day_temp : q.t1,
									night_temp : q.t2,
									day_wind : q.p1,
									night_wind : q.p2
								}, $("#w").html("["+ r.city+"]"+"白天："+q.s1 + " "+q.t1 +"℃");
							}
						});
	</script>
	</div>
</body>
</html>