<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>管理员界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/font-awesome.css">
  <link rel="stylesheet" href="css/nprogress.css">
  <link rel="stylesheet" href="css/admin.css">
  <script src="js/nprogress.js"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}


.navbar ul{
	width: 100%;
	height: 100px;
	position: relative;

}
</style>

<script type="text/javaScript" src="js/jquery-1.8.1.js"></script>
<script>
window.onload = function(){
	var oUl = document.getElementsByClassName('nav')[0];
	var aLi = oUl.getElementsByTagName('li');
	for(var i=0;i<aLi.length;i++){
		aLi[i].onclick = function(){
			for(var j in aLi){
				aLi[j].className = '';
			}
			this.className='active';
		}
		
	}
}
</script>
<style>
.aside{
width:15%;
}

.li-sty1{
	height: 50px;
	font-size: 40px;
	cursor: pointer;
	line-height: 100px;
	color: aliceblue;
	float:left;
}

.navbar ul{
	width: 100%;
	height: 100px;
	position: relative;

}
</style>
</head>

<body>
	<div class="div_body">
		<nav class="navbar">
			<ul class="nav navbar-nav " style="border-bottom:#517fa4 2px">
				<li class="li-sty" >华南理工大学教务管理系统<i class="fa fa-magic" ></i></li>
				<li class="li-sty1" style="float:right;"><a href="ServletLogout" >退出</a></li>
			</ul>
		</nav>
		<div class="aside">
			<div class="profile">
				<img class="avatar" src="images/pic.jpg">
				<h3 class="name">${userName}</h3>
			</div>
			<ul class="nav">
				<li>
      				<a href="ServletselectPwd" target="mainRight"><i class="fa fa-dashboard"></i>个人信息</a>
    			</li>
				
                <li>
                    <a href="#menu-stu" data-toggle="collapse">
                        <i class="fa fa-bug"></i>信息管理<i class="fa fa-angle-right"></i>
                    </a>
                    <ul id="menu-stu" class="collapse">
                    	<li><a href="ServletFindAllTea" target="mainRight">查询教师信息</a></li>
                        <li><a href="admin/addTeacher.jsp" target="mainRight">注册教师信息</a></li>
                        <li><a href="ServletFindAllStu" target="mainRight">查询学生信息</a></li>
                        <li><a href="admin/addStudent.jsp" target="mainRight">注册学生信息</a></li>
                    </ul>                    
                </li>
                 <li>
                    <a href="#menu-gra" data-toggle="collapse">
                        <i class="fa fa-graduation-cap"></i>毕业生管理<i class="fa fa-angle-right"></i>
                    </a>
                    <ul id="menu-gra" class="collapse">
                        <li><a href="GraduateFindAllServlet" target="mainRight">查询毕业生信息</a></li>
                        <li><a href="admin/addGraduate.jsp" target="mainRight">添加毕业生</a></li>
                    </ul>                    
                </li>
                <li>
                	<a href="ServletFindAllUser" target="mainRight"><i class="fa fa-bank"></i>查询所有账号</a>
                </li>       
			</ul>
		</div>
		<div class="div_right">
			<iframe frameBorder="0" id="main" 
			name="mainRight" scrolling="yes" src="main.jsp"
			style="HEIGHT:130%; VISIBILITY: inherit; WIDTH: 100%; Z-INDEX: 1"></iframe>
		</div>
	</div>
	
	<script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>