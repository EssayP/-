//引入Vue
import Vue from 'vue'
//引入App
import App from './App.vue'
Vue.config.productionTip = false
// import 'bootstrap/dist/css/bootstrap.min.css'
// import 'bootstrap/dist/js/bootstrap.min'

// 创建Vue实例
new Vue({
    // el: '#App',
    // render: h => (h)
    render: h => h(App)
    // router
}).$mount('#app')

