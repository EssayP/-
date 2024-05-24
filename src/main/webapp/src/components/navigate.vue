<template>
     <div class="selfdefine">
        <div class="selfdefine2">益农资讯
            <a class="glyphicon glyphicon-user" id="head" href="login.html"></a>
        </div>
    </div>
</template>
<script>
export default {
        name:'navigate'
    }
</script>
<style>
    .selfdefine {
      background-color: rgb(60, 82, 110);
      height: 40px;

  }

  .selfdefine2 {
      color: antiquewhite;
      font-size: 25px;
      padding-left: 40px;
      padding-top: 5px;
  }

  #head {
      position: absolute;
      right: 20px;
      top: 8px;
      color: azure;
      font-size: 23px;
  }

  #head:hover {
      color: rgb(89, 147, 169);
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