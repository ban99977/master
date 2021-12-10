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

<title>My JSP 'addStudent.jsp' starting page</title>

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
.div_ads {
	width: 75%;
	margin: 0 auto;
	margin-top: 50px;
	margin-left: 10%;
}
table {
	margin: 0 auto;
	width: 100%
}

table tr td {
	text-align: center;
	width:50%;
	height:50px;
}
</style>
</head>

<body>
	<form action="ServletEditTea" method="post">
	
		<div class="div_ads">
		<font>${message}</font>
		<c:forEach var="list" items="${list }">
			<table>
				<tr>
					<td>工&nbsp;&nbsp;&nbsp;号：</td>
					<td><input type="text" name="teacherId" class="form-control" value="${list.getTeacherId() }" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>姓&nbsp;&nbsp;&nbsp;名：</td>
					<td><input type="text" name="teacherName" class="form-control" value="${list.getTeacherName() }" /></td>
				</tr>
				<tr>
					<td>性&nbsp;&nbsp;&nbsp;别：</td>
					<td><input type="text"  name="sex" class="form-control" value="${list.getSex() }"  readonly="readonly"/>
					</td>
				</tr>
				<tr>
					<td>生&nbsp;&nbsp;&nbsp;日：</td>
					<td><input type="text" name="birthYear" class="form-control" value="${list.getBirthYear()}" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>学&nbsp;&nbsp;&nbsp;位：</td>
					<td><input type="text" name="degree" class="form-control" value="${list.getDegree() }" /></td>
				</tr>
				<tr>
					<td>职&nbsp;&nbsp;&nbsp;称：</td>
					<td><input type="text" name="title" class="form-control" value="${list.getTitle() }" /></td>
				</tr>
				<tr>
					<td>入职时间：</td>
					<td><input type="text" name="grade" class="form-control" value="${list.getGrade()}" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>院&nbsp;&nbsp;&nbsp;系：</td>
					<td><input type="text" name="collegeId" class="form-control" value="${list.getCollegeId() }" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="修改" class="btn btn-primary" /></td>
					<td><input type="reset" value="清空" class="btn btn-danger" /></td>
				</tr>
			</table>
			</c:forEach>
		</div>
	</form>
</body>
</html>