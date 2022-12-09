<%--
  Created by IntelliJ IDEA.
  User: 20716
  Date: 2022/12/9
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="./css/public.css"/>
    <link rel="stylesheet" type="text/css" href="./css/font/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="./css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="./css/index.css"/>
    <link rel="stylesheet" type="text/css" href="./css/assets/css/top-header-menu.css"/>
    <meta charset="utf-8">
    <title>首页</title>
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
        <li><img src="./img/logo.png"  alt="logo"></li>
        <li>
            <div >
                <input type="text" name=""  value="" /><input type="button" name="" id="" value="搜索" />
            </div>
        </li>
        <li>
            <div class="cart">
                <img src="./img/88.png"  alt="图片"/>
                <a href="../cart/cart.html">
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
    <p><img src="./img/line/92.png" ></p>
</div>
<!-- 右侧内容 -->
<div class="">

</div>


<!-- 中间内容 -->
<div class="content">

    <!-- 轮播图 -->
    <div class="w banner">

    </div>

    <!-- 轮播图下面三个图 -->
    <div class="w new">
        <ul>
            <li>
                <ul>
                    <li><a href=""><img src="./img/new_pro_img/1.jpg" /></a></li>
                    <li><p class="big">新品上架</p><p>当季潮流新品，一件都不错过！</p></li>
                </ul>
            </li>
            <li>
                <ul>
                    <li><a href=""><img src="./img/new_pro_img/2.jpg" /></a></li>
                    <li><p class="big">新品预售</p><p>提前预购，一发行你就能拥有它！</p></li>
                </ul>
            </li>
            <li>
                <ul>
                    <li><a href=""><img src="./img/new_pro_img/3.jpg" /></a></li>
                    <li><p class="big">新新特价</p><p>特价福利，只有在这里才会拥有哦！</p></li>
                </ul>
            </li>
        </ul>

    </div>

    <!-- 球鞋精品shoes 开头 -->
    <div class="w shoes-head">
        <a class="one" href="#">球鞋精品</a>
        <img src="./img/line/92.png" >
        <a class="two" href="#">Shoes&nbsp;boutique</a>
        <a class="three" href="#">MORE</a>

    </div>
    <!-- shoes 内容-->
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
                    <p>Air&nbsp;Jordan&nbsp;Mid&nbsp;Aj1烟灰小&nbsp;Dior</p>
                    <p>灰白伯爵中帮</p>
                    <span>新新价：￥1299.00元</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./img/shoes-boutique/14.jpg" >

                    <p>AIR&nbsp;JORDAN&nbsp;1&nbsp;LOW&nbsp;AJ1&nbsp;黑白粉</p>
                    <p>小情人节&nbsp;低帮</p>
                    <span>促销价：￥648.00元</span>


                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./img/shoes-boutique/15.jpg" >

                    <p>Air&nbsp;Jordan&nbsp;34&nbsp;Infrared&nbsp;23&nbsp;AJ34</p>
                    <p>黑红激光&nbsp;特价</p>
                    <span>促销价：￥849.00元</span>


                </a>
            </li>
            <li><a href="#">
                <img src="./img/shoes-boutique/16.jpg" >

                <p>NikeAir&nbsp;More&nbsp;Uptempo&nbsp;皮蓬&nbsp;</p>
                <p>熊猫&nbsp;大AIR&nbsp;情侣款款</p>
                <span>促销价：￥1299.00元</span>


            </a>
            </li>
            <li>
                <a href="#">
                    <img src="./img/shoes-boutique/17.jpg" >

                    <p>Nike&nbsp;Dunk&nbsp;LowSP&nbsp;Champ&nbsp;Colors</p>
                    <p>芬达配色板鞋</p>
                    <span>新新价：￥1999.00元</span>


                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./img/shoes-boutique/18.jpg" >

                    <p>Air&nbsp;Jordan4&nbsp;AJ4&nbsp;2020白红&nbsp;</p>
                    <p>金属扣&nbsp;篮球鞋</p>
                    <span>新新价：￥1499.00元</span>


                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./img/shoes-boutique/19.jpg" >

                    <p>Air&nbsp;Jordan&nbsp;1&nbsp;Low&nbsp;AJ1&nbsp;反转&nbsp;黑红</p>
                    <p>禁&nbsp;穿&nbsp;低帮</p>
                    <span>促销价：￥4749.00元</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./img/shoes-boutique/18.jpg" >

                    <p>Air&nbsp;Jordan4&nbsp;AJ4&nbsp;2020白红&nbsp;</p>
                    <p>金属扣&nbsp;篮球鞋</p>
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

    <!-- 球鞋精品 尾部 -->
    <div class="w shoes-bottom">
        <ul>
            <li><a href="#"><img src="./img/shoes-boutique/20.jpg" ></a></li>
            <li><a href="#"><img src="./img/shoes-boutique/21.jpg" ></a></li>
        </ul>
    </div>

    <!-- X系列 -->
    <div class="w x">
        <div class="left-list">
            <a class="one" href="#">X-GIRLS</a>
            <a class="three" href="#">X-LAB</a>
            <img class="img1" src="./img/line/92.png" >


        </div>
        <div class="right-list">
            <a class="one" href="#">跑步休闲</a>
            <a class="three" href="#">MORE</a>
            <img class="img1" src="./img/line/92.png" >

        </div>
    </div>
    <ul class="w x-img">
        <li class="left"><a href="#"><img src="./img/xlist/1.jpg" ></a>
            <a href="#"><img src="./img/xlist/2.jpg" ></a></li>
        <li class="right"><a href="#"><img src="./img/xlist/3.jpg" ></a></li>
    </ul>

    <!--  跑步休闲 开头 -->
    <div class="w retro-head">
        <a class="one" href="#">跑步休闲</a>
        <img src="./img/line/92.png" >
        <a class="two" href="#">Retro&nbsp;casual</a>
        <a class="three" href="#">MORE</a>

    </div>
    <!-- 跑步休闲 内容-->
    <div class="w retro">
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
                    <img src="./img/retro casual/10.jpg" >

                    <p>Adidas&nbsp;Yeezy700&nbsp;V3黑魂黑武士</p>
                    <p>3M反光复古老爹鞋跑步鞋特价</p>
                    <span>促销价：￥2999.00元</span>


                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./img/retro casual/09.jpg" >

                    <p>Nike&nbsp;Air&nbsp;Max&nbsp;97珍珠白炫彩97子</p>
                    <p>弹&nbsp;女气垫跑鞋&nbsp;特价</p>
                    <span>促销价：￥1299.00元</span>


                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./img/retro casual/08.jpg" >

                    <p>Adidas&nbsp;Yeezy&nbsp;350V2&nbsp;灰橙&nbsp;侧透</p>
                    <p>满天星椰子跑步鞋</p>
                    <span>促销价：￥1949.00元</span>


                </a>
            </li>
            <li><a href="#">
                <img src="./img/retro casual/07.jpg" >

                <p>NikeAir&nbsp;More&nbsp;Uptempo&nbsp;皮蓬</p>
                <p>熊猫大AIR&nbsp;情侣款款</p>
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
            <li>
                <a href="#">
                    <img src="./img/retro casual/05.jpg" >

                    <p>Nike&nbsp;React&nbsp;4&nbsp;Vision&nbsp;机能跑鞋&nbsp;</p>
                    <p>特价&nbsp;跑鞋</p>
                    <span>促销价：￥599.00元</span>


                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./img/retro casual/04.jpg" >

                    <p>Nike&nbsp;Air&nbsp;Force&nbsp;AF1&nbsp;铜钱&nbsp;2020</p>
                    <p>新年&nbsp;糖果&nbsp;薰衣草</p>
                    <span>新新价：￥1099.00元</span>


                </a>
            </li>
            <li>
                <a href="#">
                    <img src="./img/retro casual/06.jpg" >
                    <p>adidas&nbsp;2020&nbsp;Ultra&nbsp;Boost&nbsp;黑魂</p>
                    <p>&nbsp;特价</p>
                    <span>促销价：￥849.00元</span>
                </a>
            </li>

            <li>
                <a href="#">
                    <img src="./img/retro casual/10.jpg" >

                    <p>AIR&nbsp;JORDAN&nbsp;1&nbsp;LOW&nbsp;AJ1黑白粉</p>
                    <p>小情人节&nbsp;低帮</p>
                    <span>促销价：￥648.00元</span>


                </a>
            </li>
        </ul>

    </div>

    <!-- 图片切换 -->
    <div class="w tab man">
        <div class="left">
            <p>真假鉴别</p>
        </div>

        <ul class="tab-content">
            <li class="active">
                <ul>
                    <li><a href=""><img src="./img/tab/01.jpg" ><p>#X-GIRL#泡沫</p></a></li>
                    <li><a href=""><img src="./img/tab/02.jpg" ><p>#X-GIRL#昭华易逝</p></a></li>
                    <li><a href=""><img src="./img/tab/05.jpg" ><p>#X-GIRL#神奇女侠</p></a></li>
                    <li><a href=""><img src="./img/tab/04.jpg" ><p>#X-GIRL#迈过界限</p></a></li>
                    <li><a href=""><img src="./img/tab/05.jpg" ><p>#X-GIRL#蓝朋友</p></a></li>
                </ul>
            </li>
            <li>
                <ul>
                    <li><a href=""><img src="./img/tab/01.jpg" ><p>#X-GIRL#泡沫</p></a></li>
                    <li><a href=""><img src="./img/tab/02.jpg" ><p>#X-GIRL#昭华易逝</p></a></li>
                    <li><a href=""><img src="./img/tab/04.jpg" ><p>#X-GIRL#迈过界限</p></a></li>
                    <li><a href=""><img src="./img/tab/05.jpg" ><p>#X-GIRL#蓝朋友</p></a></li>
                </ul>
            </li>
        </ul>
        <ul class="tab-title">
            <li class="active"><input type="button" name="" id="" value="1" class="form"/></li>
            <li><input type="button" name="" id="" value="2" class="form"/></li>
            <img src="./img/tab/06.gif" >
        </ul>
    </div>

    <!-- clothing 头-->
    <div class="w clothing-head">
        <a class="one" href="#">服装配饰</a>
        <img src="./img/line/92.png" >
        <a class="two" href="#">Clothing&nbsp;Accessories</a>
        <a class="three" href="#">MORE</a>

    </div>
    <!-- clothing 内容 -->
    <div class="w clothing">
        <ul>
            <li>
                <a href="#">
                    <img src="./img/clothing/01.jpg" >
                    <p>AAPE&nbsp;夏&nbsp;喷墨大猿人头&nbsp;胶印字母</p>
                    <p>中长款&nbsp;女装&nbsp;Tee&nbsp;黑色&nbsp;特价</p>
                    <span>促销价：￥149.00元</span>
                </a>
            </li>
            <li>
                <a href="#"><img src="./img/clothing/02.jpg" >
                    <p>AAPE&nbsp;19秋冬&nbsp;猿颜x-bone圆章字母</p>
                    <p>印花连帽卫衣3586&nbsp;特价</p>
                    <span>促销价：￥399.00元</span>
                </a>
            </li>
            <li>
                <a href="#"><img src="./img/clothing/03.jpg" >
                    <p>CDG&nbsp;PLAY&nbsp;川久保玲爱心印花刺绣</p>
                    <p>眼睛&nbsp;圣诞限定&nbsp;特价</p>
                    <span>促销价：￥299.00元</span>
                </a>
            </li>
            <li>
                <a href="#"><img src="./img/clothing/04.jpg" >
                    <p>BOY&nbsp;LONDON&nbsp;金色飞鹰男&nbsp;女款</p>
                    <p>特价</p>
                    <span>促销价：￥299.00元</span>
                </a>
            </li>
        </ul>
    </div>
    <!-- clothing 尾部 -->
    <div class="w clothing-bottom">
        <ul>
            <li><a href="#"><img src="./img/clothing/05.jpg" ></a></li>
            <li><a href="#"><img src="./img/clothing/06.jpg" ></a></li>
        </ul>
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
<script type="text/javascript" src="./css/assets/js/jQuery-3.4.0.js">

</script>
<script type="text/javascript" src="./css/assets/js/data.js">
</script>
<script type="text/javascript" src="./js/index.js">

</script>
<script type="text/javascript" src="./css/assets/js/menu.js">

</script>
</body>
</html>

