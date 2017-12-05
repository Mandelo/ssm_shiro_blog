<%--
  Created by IntelliJ IDEA.
  User: loshower
  Date: 2017-12-04
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>quickSearch</title>
</head>
<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
    /*reset*/
    html, body, p, h1, h2, h3, h4, h5, h6, form, input, textarea, select, button, fieldset, legend, img, ul, ol, li, dl, dt, dd, th, td, pre, blockquote {
        margin: 0;
        padding: 0;
    }

    .suggest-search{
        display: none;
    }

    li{
        list-style-type:none;
        height: 20px;
        font-size: 12px;
        padding-top: 2px;
        cursor: default;
        padding-left: 5px;;
    }

    .li-hover{
        background-color: #0e9aef;
    }
</style>
<body>
    <div class="top-wrap" style="width: 100%;height: 30px;">
        <a href="index" class="btn btn-primary" role="button">返回</a>
    </div>
    <div class="center-wrap" style="width: 100%;height: 200px;margin-top: 100px;">
        <div class="center" style="width: 400px;;margin-left: 35%;height: 200px;">
            <div class="" style="width: 100%;height: 170px;">

            </div>
            <div class="search" style="width: 100%;height: 150px;">
                <input style="width: 80%;height: 30px;float: left;padding-left: 5px;" type="text" id="keyword" placeholder="请输入关键字,如'java'">
                <button style="width: 20%;height: 30px;float: left;cursor: default">search</button>
                <div class="suggest-search" id="suggest-search" style="width: 318px;height:auto;float: left;border: 1px solid #9F9F9F;background-color: #FFFFFF">
                    <ul>
                    </ul>
                </div>

            </div>
        </div>
    </div>

<script>
    $(document).ready(function(){
        var result;
        var keyWord;
        var finalRes = [];
        var suggestWrap =  $("#suggest-search");
        $("#keyword").bind('input propertychange',function(){
            var val = $(this).val();
            val = val.trim();
            if(val == ""){
              suggestWrap.hide();
            }else{
                $.ajax({
                    type:"GET",
                    url:"searchBlog",
                    data:{
                        "keyword":val
                    },
                    async:true,
                    success:function setContent(data){
                        var li;
                        var tmpFrag = document.createDocumentFragment();
                        suggestWrap.find('ul').html('');
                        for(var i=0;i < data.length;i++){
                            li = document.createElement('LI');
                            li.innerHTML = data[i].title;
                            tmpFrag.appendChild(li);
                            suggestWrap.show();
                        }
                        suggestWrap.find('ul').append(tmpFrag);
                        /*悬浮样式*/
                        suggestWrap.find('li').hover(function(){
                            suggestWrap.find('li').removeClass('li-hover');
                            $(this).addClass('li-hover');
                        })
                        /*点击li选取结果*/
                        suggestWrap.find("li").click(function(){
                            var sr = $(this).html();
                            $("#keyword").val(sr);
                            suggestWrap.hide();
                        })
                    }
                })
            }
        })

    })

    function search(){

    }
</script>
</body>
</html>
