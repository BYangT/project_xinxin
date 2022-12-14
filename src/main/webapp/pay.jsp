<%--
  Created by IntelliJ IDEA.
  User: 20716
  Date: 2022/12/13
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="./css/assets/css/public.css"/>
  <link rel="stylesheet" type="text/css" href="./css/assets/css/reset.css"/>
  <link rel="stylesheet" type="text/css" href="./css/font/iconfont.css"/>
  <link rel="stylesheet" type="text/css" href="./css/assets/css/top-header-menu.css"/>
  <link rel="stylesheet" type="text/css" href="./css/pay.css"/>
  <meta charset="utf-8">
  <title>支付页面</title>
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
      <li class="login"><a href="../sign_in/sign_in.html">注册</a></li>
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
  <ul  class="middle">
    <li><img src="../images/logo.png" ></li>
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
<div class="w content">
  <span class="b3">您当前的位置：首页&nbsp;>&nbsp;购物流程</span>

  <div class="pay-top">
    <p></p>
    <div class="pay-bottom">
      <h3 class="a1">
        感谢您在本店购物！您的订单已提交成功!
      </h3>
      <h3 class="a2">支付方式：</h3>
      <div class="buy">
        <ul>
          <li><input type="radio" name="pay" id="" value="" /><span>支付宝</span><span>支付宝是国内先进的网上安全支付平台，通过国家权威安全认证，支持各大银行网上支付，免支付手续费。</span><img src="./img/pay/01.jpg" ><br></li>
          <li><input type="radio" name="pay" id="" value="" /><span>微信扫码支付</span><span>微信支付是集成在微信客户端的支付功能，用户可以通过手机完成快速的支付流程。</span><img src="./img/pay/02.jpg" ><br></li>
          <li><input type="radio" name="pay" id="" value="" /><span>银联在线支付</span><span> 银联在线支付是中国银联推出的网上支付平台，支持多家发卡银行，涵盖借记卡和信用卡等，可享受安全、快捷的网上支付服务！</span><img src="./img/pay/03.jpg" ><br></li>
        </ul>

      </div>
      <div class="pay-finish">
        <span class="b1">应付款：￥</span><span class="account"></span>元
        <input type="button" name="" id="" value="支付" class="pay-money" />
      </div>

    </div>

  </div>


</div>



<div class="footer1">
  <div class="w footer-middle">
    <ul>
      <li>
        <img src="./img/footer/91.png" >
        <ul class="right">
          <li>正品保证</li>
          <li class="bb">Genuine</li>
        </ul>
      </li>
      <li>
        <img src="./img/footer/91.png" >
        <ul class="right">
          <li>实物拍摄</li>
          <li class="bb">HD&nbsp;phofographyGenuine</li>
        </ul>
      </li>
      <li>
        <img src="./img/footer/91.png" >
        <ul class="right">
          <li>闪电发货</li>
          <li class="bb">Rushi&nbsp;Delivery</li>
        </ul>
      </li>
      <li>
        <img src="./img/footer/91.png" >
        <ul class="right">
          <li >无理由发货</li>
          <li class="bb">free&nbsp;refun</li>
        </ul>
      </li>
    </ul>
  </div>
</div>
<div class="w footer2">
  <ul>
    <li>
      <ul>
        <li class="first">新手上路</li>
        <li>新用户注册</li>
        <li>新手常见问题</li>
        <li>购物流程和购物车</li>
        <li>如何成为VIP会员</li>
        <li>积分说明</li>
      </ul>
    </li>
    <li>
      <ul>
        <li class="first">关于商品</li>
        <li>正品&nbsp;承诺</li>
        <li>关于商品详细信息</li>
        <li>我们的品牌</li>
        <li>尺码对照表</li>
      </ul>
    </li>
    <li>
      <ul>
        <li class="first">付款方式</li>
        <li>银行柜台汇款</li>
        <li>货到付款</li>
        <li>网上在线支付</li>
        <li>如何使用优惠券</li>
      </ul>
    </li>
    <li>
      <ul>
        <li class="first">配送方式</li>
        <li>配送方式</li>
        <li>配送时间</li>
        <li>配送范围</li>
        <li>快件查询</li>
      </ul>
    </li>
    <li>
      <ul>
        <li class="first">售后服务</li>
        <li>商品的签收与拒收</li>
        <li>商品退换货政策</li>
        <li>售后投诉</li>
        <li>营业执照报备信息</li>
        <li>预售商品售后政策</li>
      </ul>
    </li>
    <li>
      <ul>
        <li class="first">在线帮助</li>
        <li>在线客服</li>
        <li>招纳贤士</li>
        <li>警惕网络诈骗</li>
        <li>品牌招商</li>
        <li>手机APP下载</li>
      </ul>
    </li>
  </ul>
</div>
<div class="w footer3">
  <p>2016-2019艾乐商贸运动版权所有，并保留所有权利。浙公安备331082002000112号浙ICP备19043343号</p>
  <ul>
    <li><img src="./img/footer/77.jpg" ></li>
    <li><img src="./img/footer/78.jpg" ></li>
    <li><img src="./img/footer/94.jpg" ></li>
    <li><img src="./img/footer/80.jpg" ></li>
  </ul>
</div>
<div class="content-right">
  <ul>
    <li><a href=""><i class="iconfont icon-huiyuan"></i>会员中心</a></li>
    <li><a href="../cart/cart.html"><i class="iconfont icon-gouwuche1"></i>购物车</a></li>
    <li><a href=""><i class="iconfont icon-zaixiankefu"></i>在线客服</a></li>
    <li><a href=""><i class="iconfont icon-shoucang"></i>收藏中心</a></li>

  </ul>
  <img src="./img/WeChat100.png" >
</div>
<div class="footer-top">
  <a href="javascript:window.scrollTo(0,0)"><i class="iconfont icon-fanhuidingbu"></i>返回顶部</a>
</div>
<script type="text/javascript" src="../assets/js/jQuery-3.4.0.js">

</script>
<script type="text/javascript" src="../assets/js/menu.js">

</script>
<script type="text/javascript" src="../assets/js/public.js">

</script>
<script type="text/javascript" src="../assets/js/js-cookie.js">

</script>
<script src="./pay.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
