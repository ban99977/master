<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'studentAll.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
.div_list {
	width: 75%;
	margin: 0 auto;
	margin-top: 50px;
	margin-left: 20%;

}
#tableClass{
margin:0 auto;
width: 100%

}
.form1{
	width: 200px;
	display: inline-block
}

font {
	color: red;
	font-weight: bold;
	text-align: center;
}
table{
margin:0 auto;

}
table tr td{
text-align: center;
width:150px;
height:40px;
}
a{
text-decoration: none;
}
</style>
  </head>
  
  <body>
    
    <div class="div_list panel panel-default">
				<div class="panel-heading">教师信息</div>
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>工号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>生日</td>
				<td>学位</td>
				<td>职称</td>
				<td>入职时间</td>
				<td>学院号</td>
			</tr>
			<c:forEach var="list" items="${list }">
			<tr>
				<td>${list.getTeacherId() }</td>
				<td>${list.getTeacherName() }</td>
				<td>${list.getSex() }</td>
				<td>${list.getBirthYear() }</td>
				<td>${list.getDegree() }</td>
				<td>${list.getTitle() }</td>
				<td>${list.getGrade() }</td>
				<td>${list.getCollegeId() }</td>
				<td><a href="ServletSelectTea?teanum=${list.getTeacherId() }">修改</a>&nbsp;&nbsp;&nbsp;<a href="ServletDeleteTea?teanum=${list.getTeacherId() }" onclick="return confirm('是否确认删除？')">删除</a></td>
				
			</tr>
			</c:forEach>
		</table>
	</div>
  </body>
</html>
