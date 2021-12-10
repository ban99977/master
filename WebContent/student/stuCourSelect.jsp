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
    <title></title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style type="text/css">
        .div_select{
            width:75%;
            margin: auto;
            margin-top: 50px;
            margin-left:20%;
        }
        font {
            color: red;
            font-weight: bold;
            text-align: center;
        }
        a{
            text-decoration: none;
            cursor: pointer;
        }
        .div_ads {
            width: 75%;
            margin: 0 auto;
            margin-top: 50px;
            margin-left: 15%;
        }
        table {
            margin: 0 auto;
            width: 100%
        }

        table tr td {
            text-align: center;
            width:5%;
            height:50px;
        }
        #form1{
            width:200px;
            display: inline-block
        }
    </style>
</head>
<body>
<div class="div_select">
    <form action="ServletOneStudentScore" method="post">
        课程名：<input type="text" class="cosName form-control" id="form1"  name="courseName" /> <input type="submit" class="btn btn-primary" value="查询" />
    </form>
</div>

<form action="CourseCanChooseServlet" method="post">

    <div class="div_ads">
        <table class="table" style="width: 100%">
            <tr>
                <td>编&nbsp;&nbsp;&nbsp;号</td>
                <td>名&nbsp;&nbsp;&nbsp;称</td>
                <td>教&nbsp;&nbsp;&nbsp;师</td>
                <td>类&nbsp;&nbsp;&nbsp;型</td>
                <td>上课时间</td>
                <td>上课地点</td>
                <td>上课周数</td>
                <td>是否选课</td>
            </tr>
        <c:forEach var="list" items="${list.pbjs }">

                <tr>

                    <td>${list.getCoureId() }</td>
                    <td>${list.getCourseName() }</td>
                    <td>${list.getTeacherName() }</td>
                    <td>${list.getCourseType() }</td>
                    <td>${list.getCourseTime() }</td>
                    <td>${list.getCourseRoom() }</td>
                    <td>${list.getCourseWeek() }</td>
                    <td><a href="AddSelectCourseServlet?courseId=${list.getCoureId()} " class="btn btn-primary">选课</a></td>
                </tr>

        </c:forEach>
        </table>
    </div>
</form>
<script type="text/javascript">
    $(".isSelect input").click(function (){
        if ($(this).val() === "选课") {
            $(this).removeClass("btn btn-danger");
            $(this).addClass("btn btn-primary");
        }
        else {
            $(this).removeClass("btn btn-primary");
            $(this).addClass("btn btn-danger");
        }
    })

</script>


</body>
</html>
