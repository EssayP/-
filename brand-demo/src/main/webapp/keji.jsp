<%--
  Created by IntelliJ IDEA.
  User: 小屁的爱机
  Date: 2023/2/24
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="zh-CN">

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
    <!-- swiper -->
    <link rel="stylesheet" href="./src/swiper-bundle.min.css">
    <!-- 引入 layui.css -->
    <link rel="stylesheet" href="//unpkg.com/layui@2.6.8/dist/css/layui.css">

    <!-- 引入 layui.js -->
    <script src="//unpkg.com/layui@2.6.8/dist/layui.js"></script>
    <style>
        .swiper {
            width: 100%;
            height: 100%;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;

            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }

        .swiper-slide img {
            display: block;
            width: 100%;
            height: 350px;
            object-fit: cover;
        }
    </style>
    <style>
        .layui-anim {
            animation-duration: 1s;
        }

        a {
            color: #fff;
        }

        .layui-panel {
            box-shadow: 0 0 3px 5px rgb(175, 178, 181);
            margin-top: 15px;
            transition: 1s;
        }

        .layui-panel:hover {
            scale: 1.1;
        }
    </style>
</head>

<body>
<div class="selfdefine">
    <div class="selfdefine2">益农科技<a class="glyphicon glyphicon-user" id="head" href="login.html"></a></div>
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
                        <%--<li><a href="reco.html" class="glyphicon glyphicon-grain">&nbsp实用技术</a></li>
                        <!-- before19.06:30 -->
                        <li><a href="#" class="glyphicon glyphicon-leaf">&nbsp品种推介</a></li>
                        <li><a href="#" class="glyphicon glyphicon-bullhorn">&nbsp成果推介</a></li>
                        <li><a href="#" class="glyphicon glyphicon-cutlery">&nbsp科技与健康</a></li>
                        <li><a href="#" class="glyphicon glyphicon-search">&nbsp信息检索</a></li>
                        <li><a href="#" class="glyphicon glyphicon-alert">&nbsp注意事项</a></li>--%>
                        <c:forEach items="${Addrs}" var="addr">
                            <c:if test="${addr.part==2}">
                                <li><a href="${addr.addr}" class="glyphicon glyphicon-leaf">&nbsp${addr.theme}</a></li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </header>


            <article class="col-md-7">
                <!-- 中间 -->
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><a href="http://cast.net.cn/kj/kjyjk/320525.html"><img
                                src="images/sci4.webp" alt=""></a></div>
                        <div class="swiper-slide"><a href="http://cast.net.cn/kj/cgtj/324137.html"><img
                                src="images/sci5.webp" alt=""></a></div>
                        <div class="swiper-slide"><a href="http://cast.net.cn/kj/cgtj/324137.html"><img
                                src="images/sci6.webp" alt=""></a></div>
                        <div class="swiper-slide"><a href="http://cast.net.cn/kj/cgtj/324137.html"><img
                                src="images/sci7.webp" alt=""></a></div>
                        <div class="swiper-slide"><a href="http://cast.net.cn/kj/cgtj/324137.html"><img
                                src="images/sci8.webp" alt=""></a></div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                </div>

                <div class="layui-anim layui-anim-up ">
                   <%-- <div class="layui-panel">
                        <div style="padding: 40px 30px;display: flex;flex-flow: row;">
                            <div class="info_left">
                                <h3>内质网分子伴侣调控埃博拉病毒复制新机制</h3>
                                <p class="text-muted">孟琳 发布于2022.11.13</p><br>
                                <p> 近日，中国农业科学院哈尔滨兽医研究所与国外高校合作，阐明了内质网分子伴侣通过内质网膜上的E3泛素连接酶RNF185调控埃博拉病毒囊膜糖蛋白合成的新机制.
                                    <br>
                                <p class="text-muted">科技/病毒/分子研究</p>
                            </div>
                            <div class="info_right"><img src="images/aibola.jpg" alt="" style="width: 400px;"></div>
                        </div>
                    </div>
                    <div class="layui-panel">
                        <div style="padding: 40px 30px;display: flex;flex-flow: row;">
                            <div class="info_left">
                                <h3>弓形虫中参与生物合成的新型自噬途径</h3>
                                <p class="text-muted">温建平 发布于2022.11.13</p>
                                <p> 该研究发现了ATG12–ATG5-ATG16L复合物存在于弓形虫中，具有促进TgATG8蛋白的脂化活性。TgATG8蛋白定位于顶质体的过程依赖于TgSNAP29/TgVAMP4-2
                                    SNARE复合物介导的囊泡融合。TgATG8保守的UDS位点对于其在顶质体上正确定位也至关重要。研究结果表明，弓形虫的自噬系统极可能参与了顶质体的靶向转运过程。另一方面，弓形虫自噬相关蛋白对于虫体持续感染也至关重要。该研究对弓形虫弱毒疫苗的研发具有指导意义。
                                <p class="text-muted">科技/生物合成/细菌真菌</p>
                            </div>
                            <div class="info_right"><img src="images/sci3.png" alt="" style="width: 400px;"></div>
                        </div>
                    </div>
                    <div class="layui-panel">
                        <div style="padding: 40px 30px;display: flex;flex-flow: row;">
                            <div class="info_left">
                                <h3>M35家族金属蛋白酶调控大丽轮枝菌毒力的作用机制</h3>
                                <p class="text-muted">陈艺 发布于2022.11.13</p>
                                <p> 近日，中国农业科学院棉花研究所棉花病害防控与风险评估创新团队研究发现了两个大丽轮枝菌M35家族金属蛋白酶VdM35-1和VdASPF2，并揭示了其通过调控大丽轮枝菌产孢、菌丝生长、孢子形态及碳源利用等，调节大丽轮枝菌的适应性和毒力，为进一步阐明大丽轮枝菌的致病机理提供了理论基础。相关研究结果发表在《微生物学波普（Microbiology
                                    Spectrum）》上。
                                <p class="text-muted">科技/蛋白酶/病毒作用机制</p>
                            </div>
                            <div class="info_right"><img src="images/sci2.jpg" alt="" style="width: 400px;"></div>
                        </div>
                    </div>--%>
                    <c:forEach items="${keJis}" var="keji" varStatus="status">
                        <c:if test="${keji.part == 1}">
                            <div class="layui-panel">
                                <div style="padding: 40px 30px;display: flex;flex-flow: row;">
                                    <div class="info_left">
                                        <h3>${keji.header}</h3>
                                        <p class="text-muted">陈艺 发布于${keji.time}</p>
                                        <p> ${keji.content}
                                        <p class="text-muted">${keji.resource}</p>
                                    </div>
                                    <div class="info_right"><img src="${keji.imgs}" alt="" style="width: 400px;"></div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
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
    <script src="./src/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper(".mySwiper", {
            spaceBetween: 10,
            autoplay: {
                delay: 2000, //自动切换的时间间隔，单位ms
                disableOnInteraction: false //用户操作swiper之后，是否禁止autoplay
            },
            cssMode: true,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            mousewheel: true,
            keyboard: true,
        });
    </script>
</div>
</body>

</html>
