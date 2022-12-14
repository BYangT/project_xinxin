<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.ytb.project_xinxin.entity.Idenitfity,java.util.*,java.text.*"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="./css/public.css"/>
    <link rel="stylesheet" type="text/css" href="./css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="css/font/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="./css/login.css">
    <meta charset="utf-8">
    <title>登录</title>

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
            <li class="make"><a href="#">登陆</a></li>
            <li class="login"><a href="register.do">注册</a></li>
            <li>|</li>
            <li class="mi"><a href="../order_list/order_list.html">订单</a></li>
            <li class="mi"><a href="#">收藏</a></li>
            <li class="mi"><a href="#">帮助中心</a></li>
            <li class="mi"><a href="#">收藏新新</a></li>
            <li class="phone">400-881-9878</li>
        </ul>
    </div>
</div>
<!-- 第二行 -->
<div class="w second">
    <ul>
        <li class="left"><img src="./img/logo.png" ></li>
        <li class="right">
            <ul>
                <li><i class="iconfont icon-zheng"></i><span>正品保证</span></li>
                <li><i class="iconfont icon-paishe"></i><span>实物拍摄</span></li>
                <li><i class="iconfont icon-shan"></i><span>闪电发货</span></li>
                <li><i class="iconfont icon-shan"></i><span>7天无理由退货</span></li>
            </ul>
        </li>
    </ul>
</div>
<!-- 表单内容 -->
<div class="w content">
    <div class="img">
        <img src="./img/login/01.jpg"  alt="表单">
    </div>

    <div class="form1">
        <h1>如有账号，请登录</h1>
        <form action="" method="post" autocomplete="off">
            <!-- action里是表单信息提交的url -->
            <div class="form-item-wrapper">
                <input type="text" class="name" placeholder="账号" name="user"/>
                <!-- 当value为空时，placeholder内容显示。 -->
            </div>

            <div class="form-item-wrapper">
                <input type="password"  class="name" placeholder="密码" name="pwd" />
            </div>
            <%--            登录按钮--%>
            <div class="form-item-wrapper">
                <label for=""></label>
                <input type="submit" name="" value="登录" class="btn-login" />
            </div>
            <div class="form-item-wrapper">
                <label for=""></label>
                <input class="check" type="checkbox" name="" id="" value="" />
                <span class="tai">记住登录状态</span>
                <a class="m1" href="#">找回密码</a>
                <p>|</p>
                <a class="m2" href="register.do">免费注册</a>
            </div>
        </form>
        <h2 class="m3">合作账号登录</h2>
        <ul class="qq">
            <li><a href=""><img src="./img/login/02.png" /><p>QQ账号</p></a></li>
            <li><a href=""><img src="./img/login/03.png" /><p>微信账号</p></a></li>
        </ul>


    </div>
    <p class="footer">2016-2019&nbsp;新新球鞋网&nbsp;版权所有，并保留所有权利。&nbsp;浙公网安备&nbsp;&nbsp;33108202000112号&nbsp;&nbsp;浙ICP备08017537号</p>

    <!-- 页脚 -->

    <script type="text/javascript" src="../assets/js/jQuery-3.4.0.js">

    </script>
    <script type="text/javascript" src="../assets/js/js-cookie.js">

    </script>
    <script type="text/javascript" src="../assets/js/public.js">

    </script>
    <script type="text/javascript" src="./login.js">

    </script>
</div>
</body>
</html>
