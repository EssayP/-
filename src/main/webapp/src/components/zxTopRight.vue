<template>
   <li>
           <a href="http://cast.net.cn/kj/syjs/zzyjs/324670.html">
               <img src="../assets/skywheat.webp" alt="">
               <p>冬春棚菜如何浇水才科学？</p>
           </a>
    </li>
</template>

<script>
export default {

}
</script>

<style scoped>
/* 这里因为组件拆分的缘故删除了原css代码中的.news选择器,即原来应该在现在的基础上都加上.news */
    li {
      float: left;
      width: 25%;
      height: 125px;
      padding-right: 10px;
  }

  li a {
      position: relative;
      display: block;
      width: 100%;
      height: 100%;
  }
  .li{
      line-height: 40px;
      font-size: 20px;
  }
  li a img {
      width: 100%;
      height: 100%;
  }

  li a p {
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 40px;
      padding: 0 10px;
      background-color: rgba(0, 0, 0, .5);
      color: #fff;
      margin-bottom: 0;
  }
</style>