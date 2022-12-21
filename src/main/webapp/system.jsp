<%@ page import="java.util.List" %>
<%@ page import="com.ytb.project_xinxin.entity.Idenitfity" %>
<%@ page import="javax.xml.ws.Service" %>
<%@ page import="com.ytb.project_xinxin.service.shopService" %>
<%@ page import="com.ytb.project_xinxin.entity.page" %><%--
  Created by IntelliJ IDEA.
  User: 20716
  Date: 2022/12/19
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="./css/assets/css/public.css"/>
        <link rel="stylesheet" type="text/css" href="./css/assets/css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="./css/font/iconfont.css"/>
        <link rel="stylesheet" type="text/css" href="./css/assets/css/top-header-menu.css"/>
        <link rel="stylesheet" type="text/css" href="./css/cart.css"/>
        <link rel="stylesheet" type="text/css" href="./css/system.css"/>
        <title>管理员界面</title>
    </head>

<body>
<!-- 顶部 -->
<div class="top">
    <div class="w header">
        <ul class="header-left">
            <li class="first"><a href="#">X-KICKS商城</a></li>
            <li class="second"><a href="#">X-KICKS资讯</a></li>
            <li class="second"><a href="#">X-KICKS社区</a></li>
            <li class="second"><a href="#">X-KICKS&nbsp;APP</a></li>
        </ul>
        <ul class="header-right">
            <li class="make"><a href="http://localhost:8080/project_xinxin_war_exploded/login.do">登陆</a></li>
            <li class="login"><a href="http://localhost:8080/project_xinxin_war_exploded/register.do">注册</a></li>
            <li>|</li>
            <li class="mi"><a href="#">订单</a></li>
            <li class="mi"><a href="#">收藏</a></li>
            <li class="mi"><a href="#">帮助中心</a></li>
            <li class="mi"><a href="#">收藏新新</a></li>
            <li class="phone">400-881-9878</li>
        </ul>
    </div>
</div>
<!-- 第二行 -->
<div class="w second">
    <ul  class="middle">
        <li><img src="./img/logo.png" ></li>
        <li>
            <div >
                <input type="text" name="" id="" value="" /><input type="button" name="" id="" value="搜索" />

            </div>
        </li>
    </ul>
</div>

<!-- 菜单栏 -->
<ul class="w menu">

</ul>
<!-- 菜单线 -->
<div class="menu-line">
    <p><img src="./img/line/92.png" ></p>
</div>
    <table class="mt">
        <tr class="table_header" style="font-size: 200px">
            <td>
                ID
            </td>
            <td>
                姓名
            </td>
            <td>
                邮箱
            </td>
            <td>
                密码
            </td>
            <td>
                操作
            </td>
        </tr>

        <%
//            shopService service = new shopService();
            List<Idenitfity> idenitfities = (List<Idenitfity>) request.getAttribute("idens");

            for (Idenitfity idenitfity : idenitfities){


        %>
        <tr class="row1">
            <td>
                <%=idenitfity.getId()%>
            </td>
            <td>
                <%=idenitfity.getUser()%>
            </td>
            <td>
                <%=idenitfity.getEmail()%>
            </td>
            <td>
                <%=idenitfity.getPwd()%>
            </td>
            <td>
                <a href="del.do?id=<%=idenitfity.getId() %>">删除</a>&nbsp;<a href="toUpdate.do?id=<%=idenitfity.getId() %>">修改</a>
            </td>
        </tr>
        <%}%>
    </table>

    <%
        page p = (page)request.getAttribute("page");
        int cur = p.getCurrentPage();
        int totalPage = p.getTotalPage();
    %>
<p id = "apid">
    <%
        if(cur != 1){
    %>
    <a href = "system.do?current=<%=cur-1 %>">上一页</a>

    <%
        }
    %>
    <%
        for(int i=1;i<=totalPage;i++){
    %>

    <a href="system.do?current=<%=i%>"><%=i %></a>

    <%
        }
    %>
    <%
        if(cur != totalPage){
    %>
    <a href = "system.do?current=<%=cur+1 %>">下一页</a>
    <%
        }
    %>
</p>
    <p>
         <input type="button" class="button" value="添加" onclick="location='add.jsp'"/>
    </p>

</body>
</html>
