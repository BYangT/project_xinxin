<%@ page import="com.ytb.project_xinxin.entity.Idenitfity" %><%--
  Created by IntelliJ IDEA.
  User: 20716
  Date: 2022/12/10
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="./css/public.css"/>
  <link rel="stylesheet" type="text/css" href="./css/reset.css"/>
  <link rel="stylesheet" type="text/css" href="./css/font/iconfont.css"/>
  <link rel="stylesheet" type="text/css" href="./css/detail.css"/>
  <link rel="stylesheet" type="text/css" href="./css/assets/css/top-header-menu.css"/>
  <title>商品详情</title>
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
      <%
        if (request.getParameter("user")!="1"){
          String name = request.getParameter("user");
      %>
      <li class="make"><%=name%></li>
      <li class="login"<input  type="button" style="width: 30px;height:0px" onclick="javascript:jump()" value="登出" class="btn-buy"/>登出</li>
      <%} else {%>
      <li class="make"><a href="http://localhost:8080/project_xinxin_war_exploded/login.do">登陆</a></li>
      <li class="login"><a href="http://localhost:8080/project_xinxin_war_exploded/register.do">注册</a></li>
      <%}%>
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
    <li>
      <div class="cart">
        <img src="./img/88.png" />
        <a href="../cart/cart.html">
          <span>我的购物车</span>
        </a>

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

<!-- 中间内容 -->
<div class="w-content">
  <div class="box">
    <div class="image-wrapper">
      <img src="./img/shoes-boutique/<%=request.getParameter("picture")
      %>" width = "400px">
    </div>
  </div>

  <div class="form" >

    <h1 style="margin-top: 20px;padding-left: 30px;font-size: 16px;color: #000000;" class="h11">
      <%=request.getParameter("name")%>
    </h1>
        <ul class="one" style="height: 40px;">
          <li style="padding-left: 30px; display: inline-block; margin-top: 20px;color: #000000; font-size: 13px;">商品品牌：NIKE</li>
          <li class="right" style="padding-left: 30px; display: inline-block; margin-top: 20px; color: #000000; font-size: 13px;">商品货号：CV3469-001</li>
        </ul>
        <ul style="height: 40px;">
          <li style="padding-left: 30px; display: inline-block;margin-top: 20px;color: #000000;
	       font-size: 20px;">本店售价：<p style="display: inline-block;color: #e4393c;
	       font-size: 20px;">￥1549.00元</p></li>
          <li class="right" style="padding-left: 30px;display: inline-block;margin-top: 20px;color: #000000;
	       font-size: 13px;">vip会员：<p style="display: inline-block;color: #e4393c;font-size: 20px;">￥<%=request.getParameter("price")%>></p></li>
        </ul>
        <p style="height:20px;width:458px;margin-left:30px;margin-top: 10px;font-size:13px">促销价：
          <span style="color: #ef2323; font-size: 20px;">￥<%=request.getParameter("price")%></span>
        </p>
        <p style="font-size: 13px;color: #000000;padding-left: 30px;margin-top: 20px;margin-bottom:10px;">所&nbsp;在&nbsp;地:&nbsp;&nbsp;浙江&nbsp;台州仓库<p>
        <ul class="two" style="height: 40px;">
          <li style="margin-left: 30px; display: inline-block;margin-top: 10px;color: #000000;
	       font-size: 13px;">增值保障：</li>
          <li style="margin-left:10px;display: inline-block;color: #000000;
	       font-size: 13px;">一年内只换不修￥19</li>
          <li style="margin-left:10px; display: inline-block;color: #000000;;
	       font-size: 13px;">一年内意外换新￥19</li>
          <li style=" display: inline-block;margin-left:10px;color: #000000;
	       font-size: 13px;">一年内全保换新￥39</li>
          <ul class="three">
            <span style="color: #000000;font-size: 13px;padding-left: 30px;float:left;margin-top:20px;">数量：</span>
            <input style="margin-top: 10px;margin-bottom:20px;float:left;width: 43px;height: 44px;" type="text" name="number" id="number" value="1" class="count" />
            <p style="float:left;display:inline-block;height:45;width:17px;">
              <input style="margin-top: 10px;width: 17px;height: 24px;background-color: #f1f1f1;color:#666666;font-size: 12px;outline: none;border:0;"
                     type="button"  value="-" class="btn-decrease" />
              <input style="width: 17px;height: 24px;background-color:  #f1f1f1;color:#666666;;font-size: 14px;outline: none;border:0;"
                     type="button" value="+" class="btn-increase" />
            </p>
            <input style="margin-top: 10px;margin-left:20px;width: 120px;height: 45px;background-color: red;outline: none;border:0;" type="submit"
                   onclick="javascript:jump()" value="加入购物车" class="btn-buy"/>
          </ul>
        </ul>

  </div>
  <!-- 选项卡 -->
  <div class="shoe-right">
    <div class="w tab man">
      <div class="shoe-top">
        <h2>看了又看</h2>
      </div>

      <ul class="tab-content">
        <li class="active">
          <ul>
            <li><a href=""><img src="./img/products/1.jpg" ><h2>X-GIRL泡沫</h2></a></li>
            <li><a href=""><img src="./img/products/2.jpg" ><h2>X-GIRL昭华易逝</h2></a></li>
            <li><a href=""><img src="./img/products/3.jpg" ><h2>X-GIRL神奇女侠</h2></a></li>
            <li><a href=""><img src="./img/products/4.jpg" ><h2>X-GIRL迈过界限</h2></a></li>
            <li><a href=""><img src="./img/products/5.jpg" ><h2>X-GIRL蓝朋友</h2></a></li>
          </ul>
        </li>
        <li>
          <ul>
            <li><a href=""><img src="./img/products/6.jpg" ><h2>X-GIRL泡沫</h2></a></li>
            <li><a href=""><img src="./img/products/7.jpg" ><h2>X-GIRL昭华易逝</h2></a></li>
            <li><a href=""><img src="./img/products/8.jpg" ><h2>X-GIRL迈过界限</h2></a></li>
            <li><a href=""><img src="./img/products/9.jpg" ><h2>X-GIRL蓝朋友</h2></a></li>
          </ul>
        </li>
      </ul>
      <ul class="tab-title">
        <li class="active"><input type="button" name="" id="" value="1" class="form"/></li>
        <li><input type="button" name="" id="" value="2" class="form"/></li>
      </ul>
    </div>
  </div>
  <div class="w send">
    <a href="">店长推荐</a>
    <ul>
      <li>
        <a href="#">
          <img src="./img/retro casual/04.jpg" >

          <p>Nike&nbsp;AirForce&nbsp;1&nbsp;Shadow&nbsp;AF1糖</p>
          <p>果白蓝粉紫拼接水晶底</p>
          <span>新新价：￥999.00元</span>

        </a>
      </li>

      <li>
        <a href="#">
          <img src="./img/retro casual/09.jpg" >

          <p>Nike&nbsp;Air&nbsp;Max&nbsp;97珍珠白炫彩97子弹</p>
          <p>女气垫跑鞋&nbsp;特价</p>
          <span>促销价：￥1299.00元</span>


        </a>
      </li>
      <li>
        <a href="#">
          <img src="./img/retro casual/08.jpg" >

          <p>Adidas&nbsp;Yeezy&nbsp;350V2&nbsp;灰橙&nbsp;侧透满</p>
          <p>天星椰子跑步鞋</p>
          <span>促销价：￥1949.00元</span>


        </a>
      </li>
      <li><a href="#">
        <img src="./img/retro casual/07.jpg" >

        <p>NikeAir&nbsp;More&nbsp;Uptempo&nbsp;皮蓬&nbsp;熊猫</p>
        <p>大AIR&nbsp;情侣款款</p>
        <span>促销价：￥1299.00元</span>


      </a>
      </li>
      <li>
        <a href="#">
          <img src="./img/retro casual/06.jpg" >

          <p>Adidas&nbsp;YEEZY&nbsp;350&nbsp;V2&nbsp;Cinder&nbsp;黑</p>
          <p>魂黑生胶&nbsp;椰子&nbsp;黑天使2.0特价</p>
          <span>促销价：￥2299.00元</span>


        </a>
      </li>

    </ul>
  </div>

  <div class="w news">
    <img src="./img/detail/003.png" >
  </div>

</div>


<!-- 页脚 -->
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
<!-- 右边内容 -->
<div class="content-right">
  <ul>
    <li><a href="../myheart/myheart.html"><i class="iconfont icon-huiyuan"></i>个人中心</a></li>
    <li><a href="../cart/cart.html"><i class="iconfont icon-gouwuche1"></i>购物车</a></li>
    <li><a href=""><i class="iconfont icon-zaixiankefu"></i>在线客服</a></li>
    <li><a href=""><i class="iconfont icon-shoucang"></i>收藏中心</a></li>

  </ul>
  <img src="./img/WeChat100.png" >
</div>
<div class="footer-top">
  <a href="javascript:window.scrollTo(0,0)"><i class="iconfont icon-fanhuidingbu"></i>返回顶部</a>
</div>
<%--<script type="text/javascript" src="../assets/js/jQuery-3.4.0.js">--%>

<%--</script>--%>
<%--<script type="text/javascript" src="../assets/js/js-cookie.js">--%>

<%--</script>--%>
<%--<script type="text/javascript" src="../assets/js/public.js">--%>

<%--</script>--%>
<%--&lt;%&ndash;<script type="text/javascript" src="./js/detail.js">&ndash;%&gt;--%>
<%--&lt;%&ndash;</script>&ndash;%&gt;--%>

<%--<script type="text/javascript" src="../assets/js/menu.js">--%>
<%--</script>--%>
<script>
  // let num = document.querySelector(".w-content .form .two .three .count")
  // console.log(num.value)
  function jump(){
    let num = document.querySelector(".w-content .form .two .three .count")
    let herf = "cart.do?name=<%=request.getParameter("name")
      %>&pic=<%=request.getParameter("picture")%>&number="
    let name = "&user=<%=request.getParameter("user")%>&price=<%=request.getParameter("price")%>"
    window.location.href = herf + num.value + name;
  }
</script>
</body>
</html>

