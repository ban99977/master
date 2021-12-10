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
        #form1{
            width:200px;
            display: inline-block
        }
    </style>
</head>
<body>
<div class="div_select">
    <form action="ServletOneStudentScore" method="post">
        课程名：<input type="text" class="cosName form-control" id="form1"  name="cosName" /> <input type="submit" class="btn btn-primary" value="查询" />
    </form>
</div>

<form action="" method="post">

    <div class="div_ads">
        <table class="table" style="width: 100%">
            <tr>
                <td>科&nbsp;&nbsp;&nbsp;目</td>
                <td>学&nbsp;&nbsp;&nbsp;分</td>
                <td>学&nbsp;&nbsp;&nbsp;时</td>
                <td>专&nbsp;&nbsp;&nbsp;业</td>
                <td>任课教师</td>
                <td>上课时间</td>
                <td>课程性质</td>
                <td>是否选课</td>
            </tr>
        <c:forEach var="list" items="${list }">

                <tr>

                    <td><input type="text" name="courseID" class="form-control" value="${list.getCourseID() }" readonly="readonly" /></td>
                </tr>
                <tr>

                    <td><input type="text" name="courseName" class="form-control" value="${list.getCourseName() }" /></td>
                </tr>
                <tr>

                    <td><input type="text"  name="courseCredit" class="form-control" value="${list.getCourseCredit() }"  />

                    </td>
                </tr>
                <tr>

                    <td><input type="text" name="courseHours" class="form-control" value="${list.getCourseHours() }" /></td>
                </tr>
                <tr>

                    <td><input type="text" name="courseTea" class="form-control" value="${list.getCourseTeacher() }" /></td>
                </tr>
                <tr>

                    <td><input type="text" name="courseDate" class="form-control" value="${list.getCourseDate() }" /></td>
                </tr>
                <tr>

                    <td><input type="text" name="courseDate" class="form-control" value="${list.getCourseDate() }" /></td>
                </tr>
                <tr class="isSelect">
                    <td><input type="submit" value="${选课}" class="btn btn-primary" /></td>
                </tr>

        </c:forEach>
        </table>
    </div>
</form>
<script type="text/javascript">
    $(".isSelect input").click(function (){
        if ($(this).val() === "选课") {
            $(this).removeClass("btn-danger");
            $(this).addClass("btn-primary");
        }
        else {
            $(this).removeClass("btn-primary");
            $(this).addClass("btn-danger");
        }
    })

</script>


</body>
</html>
