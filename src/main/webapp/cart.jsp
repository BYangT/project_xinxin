<%@ page import="com.ytb.project_xinxin.entity.cart" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ytb.project_xinxin.service.shopService" %>
<%@ page import="java.awt.*" %><%--
  Created by IntelliJ IDEA.
  User: 20716
  Date: 2022/12/10
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="./css/assets/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="./css/assets/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="./css/font/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="./css/assets/css/top-header-menu.css"/>
    <link rel="stylesheet" type="text/css" href="./css/cart.css"/>
    <title>购物车</title>
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

<!-- 中间内容 -->
<div class="w content">
    <span class="top-cart">您当前的位置：首页 > 购物流程</span>
<%--    <div class="cart-empty">--%>
<%--        <p>你的购物车中还没有东西，赶紧去选购吧!</p>--%>
<%--        <img src="./img/empty.jpg" >--%>
<%--    </div>--%>
    <div class="cartlist-wrapper">
        <table class="w cart-list">
            <thead>
            <tr>
                <td class="th1"><i class="checkbox all checked"></i></th>
                <td class="th2">商品图片</td>
                <td class="th3">商品名称</td>
                <td class="th4">价格</td>
                <td class="th5">数量</td>
                <td class="th6">操作</td>
            </tr>
            </thead>
            <tbody>
            <%if (!request.getParameter("user").equals("null")){

            %>

            <%
                shopService service = new shopService();
                List<cart> carts = service.findAllCart();
                for (cart cart : carts){

            %>
            <tr style="background-color:white;" data-checked="1" >

                <td ><i class="checkbox checked"></i></td>

                <td >
                    <img src="./img/shoes-boutique/<%=cart.getPic()%>" />
                </td>
                <td>
                    <span class="name"><%=cart.getName()%></span>
                </td>
                <td>
                    <span class="price">￥<%=cart.getPrice()%>元</span>
                </td>
                <td >
<%--                    <input type="button" value="-" class="btn-decrease"/>--%>
                    <span class="count"><%=cart.getNumber()%></span>
<%--                    <input type="button" value="+" class="btn-increase"/>--%>
                </td>
                <td>
                    <i class="iconfont icon-clear-1" ></i>
                </td>

            </tr>
            <%}%>
            </tbody>
        </table>
        <div class="w finish">
            <span class="account-wrapper">合计（不计运费）：￥<span class="account"></span><%=Integer.parseInt(request.getParameter("price"))*Integer.parseInt(request.getParameter("number"))%>元</span>
            <button class="settle" style="width: 100px;height: 100px;background-color: #ef2323;cursor: pointer " onclick="myFunction()">结算 </button>
        </div>
        <%} else {
                response.sendRedirect("login.do");
        }%>
    </div>
    <!-- 热门推荐 -->
    <div class="w big-box">
        <span>热门推荐</span><i class="iconfont icon-rementuijian" ></i>
        <div class="w shoes">

            <ul>
                <li>
                    <a href="#">
                        <img src="./img/shoes-boutique/12.jpg" >
                        <p>AR&nbsp;JORDAN&nbsp;1&nbsp;Mid&nbsp;Aj1糖果果冻</p>
                        <p>钩&nbsp;水晶底女子篮球鞋</p>
                        <span>促销价：￥799.00元</span>

                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/shoes-boutique/13.jpg" >

                        <p>Air&nbsp;Jordan&nbsp;Mid&nbsp;Aj1烟灰小Dior灰</p>
                        <p>白伯爵中帮</p>
                        <span>新新价：￥1299.00元</span>


                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/shoes-boutique/14.jpg" >

                        <p>AIR&nbsp;JORDAN&nbsp;1&nbsp;LOW&nbsp;AJ1黑白粉</p>
                        <p>小情人节&nbsp;低帮</p>
                        <span>促销价：￥648.00元</span>


                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/shoes-boutique/15.jpg" >

                        <p>Air&nbsp;Jordan&nbsp;34&nbsp;Infrared&nbsp;23&nbsp;AJ34&nbsp;黑</p>
                        <p>红激光&nbsp;特价</p>
                        <span>促销价：￥849.00元</span>


                    </a>
                </li>
                <li><a href="#">
                    <img src="./img/shoes-boutique/16.jpg" >

                    <p>NikeAir&nbsp;More&nbsp;Uptempo&nbsp;皮蓬&nbsp;熊猫</p>
                    <p>大AIR&nbsp;情侣款款</p>
                    <span>促销价：￥1299.00元</span>


                </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/shoes-boutique/17.jpg" >

                        <p>Nike&nbsp;Dunk&nbsp;Low&nbsp;SP&nbsp;Champ&nbsp;Colors</p>
                        <p>芬达配色板鞋</p>
                        <span>新新价：￥1999.00元</span>


                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/shoes-boutique/18.jpg" >

                        <p>Air&nbsp;Jordan4&nbsp;AJ4&nbsp;2020白红&nbsp;金属扣</p>
                        <p>篮球鞋</p>
                        <span>新新价：￥1499.00元</span>


                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/shoes-boutique/19.jpg" >

                        <p>Air&nbsp;Jordan&nbsp;1&nbsp;Low&nbsp;AJ1&nbsp;反转黑红禁</p>
                        <p>穿&nbsp;低帮</p>
                        <span>促销价：￥4749.00元</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/shoes-boutique/18.jpg" >

                        <p>Air&nbsp;Jordan4&nbsp;AJ4&nbsp;2020白红&nbsp;金属扣</p>
                        <p>篮球鞋</p>
                        <span>新新价：￥1499.00元</span>


                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./img/shoes-boutique/14.jpg" >

                        <p>AIR&nbsp;JORDAN&nbsp;1&nbsp;LOW&nbsp;AJ1黑白粉</p>
                        <p>小情人节&nbsp;低帮</p>
                        <span>促销价：￥648.00元</span>
                    </a>
                </li>
            </ul>
        </div>
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
    <img src="./img/WeChat100.png" >
</div>
<div class="footer-top">
    <a href="javascript:window.scrollTo(0,0)"><i class="iconfont icon-fanhuidingbu"></i>返回顶部</a>
</div>
<script>
    function myFunction(){
        <%if (!request.getParameter("user").equals("null")){%>
            window.location.href="order.jsp?name=<%=request.getParameter("user")%>"
            <%} else {%>
            window.location.href="login.do"
            <%}%>
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
<script type="text/javascript" src="./cart.js">
</script>
</body>

</html>

