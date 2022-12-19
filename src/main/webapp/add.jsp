<%--
  Created by IntelliJ IDEA.
  User: 20716
  Date: 2022/12/19
  Time: 18:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <div id="content" class="all1">
        <p id="whereami">
        </p>
        <h1>
            添加用户:
        </h1>
        <form action="add.do" method="post">
            <table cellpadding="0" cellspacing="0" border="0"
                   class="form_table">
                <tr>
                    <td valign="middle" align="right">
                        用户名:
                    </td>
                    <td valign="middle" align="left">
                        <input type="text" class="inputgri" name="uname" />
                    </td>
                </tr>
                <tr>
                    <td valign="middle" align="right">
                        密码:
                    </td>
                    <td valign="middle" align="left">
                        <input type="text" class="inputgri" name="pwd" />
                    </td>
                </tr>
                <tr>
                    <td valign="middle" align="right">
                        邮箱:
                    </td>
                    <td valign="middle" align="left">
                        <input type="text" class="inputgri" name="email" />
                    </td>
                </tr>
            </table>
            <p>
                <input type="submit" class="button" value="确认" />
            </p>
        </form>
    </div>
</body>
</html>
