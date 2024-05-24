<%--
  Created by IntelliJ IDEA.
  User: 小屁的爱机
  Date: 2023/2/24
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="zh-CN" xmlns:border-bottom="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>案例</title>
    <!-- 引入bs样式文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <!-- 引入自己的样式文件 -->
    <link rel="stylesheet" href="style/zixun.css">
    <style>
    </style>
</head>

<body>
<div class="selfdefine">
    <div class="selfdefine2">益农资讯
        <a class="glyphicon glyphicon-user" id="head" href="login.html"></a>
    </div>

</div>
<div class="container">
    <div class="row">
        <header class="col-md-2">
            <!-- 左侧 -->
            <div class="logo">
                <a href="#">
                    <img src="images/导航栏.webp" alt="">
                    <!-- 18.03:50 -->
                </a>
            </div>
            <div class="nav">
                <ul>
                    <%--<li><a href="#" class="glyphicon glyphicon-grain">&nbsp作物信息</a></li>
                    <li><a href="http://www.weather.com.cn/forecast/"
                           class="glyphicon glyphicon-cloud">&nbsp天气预报</a></li>
                    <li><a href="price.html" class="glyphicon glyphicon-yen">&nbsp价格走势</a></li>
                    <li><a href="#" class="glyphicon glyphicon-search">&nbsp信息检索</a></li>
                    <li><a href="#" class="glyphicon glyphicon-alert">&nbsp注意事项</a></li>--%>

                        <c:forEach items="${addrs}" var="address" varStatus="status">
                    <c:if test="${address.part == 0}">
                        <li><a href="${address.addr}"
                               class="glyphicon glyphicon-cloud">&nbsp${address.theme}</a></li>
                    </c:if>

                </c:forEach>
                </ul>
                <<%--ul>
                    &lt;%&ndash;<li><a href="#" class="glyphicon glyphicon-grain">&nbsp作物信息</a></li>
                    <li><a href="http://www.weather.com.cn/forecast/"
                           class="glyphicon glyphicon-cloud">&nbsp天气预报</a></li>
                    <li><a href="price.html" class="glyphicon glyphicon-yen">&nbsp价格走势</a></li>
                    <li><a href="#" class="glyphicon glyphicon-search">&nbsp信息检索</a></li>
                    <li><a href="#" class="glyphicon glyphicon-alert">&nbsp注意事项</a></li>&ndash;%&gt;
                    <c:forEach items="addrs" var="Addr" varStatus="status">
                       <c:if test="${Addr.part == 0}">
                           <li><a href="${Addr.addr}"
                                  class="glyphicon glyphicon-cloud">&nbsp${Addr.theme}</a></li>
                       </c:if>
                    </c:forEach>
                </ul>--%>
            </div>
        </header>


        <article class="col-md-7">
            <!-- 中间 -->
            <div class="news clearfix">
                <ul>
                    <%--<li>
                        <a href="http://cast.net.cn/zx/nsqx/324659.html">
                            <img src="images/landscape1.webp" alt="">
                            <p>全国大部维持偏暖局面 华南雨水或贯穿本周</p>
                        </a>
                    </li>
                    <li>
                        <a href="http://cast.net.cn/kj/syjs/zzyjs/324670.html">
                            <img src="images/skywheat.webp" alt="">
                            <p>冬春棚菜如何浇水才科学？</p>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.gengzhongbang.com/article-442187-1.html">
                            <img src="images/sunrise.webp" alt="">
                            <p>保护地西红柿人工授粉技法</p>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.cast.net.cn/kj/syjs/zzyjs/324329.html">
                            <img src="images/farm6.webp" alt="">
                            <p>雪后田管莫放松 小麦适时增温保墒</p>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.agri.cn/province/nmg/syjs/jgjs/201711/t20171103_5860208.htm">
                            <img src="images/farm1.webp" alt="">
                            <p>酸白菜的加工技术</p>
                        </a>
                    </li>--%>
                        <c:forEach items="${addrs}" var="address">
                            <c:if test="${address.part==10}">
                                <li>
                                    <a href="${address.addr}">
                                        <img src="${address.image}" alt="">
                                        <p>${address.theme}</p>
                                    </a>
                                </li>
                            </c:if>
                        </c:forEach>
                </ul>
            </div>
            <div class="publish">
                <div class="row">
                    <!-- col-sm:小屏以上 -->
                    <%--<div class="info_list">
                        <div class="col-sm-7" border-bottom:1px solid>
                            <h3>小麦黄苗 对症下药巧防治(一)</h3>
                            <p class="text-muted">卢黄欢 发布于2022.11.13</p>
                            <p> 一、渍害黄苗。
                                地势低洼、排水不良、地下水位过高等，因长期渍水，土壤中有机质分解缓慢，养分不能及时被麦苗吸收。同时，根系受到渍害，发育差，扎根浅，吸收能力差，因而引起麦苗发黄，甚至出现烂根死苗现象。
                                应及时浅沟排除渍害。降低地下水位，并补施适量复合肥促进恢复生长。
                            <p class="text-muted">资讯/农业小技巧/小麦的种植</p>
                        </div>
                        <div class="col-sm-5">
                            <img src="images/farm3.webp" alt="">
                        </div>
                    </div>
                    <div class="col-sm-7">
                        <h3>小麦黄苗 对症下药巧防治(二)</h3>
                        <p class="text-muted">邓戬 发布于2022.11.13</p>
                        <p> 二、虫害黄苗。麦蚜为害后，轻则心叶萎缩，停滞生长，重则叶片发黄，失水枯萎，应及时选用敌敌畏、敌百虫、乐果等药剂加1000倍的食用醋混合喷杀，在喷药时加2%的尿素，可促进麦苗转化。
                        <p class="text-muted">资讯/农业小技巧/小麦的种植</p>
                    </div>
                    <div class="col-sm-5">
                        <img src="images/truck.webp" alt="">
                    </div>
                    <div class="col-sm-7">
                        <h3>小麦黄苗 对症下药巧防治(三)</h3>
                        <p class="text-muted">孟琳 发布于2022.11.13</p>
                        <p>三、缺氮黄苗。表现为麦苗均匀地褪绿变黄，叶尖干枯，下部老叶发黄并枯死，植株矮小叶片弱，分蘖少。这种黄苗多出现在土壤贫瘠、底肥不足或追肥不及时的地块。
                            对因缺氧引起的黄苗，要及时追施碳铵、尿素、人粪尿等速效氮肥，补气促长。
                        <p class="text-muted">资讯/农业小技巧/小麦的种植</p>
                    </div>
                    <div class="col-sm-5">
                        <img src="images/reap.webp" alt="">
                    </div>--%>
                    <c:forEach items="${ziXuns}" var="zixun" varStatus="status">
                        <c:if test="${zixun.part == 0}">
                            <div class="col-sm-7" border-bottom:1px solid>
                                <h3>${zixun.header}</h3>
                                <p class="text-muted">卢黄欢 发布于${zixun.time}</p>
                                <p> ${zixun.content}
                                <p class="text-muted">${zixun.resource}</p>
                            </div>
                            <div class="col-sm-5">
                                <img src="${zixun.imgs}" alt="">
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>



        </article>

        <aside class="col-md-3">
            <a href="https://graph.baidu.com/pcpage/index?tpl_from=pc" class="hot" target="_blank">
                <img src="images/camara.webp" alt="" width=100%; class="img-circle">
            </a>
        </aside>
    </div>


</div>
<script src="https://cdn.jsdelivr.cn/npm/jquery@1.12.4/dist/jquery.min.js"
        integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
        integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
        crossorigin="anonymous"></script>

</body>

</html>
