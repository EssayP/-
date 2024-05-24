<template>
    <div class="news clearfix">
        <ul>
           <zxTopLeft></zxTopLeft>
           <zxTopRight></zxTopRight>
           <zxTopRight></zxTopRight>
           <zxTopRight></zxTopRight>
           <zxTopRight></zxTopRight>
           <!-- <li>
               <a href="http://cast.net.cn/kj/syjs/zzyjs/324670.html">
                   <img src="../assets/skywheat.webp" alt="">
                   <p>冬春棚菜如何浇水才科学？</p>
               </a>
           </li> -->
        </ul>
    </div>
    
</template>

<script>
import zxTopLeft from './zxTopLeft.vue'
import zxTopRight from './zxTopRight.vue'
export default {
    name: 'zxTop',
    components:{zxTopLeft,zxTopRight}
}
</script>

<style scoped>
        .news li {
      float: left;
      width: 25%;
      height: 125px;
      padding-right: 10px;
  }

  .news li a {
      position: relative;
      display: block;
      width: 100%;
      height: 100%;
  }

  .news li:nth-child(1) {
      width: 50%;
      height: 250px;
      padding-right: 10px;
  }

  .news li:nth-child(1) p {
      line-height: 40px;
      font-size: 20px;
  }


  .news li a img {
      width: 100%;
      height: 100%;
  }

  .news li a p {
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