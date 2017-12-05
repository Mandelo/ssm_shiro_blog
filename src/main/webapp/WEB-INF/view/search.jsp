<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- 自定义css -->
<link href="${pageContext.request.contextPath }/style/css/search.css"
	rel="stylesheet">



<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
	$(document).ready(
			function() {
				/* 输入框失去焦点，清除提示 */
				/*  $(".input").blur(function keywordBlur(){
					clearContent();
				}); 延时失去焦点事件*/
				$(".input").blur(function() {
					setTimeout(function() {
						clearContent();
					}, 200)
				})
				/* 输入框值变化 */
				$("#keyword").bind(
						'input propertychange',
						function() {
							var val = $(this).val();
							val = $.trim(val);
							if (val == "") {
								clearContent();
								return;
							}
							if (val != "") {
								$.ajax({
									type : "GET",
									url : "searchBlog",
									data : {
										"keyword" : val
									},
									async : true,
									success : function setContent(data) {
										/* 显示前删除原来节点 */
										clearContent();
										var size = data.length;
										//最多提示五条信息
										if (size >= 5) {
											size = 5;
										}
										console.log(data);
										for (var i = 0; i < size; i++) {
											if (data != "") {
												var nextNode = data[i]['title']
											}
											;
											var tr = document
													.createElement("tr");
											var td = document
													.createElement("td");
											//实现点击选取
											td.onclick = function() {
												var sel = $(this).text();
												$('.input').val(sel);
												setView();
											};
											var text = document
													.createTextNode(nextNode);
											td.appendChild(text);
											tr.appendChild(td);
											document.getElementById(
													"content_table_body")
													.appendChild(tr);
										}
									}
								})
							}
						})
			});

	/* 清空之前的节点 */
	function clearContent() {
		var contentTableBody = document.getElementById("content_table_body");
		var childs = contentTableBody.childNodes;
		var size = contentTableBody.childNodes.length;
		for (var i = 0; i < size; i++) {
			contentTableBody.removeChild(contentTableBody.lastChild);
		}
		document.getElementById("popDiv").style.border = "0";
	}
</script>
<body>
	<!-- <a href=c"searchBlog?keyword=123">test sql</a> -->
	<div class="topbody">
		<ul class="toplist">
			<li><a href="index"> &lt;&lt;返回首页</a></li>
		</ul>
	</div>
	<!-- logo+搜索框 -->
	<div class="total">
		<!--图片-->
		<div class="pic">
			<img src="${pageContext.request.contextPath }/style/pics/google.jpg" />
		</div>
		<!-- 搜索框 -->
		<div class="search">
			<!--  <form action="" method="post"> -->
			<input name="keyword" type="text" class="input" id="keyword"
				placeholder="请输入关键字,如‘JAVA’ ‘123’"> <input class="button"
				type="submit" value="搜索博客">
			<!--内容展示的部分-->
			<div id="popDiv">
				<table id="content_table" border="0" cellspacing="0" cellpadding="0"
					style="border: black 1px solid;">
					<tbody id="content_table_body">
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>