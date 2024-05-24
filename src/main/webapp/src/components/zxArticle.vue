<template>
        <article class="col-md-7">
                <!-- 中间 -->
                <zxTop></zxTop>
                <zxBottom></zxBottom>
                <zxBottom></zxBottom>
                <zxBottom></zxBottom>
                <zxBottom></zxBottom>
            </article>
</template>

<script>
import zxTop from './zxTop.vue'
import zxBottom from './zxBottom.vue'
export default {
    name: 'zxArticle',
    components:{zxTop,zxBottom}
    }
</script>

<style scoped>

</style>