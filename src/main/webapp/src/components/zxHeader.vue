<template>
    <header class="col-md-2">
                <!-- 左侧 -->
                <div class="logo">
                    <a href="#">
                        <img src="../assets/导航栏.webp" alt="">
                        <!-- 18.03:50 -->
                    </a>
                </div>
                <div class="nav">
                    <ul>
                        <li><a href="#" class="glyphicon glyphicon-grain">&nbsp;作物信息</a></li>
                        <li><a href="http://www.weather.com.cn/forecast/"
                                class="glyphicon glyphicon-cloud">&nbsp;天气预报</a></li>
                        <li><a href="price.html" class="glyphicon glyphicon-yen">&nbsp;价格走势</a></li>
                        <li><a href="#" class="glyphicon glyphicon-search">&nbsp;信息检索</a></li>
                        <li><a href="#" class="glyphicon glyphicon-alert">&nbsp;注意事项</a></li>
                    </ul>
                </div>
            </header>

</template>
<script>
export default {
        name:'zxHeader'
    }
</script>
<style>
    header {
      padding-left: 0 !important;
  }

  .logo img {
      width: 100%;
  }

  .nav {
      background-color: rgb(60, 82, 110);
      border-bottom: 1px solid #fff;
      text-align: center;
  }

  .nav a {
      display: block;
      height: 50px;
      line-height: 50px;
  }

  .nav a:hover {
      background-color: rgb(125, 139, 157);
  }

  ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
  }

  a {
      color: antiquewhite;
      text-decoration: none;
  }

  a:hover {
      text-decoration: none;
  }

</style>