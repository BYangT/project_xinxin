<%--
  Created by IntelliJ IDEA.
  User: 20716
  Date: 2022/12/9
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ page import="com.ytb.project_xinxin.entity.Idenitfity" %>
<%@ page import="com.ytb.project_xinxin.service.shopService" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="./css/assets/css/public.css"/>
  <link rel="stylesheet" type="text/css" href="./css/assets/css/reset.css"/>
  <link rel="stylesheet" type="text/css" href="./css/font/iconfont.css"/>
  <link rel="stylesheet" type="text/css" href="./css/sign_in.css"/>
  <meta charset="utf-8">
  <title>注册</title>
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
      <li class="make"><a href="../login/login.html">登陆</a></li>
      <li class="login"><a href="#">注册</a></li>
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
        <li><i class="iconfont icon-shis"></i><span>实物拍摄</span></li>
        <li><i class="iconfont icon-shan"></i><span>闪电发货</span></li>
        <li><i class="iconfont icon-shan"></i><span>7天无理由退货</span></li>
      </ul>
    </li>
  </ul>
</div>

<!-- 表单内容 -->
<div class="w content">
  <div class="img">
    <img src="./img/login/01.jpg" >
  </div>
  <div class="form1">
    <h1>欢迎注册</h1>
    <h3>已经是会员？</h3>
    <h3><a href="http://localhost:8080/project_xinxin_war_exploded/login.do">立即登录</a></h3>
    <form action="login.do" method="post"  autocomplete="off" onsubmit="return checkip()">
      <!-- action里是表单信息提交的url -->
      <div class="form-item-wrapper">
        <input type="text" name="user11" id="user1"  value="" class="name" placeholder="用户名" />

      </div>
      <div class="form-item-wrapper">
        <input type="text" name="email11" id="email1" value="" class="email" placeholder="email" />
      </div>
      <div class="form-item-wrapper">
        <input type="password" name="pwd11" id="password1" value="" class="pwd" placeholder="密码" />
      </div>
      <div class="form-item-wrapper">
        <input type="password" name="pwd12" id="password2" value="" class="pwd2" placeholder="确认密码" />
      </div>
      <div class="form-item-wrapper">
        <label for=""></label>
        <input class="check" type="checkbox" name="" id="" value="" checked />
        <span class="tai">我已看过并接受《<a href="">用户协议</a>》</span>
      </div>
      <div class="form-item-wrapper">
        <label for=""></label>
        <input type="submit" name="register"  value="立即注册" class="btn-sign" />
      </div>

    </form>

  </div>
  <p class="footer">2016-2019&nbsp;新新球鞋网&nbsp;版权所有，并保留所有权利。&nbsp;浙公网安备&nbsp;&nbsp;33108202000112号&nbsp;&nbsp;浙ICP备08017537号</p>
</div>
  <!-- 页脚 -->
  <script type="text/javascript" src="./css/assets/js/jQuery-3.4.0.js"></script>
  <script type="text/javascript">

  function checkip(){
    var user = $('#user1').val;
    var email = $('#email1').val();
    var pwd1 = $('#password1').val();
    var pwd2 = $('#password2').val();
    if (user == "" || email == "" || pwd1 == "" || pwd2 == ""){
      alert("您的信息未添加完整");
      return false;
    } else if (pwd1 != pwd2){
      alert("两次输入的密码不相同");
      return false;
    } else {
      alert('注册成功！！！！');
      return true;
    }
  }
  </script>
</body>
</html>

