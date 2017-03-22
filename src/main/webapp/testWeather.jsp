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
	<script type="text/javascript">
		$(document).ready(function(){
			$.ajax({
				url:"https://api.seniverse.com/v3/weather/now.json?key=kbs4fodp4i701myq&location=wuhan&language=zh-Hans&unit=c",
				method:"GET",
				async:true,
				success:function(data){
					alert(data.results);
				}
			})
		})
	</script>

</body>
</html>