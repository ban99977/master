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
        .div_select {
            width: 75%;
            margin: auto;
            margin-top: 50px;
            margin-left: 20%;
        }



        #form1 {
            width: 200px;
            display: inline-block
        }

        .div_list {
            width: 75%;
            margin: 0 auto;
            margin-top: 50px;
        }

        font {
            color: red;
            font-weight: bold;
            text-align: center;
        }

        #tableClass {
            margin: 0 auto;
            width: 100%
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

        .form1 {
            width: 200px;
            display: inline-block
        }
    </style>
</head>

<body>
<div class="div_select">
</div>

<div class="div_list">
    <form action="ServletFindAllCos" method="post" id="frm">
        <div class="div_list panel panel-default">
            <div class="panel-heading">考试信息</div>
            <table class="table panel-body" id="tableClass">
                <tr>
                    <td>课程号</td>
                    <td>考试时间</td>
                    
                </tr>

                <c:forEach var="list" items="${list}">
                    <tr>
                        <td>${list.getCourseId() }</td>
                        <td>${list.getExamTime() }</td>

                    </tr>
 				</c:forEach>
                <tr>
                    
             </tr>
            </table>
        </div>
    </form>
</body>

</html>