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
    <form action="ServletOneStudentScore" method="post">
        课程名：<input type="text" class="cosName form-control" id="form1" name="cosName" /> <input type="submit"
                                                                                                class="btn btn-primary" value="查询" />
    </form>
</div>

<div class="div_list">
    <form action="CourseSelectedShowServlet" method="post" id="frm">
        <div class="div_list panel panel-default">
            <div class="panel-heading">课程信息</div>
            <table class="table panel-body" id="tableClass">
                <tr>
                    <td>课程号</td>
                    <td>课程名</td>
                    <td>任课教师</td>
                    
                    <td>课程性质</td>
                    <td>学时</td>
                    <td>上课时间</td>
                    <td>上课地点</td>
                    
                </tr>

               <c:forEach var="list" items="${list.pbjs }">
                    <tr>
                      <td>${list.getCoureId() }</td>
                        <td>${list.getCourseName() }</td>
                        <td>${list.getTeacherName() }</td>
                      <td>${list.getCourseType() }</td>
                       <td>${list.getCourseWeek() }</td>     
                         <td>${list.getCourseTime() }</td>  
                             <td>${list.getCourseRoom() }</td>         

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
                        <a onclick="page(${list.totalPage });">最后一页</a> <br />
                       跳转到：<input class="form-control form1" id="pageNo" type="text" name="pageNo"
                                   value="${list.pageNo }" />
                    每页记录数：<input type="text" name="pageCount" class="form-control form1"
                                     value="${list.pageCount }" />

                       <input class="btn btn-primary" type="submit" value="跳转" /> 共有${list.totalPage }页
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>

</html>