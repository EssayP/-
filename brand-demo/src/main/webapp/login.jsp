<%--
  Created by IntelliJ IDEA.
  User: 小屁的爱机
  Date: 2023/2/25
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Swiper demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="./src/swiper-bundle.min.css" />

    <!-- 引入 layui.css -->
    <link rel="stylesheet" href="//unpkg.com/layui@2.6.8/dist/css/layui.css">

    <!-- 引入 layui.js -->
    <script src="//unpkg.com/layui@2.6.8/dist/layui.js"></script>


    <!-- Demo styles -->
    <style>
        html,
        body {
            position: relative;
            height: 100%;

        }

        body {
            background-color: cadetblue;
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
            font-size: 14px;
            color: #000;
            margin: 0;
            padding: 0;
        }

        .swiper {
            width: 500px;
            height: 500px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -250px;
            margin-top: -240px;
        }

        .swiper-slide {
            background-position: center;
            background-size: cover;
        }
    </style>
    <style>
        h1 {
            font-size: 50px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }

        .judge {
            display: flex;
            margin-top: 8px;
            text-align: center;
        }

        .son {
            width: 33.3%;
            border: 1px solid rgb(14, 13, 13);
            font-size: larger;
            font-weight: bold;
        }

        .eas {
            background-color: rgba(69, 233, 162, 0.849);
        }

        .mid {
            background-color: burlywood;
        }

        .dif {
            background-color: brown;
        }
    </style>
</head>

<body>
<!-- Swiper -->
<div class="swiper mySwiper">
    <div class="swiper-wrapper">
        <div class="swiper-slide">
            <h1>登录</h1>

            <form class="layui-form" action="/brand-demo/loginServlet" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">账号</label>
                    <div class="layui-input-block">
                        <input type="text" name="title" value="${cookie.username.value}" required lay-verify="required" placeholder="请输入账号"
                               autocomplete="off" class="layui-input">
                    </div>
                    <div id="errorMsg">${login_msg} ${register_msg}</div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="password" value="${cookie.password.value}" required lay-verify="required" placeholder="请输入密码"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">记住我</label>
                   <input id="remember" name="remember" value="1" type="checkbox">
                </div>
                <!--<div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo" id="loging">登录</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>-->
                <div id="subDiv">
                    <input type="submit" class="button" value="login up">
                    <input type="reset" class="button" value="reset">
                </div>
            </form>
        </div>
        <div class="swiper-slide">
            <h1>注册</h1>
            <form class="layui-form" action="/brand-demo/registerServlet" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">账号</label>
                    <div class="layui-input-block">
                        <input type="text" name="title" required lay-verify="required" placeholder="请输入账号"
                               autocomplete="off" class="layui-input">
                        <span id="username_err" class="err_msg" >${register_msg}</span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="password" required lay-verify="required" placeholder="请输入密码"
                               autocomplete="off" class="layui-input" id="in">
                    </div>
                    <div class="judge">
                        <div class="son">弱</div>
                        <div class="son">中</div>
                        <div class="son">强</div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">验证码</label>
                    <div class="layui-input-block">
                        <input name="checkCode" type="text" id="checkCode">
                        <img id="checkCodeImg" src="/brand-demo/checkCodeServlet">
                        <a href="#" id="changeImg" >看不清？</a>
                    </div>
                </div>

                <!--<div class="layui-form-item">
                    <label class="layui-form-label">确认密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="password" required lay-verify="required" placeholder="请再次输入密码"
                            autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">所在城市</label>
                    <div class="layui-input-block">
                        <select name="city" lay-verify="required">
                            <option value=""></option>
                            <option value="0">北京</option>
                            <option value="1">上海</option>
                            <option value="2">广州</option>
                            <option value="3">深圳</option>
                            <option value="4">杭州</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-block">
                        <input type="radio" name="sex" value="男" title="男">
                        <input type="radio" name="sex" value="女" title="女" checked>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo">注册</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>-->
                <div class="buttons">
                    <input value="注 册" type="submit" id="reg_btn">
                </div>
            </form>
        </div>
    </div>
    <div class="swiper-pagination"></div>
</div>

<!-- Swiper JS -->
<script src="./src/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
    document.getElementById("changeImg").onclick = function () {
        document.getElementById("checkCodeImg").src = "/brand-demo/checkCodeServlet?"+new Date().getMilliseconds();
    }
    var swiper = new Swiper(".mySwiper", {
        effect: "cube",
        grabCursor: true,
        cubeEffect: {
            shadow: true,
            slideShadows: true,
            shadowOffset: 20,
            shadowScale: 0.94,
        },
        pagination: {
            el: ".swiper-pagination",
        },
    });
    let loging = document.querySelector("#loging")
    loging.onclick = function () {
        location.href = "./homepage.html"
    }
    let inputt = document.querySelector('#in')
    var reg1 = /\d/           //判断有无数字
    var reg2 = /[a-z]/i       //判断有无字母
    var reg3 = /[!@#$%^&=+()`~]/   //判断有无特殊字符
    let sons = document.querySelectorAll(".son")
    // oninput在用户输入的时候（即修改input值）触发
    inputt.oninput = function (e) {
        sons[0].classList.remove("eas")
        sons[1].classList.remove("mid")
        sons[2].classList.remove("dif")
        console.log(this.value);
        // console.log(e.target.value);
        var level = 0;
        if (reg1.test(this.value)) level++;
        if (reg2.test(this.value)) level++;
        if (reg3.test(this.value)) level++;

        if (level >= 1) sons[0].className += " eas"
        if (level >= 2) sons[1].className += " mid"
        if (level >= 3) sons[2].className += " dif"

    }

</script>

</body>

</html>
