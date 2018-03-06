<%--
  Created by IntelliJ IDEA.
  User: loshower
  Date: 2017-12-08
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>userList</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/style/css/userList.css">
<link rel="stylesheet"  href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/style/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/style/datetimepicker/css/bootstrap-datetimepicker.min.css">
<script src="${pageContext.request.contextPath}/style/js/jquery-1.9.0.min.js"></script>
<script src="${pageContext.request.contextPath }/style/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/style/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/style/datetimepicker/js/locales/bootstrap-datetimepicker.ru.js" charset="UTF-8"></script>
<script src="${pageContext.request.contextPath}/style/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script>
    $(function () {
        $("#date1").datetimepicker({
            format: 'yyyy-MM-dd',
            language: 'zh-CN',
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            forceParse: 0
        })
    });

</script>
<body>
<div class="search-wrap">
   <div class="row">
       <div class="col-md-2"></div>
       <div class="col-md-2">
           <input type="text" class="form-control" id="exampleInputName2" placeholder="请输入用户名">
       </div>
       <div class="col-md-2">
           <div class="form-group">
               <div class='input-group date' id='date1'>
                   <input type='text' class="form-control" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
               </div>
           </div>
       </div>
       <div class="col-md-2"></div>
       <div class="col-md-2"></div>
       <div class="col-md-2"></div>
   </div>
</div>

</body>
</html>
