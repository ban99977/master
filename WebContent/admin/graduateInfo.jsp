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
    <div class="panel-heading">???????????????</div>
    <table class="table panel-body" id="tableClass">
        <tr>
            <td>??????</td>
            <td>??????</td>
            <td>??????</td>
            
            <td>????????????</td>
            <td>????????????</td>
            <td>??????</td>
            <td>????????????</td>
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
       	<td><a href="GraduateFindOneServlet?granum=${list.getUserId() }">??????</a>&nbsp;&nbsp;&nbsp;<a href="GraduateDeleteServlet?granum=${list.getUserId() }" onclick="return confirm('?????????????????????')">??????</a></td>
        				
        			</tr>
        			</c:forEach>
        <tr>
            <td colspan="7">
                <a onclick="page(1);">??????</a>
                <c:if test="${list.isPrevious() }">
                    <a onclick="page(${list.pageNo-1});">?????????</a>
                </c:if>
                <c:if test="${(list.pageNo+1)<list.totalPage }">
                    <a onclick="page(${list.pageNo+1 });">${list.pageNo+1 }</a>
                </c:if>
                <c:if test="${(list.pageNo+2)<list.totalPage }">
                    <a onclick="page(${list.pageNo+2 });">${list.pageNo+2 }</a>
                </c:if>
                <c:if test="${list.isNext() }">
                    <a onclick="page(${list.pageNo+1});">?????????</a>
                </c:if>
                <a onclick="page(${list.totalPage });">????????????</a> <br/>
                ????????????<input class="form-control form1"
                           id="pageNo" type="text" name="pageNo" value="${list.pageNo }"/>
                ??????????????????<input type="text" name="pageCount" class="form-control form1"
                             value="${list.pageCount }"/>

                <input
                        type="submit" class="btn btn-primary" value="??????"/> ??????${list.totalPage }???
            </td>
        </tr>
    </table>
    </div>
    </div>
</form>
</body>
</html>
