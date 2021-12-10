<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>登陆</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
    <link rel="stylesheet" href="css/login.css">

</head>

<body style="background-color: rgba(238, 238, 240, 0.993);">
<div class="box">
    <div class="top-bar">
        <div class="top-item" id="logo"><img src="images/scut_logo.png" alt="logo"
                                             style="max-width: 98%; max-height: 100%; vertical-align: middle;"></div>
        <div class="top-item" id="system">华南理工大学教务管理系统</div>
        <div class="top-item" id="login_title">教务系统登录</div>
    </div>
    <div class="main">
        <div class="img"><img src="images/University.jpg" alt="background" style="max-width: 100%; max-height: 100%;"></div>
        <form action="ServletLogin" id="login-form" method="post" onsubmit="return checkinput();">
            <p class="msg" style="cursor:default">${message }</p>
            <div class="input-area">
                <label class="user-name" for="ID">用户名:</label>
                <input id = "ID" required="required" type="text" name="ID" placeholder="用户名">
            </div>
            <div class="input-area">
                <label class="password" for="pwd">密&emsp;码:</label>
                <input id="pwd" required="required" type="password" name="pwd" placeholder="密码">
            </div>
            <div class="check-area" style="font-size: 18px;">
                <input class="check" type="radio" name="role" value="2" checked="checked">学生
                <input class="check" type="radio" name="role" value="1">教师
                <input class="check" type="radio" name="role" value="0">管理员
            </div>
            <div class="btns">
                <button type="submit" form="login-form" class="btn" onclick="validate()">登&emsp;录</button>
                <button type="button" class="btn" id="clear">清&emsp;空</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
