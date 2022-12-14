<%@ page import="com.ytb.project_xinxin.service.shopService" %>
<%@ page import="com.ytb.project_xinxin.entity.cart" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ytb.project_xinxin.entity.goods" %>
<%@ page import="com.ytb.project_xinxin.entity.Idenitfity" %>
<%@ page import="com.ytb.project_xinxin.entity.order" %><%--
  Created by IntelliJ IDEA.
  User: 20716
  Date: 2022/12/13
  Time: 0:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="./css/assets/css/public.css"/>
  <link rel="stylesheet" type="text/css" href="./css/assets/css/reset.css"/>
  <link rel="stylesheet" type="text/css" href="./css/font/iconfont.css"/>
  <link rel="stylesheet" type="text/css" href="./css/order.css"/>
  <link rel="stylesheet" type="text/css" href="./css/assets/css/top-header-menu.css"/>
  <meta charset="utf-8">
  <title>订单确认</title>
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
      <li class="make"><a href="login.do">登陆</a></li>
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
        <a href="cart.do">
          <span>
            我的购物车
          </span>
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
  <p><img src="../images/line/92.png" ></p>
</div>

<div class="w content">
  <span>您当前的位置：首页&nbsp;>&nbsp;购物流程</span>
<%--  <div class="w address">--%>
<%--    <h2>请检查您的订单</h2>--%>
  <%--    <h3>收货地址：</h3>--%>
<%--    <a href="javascript:void(0)" class="btn-gotoAddress"><i class="iconfont icon-xinzeng"></i>新增收货地址</a>--%>
<%--    <ul class="address-list">--%>

<%--    </ul>--%>
<%--    <div class="line">--%>

<%--    </div>--%>
<%--  </div>--%>
  <div class="product">
    <h3>商品清单</h3>
    <!-- <ul class="product-list">

    </ul> -->
    <div class="product-list">
      <table class="w product1-list">
        <thead>
        <tr>
          <td class="th2">商品图片</td>
          <td class="th3">商品名称</td>
          <td class="th4">价格</td>
          <td class="th5">数量</td>
        </tr>
        </thead>
        <tbody>
        <%
          shopService service = new shopService();
          List<cart> carts = service.findAllCart();
          for (cart cart : carts){

        %>
        <tr>
          <td><img src="./img/shoes-boutique/<%=cart.getPic()%>"></td>
          <td><span class="name"><%=cart.getName()%></span></td>
          <td><span class="price">￥<%=cart.getPrice()%>元</span></td>
          <td><span><%=cart.getNumber()%></span></td>
        </tr>
        <%
          }
        %>
        </tbody>
      </table>
    </div>
  </div>
  <div class="bottom-list">
    <input type="button" name="" id="" value="生成订单" onclick="myFunc()" class="btn-confirm" />
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
<div class="content-right">
  <ul>
    <li><a href="../myheart/myheart.html"><i class="iconfont icon-huiyuan"></i>个人中心</a></li>
    <li><a href="../cart/cart.html"><i class="iconfont icon-gouwuche1"></i>购物车</a></li>
    <li><a href=""><i class="iconfont icon-zaixiankefu"></i>在线客服</a></li>
    <li><a href=""><i class="iconfont icon-shoucang"></i>收藏中心</a></li>

  </ul>
  <img src="../images/WeChat100.png" >
</div>
<div class="footer-top">
  <a href="javascript:window.scrollTo(0,0)"><i class="iconfont icon-fanhuidingbu"></i>返回顶部</a>
</div>

<script>
  function myFunc(){
    <%
    //读取到用户名
    String name1 =  request.getParameter("name");
    //读取到购物车里面所有的商品
    List<cart> carts1 = service.findAllCart();
    //遍历输出购物车里面你所有商品，并把购物车里面的商品添加到订单表中
    for (cart cart : carts1){
      shopService service1 = new shopService();

      goods goods = service1.findByName(cart.getName());

      int idgoods = goods.getIdgoods();
      //找到id
      Idenitfity idenitfity = service1.login(name1);
      int id = idenitfity.getId();
      //建立订单对象
      order order = new order();
      order.setId(id);
      order.setIdgoods(idgoods);
      order.setNumber(cart.getNumber());
      order.setPrice(cart.getPrice());
      //将购物车里面的商品添加到订单表
      service1.add(order);
      //购物车表为一次性表，每次取完值清空
      service1.delete(cart);
    }
    %>
    window.location.href = "pay.jsp"
  }
</script>
<script type="text/javascript" src="../assets/js/jQuery-3.4.0.js">

</script>
<script type="text/javascript" src="../assets/js/js-cookie.js">

</script>
<script type="text/javascript" src="../assets/js/public.js">

</script>
<script type="text/javascript" src="../assets/js/menu.js">

</script>
<script type="text/javascript" src="./order.js">

</script>

</body>
</html>

