<%--
  Created by IntelliJ IDEA.
  User: loshower
  Date: 2017-12-08
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Blog Management Index</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/css/blogManageIndex.css"/>
    <script src="${pageContext.request.contextPath}/style/js/schedule.js" type="application/javascript"></script>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    ul{
        list-style: none;
    }
    #schedule-box{
        width: 80%;
        margin-left: 10%;
        padding: 15px 20px;
        font-size: 13px;
    }
    .schedule-hd{
        display: flex;
        justify-content: space-between;
        padding: 0 15px;
    }
    .today{
        flex: 1;
        text-align: center;
    }
    .ul-box{
        overflow: hidden;
    }
    .ul-box > li{
        float: left;
        width: 14.28%;
        text-align: center;
        padding: 5px 0;
    }
    .other-month{
        color: #999999;
    }
    .current-month{
        color: #333333;
    }
    .today-style{
        border-radius: 50%;
        background: #58d321;
    }
    .arrow{
        cursor: pointer;
    }
    .dayStyle{
        display: inline-block;
        width: 35px;
        height: 25px;
        border-radius: 50%;
        text-align: center;
        line-height: 25px;
        cursor: pointer;
    }
    .current-month > .dayStyle:hover{
        background: #00BDFF;
        color: #ffffff;
    }
    .today-flag{
        background: #00C2B1;
        color: #fff;
    }
    .boxshaw{
        box-shadow: 2px 2px 15px 2px #e3e3e3;
    }
    .selected-style {
        background: #00BDFF;
        color: #ffffff;
    }
    #h3Ele{
        text-align: center;
        padding: 10px;
    }
</style>
<body>
    <div class = "top-wrap">
        <div class="left-wrap">
            <div class="left-a">
                <div class="p1">
                    <div class="icon-wrap">
                        <img src="${pageContext.request.contextPath}/style/pics/totalTask.png">
                    </div>
                    <div class="right-text">
                        <h2>150</h2>
                        <p>总文章数</p>
                    </div>
                </div>
            </div>
            <div class="left-a">
                <div class="p2">
                    <div class="icon-wrap">
                        <img src="${pageContext.request.contextPath}/style/pics/todoTask.png">
                    </div>
                    <div class="right-text">
                        <h2>35</h2>
                        <p>等待审批</p>
                    </div>
                </div>
            </div>
            <div class="left-a">
                <div class="p3">
                    <div class="icon-wrap">
                        <img src="${pageContext.request.contextPath}/style/pics/lock.png">
                    </div>
                    <div class="right-text">
                        <h2>15</h2>
                        <p>审核未通过数量</p>
                    </div>
                </div>
            </div>
            <div class="left-a">
                <div class="p4">
                    <div class="icon-wrap">
                        <img src="${pageContext.request.contextPath}/style/pics/deleteRec.png">
                    </div>
                    <div class="right-text">
                        <h2>11</h2>
                        <p>管理员删除文章数量</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="right-wrap">
            <div id='schedule-box' class="boxshaw">

            </div>
            <div>
                <h3 id='h3Ele'></h3>
            </div>
        </div>
    </div>
</body>
<script>
    var mySchedule = new Schedule({
        el: '#schedule-box',
        nextMonthCb: function (y,m,d) {
            document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        nextYeayCb: function (y,m,d) {
            document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        prevMonthCb: function (y,m,d) {
            document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        prevYearCb: function (y,m,d) {
            document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        }
    });
</script>
</html>
