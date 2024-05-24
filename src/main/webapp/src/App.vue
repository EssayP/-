<template>
  <div id="app">
    <navigate></navigate>
    <div class="container">
        <div class="row">
            <zxHeader></zxHeader>
            <zxArticle></zxArticle>
            <zxAside></zxAside>
        </div>
    </div>
  </div>
</template>

<script>
//引入组件
import navigate from './components/navigate'
import zxHeader from './components/zxHeader'
import zxArticle from './components/zxArticle'
import zxAside from './components/zxAside'
export default {
    name: 'App',
    components:{navigate,zxHeader,zxArticle,zxAside}
}
</script>

<style>
  /*修改container的最大宽度为1280*/
  @media screen and (min-width:1280px) {
      .container {
          width: 1280px;
      }
  }
</style>