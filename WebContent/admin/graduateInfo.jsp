<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'selectblurScore.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <style type="text/css">
        .div_list {
            width: 75%;
            margin: 0 auto;
            margin-top: 50px;
            margin-left: 20%;

        }

        #tableClass {
            margin: 0 auto;
            width: 100%

        }

        .form1 {
            width: 200px;
            display: inline-block
        }

        font {
            color: red;
            font-weight: bold;
            text-align: center;
        }

        table {
            margin: 0 auto;

        }

        table tr td {
            text-align: center;
            width: 150px;
            height: 40px;
        }

        a {
            text-decoration: none;
            cursor: pointer;

        }
    </style>
    <script type="text/javascript">

        function page(s) {
            var frm = document.getElementById("frm");
            var pageNo = document.getElementById("pageNo");
            pageNo.value = s;
            frm.submit();
        }
    </script>
</head>

<body>
<form action="GraduateFindAllServlet" method="post" id="frm">
        <div class="div_list">
    		
    		<div class=" panel panel-default">
    <div class="panel-heading">毕业生信息</div>
    <table class="table panel-body" id="tableClass">
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>性别</td>
            
            <td>出生日期</td>
            <td>入学时间</td>
            <td>院系</td>
            <td>毕业时间</td>
        </tr>
       			<c:forEach var="list" items="${list.pbjs }">
        			<tr>
        				<td>${list.getUserId() }</td>
       				<td>${list.getUserName() }</td>
        				<td>${list.getSex() }</td>
        				<td>${list.getBirthYear() }</td>
        				<td>${list.getGrade() }</td>
        				<td>${list.getCollegeId() }</td>
        				<td>${list.getGraduateTime() }</td>
       	<td><a href="GraduateFindOneServlet?granum=${list.getUserId() }">修改</a>&nbsp;&nbsp;&nbsp;<a href="GraduateDeleteServlet?granum=${list.getUserId() }" onclick="return confirm('是否确认删除？')">删除</a></td>
        				
        			</tr>
        			</c:forEach>
        <tr>
            <td colspan="7">
                <a onclick="page(1);">首页</a>
                <c:if test="${list.isPrevious() }">
                    <a onclick="page(${list.pageNo-1});">上一页</a>
                </c:if>
                <c:if test="${(list.pageNo+1)<list.totalPage }">
                    <a onclick="page(${list.pageNo+1 });">${list.pageNo+1 }</a>
                </c:if>
                <c:if test="${(list.pageNo+2)<list.totalPage }">
                    <a onclick="page(${list.pageNo+2 });">${list.pageNo+2 }</a>
                </c:if>
                <c:if test="${list.isNext() }">
                    <a onclick="page(${list.pageNo+1});">下一页</a>
                </c:if>
                <a onclick="page(${list.totalPage });">最后一页</a> <br/>
                跳转到：<input class="form-control form1"
                           id="pageNo" type="text" name="pageNo" value="${list.pageNo }"/>
                每页记录数：<input type="text" name="pageCount" class="form-control form1"
                             value="${list.pageCount }"/>

                <input
                        type="submit" class="btn btn-primary" value="跳转"/> 共有${list.totalPage }页
            </td>
        </tr>
    </table>
    </div>
    </div>
</form>
</body>
</html>
