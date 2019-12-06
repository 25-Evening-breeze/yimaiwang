<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <style type="text/css">
        #a3{
            width: 800px;
            padding: 20px;
            float: left;
            text-align: center;
            border-top: 2px solid orange;
            position: relative;
        }
        .q1{
            border-bottom: 1px solid gold;
            border-right: 1px solid gold;
            height: 30px;
        }
        .q2{
            float: right;
        }
        .a5{
            height: 40px;
        }
    </style>
</head>
<body >
<div >
    <div>
        <img src="img/2.png" style="width: 15px; height:15px"><b>添加分类</b>
    </div>

    <div id="a3">
        <form action="../addfenlei.do" method="post">
            <table cellspacing="0" cellpadding="0" style="width: 800px">
                <tr style="height: 30px;">
                    <td class="q2">父分类：</td>
                    <td>
                        <select name="fumulu">
                            <option value="0">根目录</option>
                            <c:forEach items="${leibies}" var="fenlei">
                                <option value="${fenlei.id}">${fenlei.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr style="height: 30px;">
                    <td class="q2">类别名称：</td>
                    <td><input type="text" name="name" style="height: 25px;width: 300px"/> </td>
                </tr>
                <tr style="height: 40px;">
                    <td></td>
                    <td>
                        <input type="submit" value="提交" style="background-color: green"
                               onclick="return confirm('确认添加这条信息么?')"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>

</div>
</body>
</html>
