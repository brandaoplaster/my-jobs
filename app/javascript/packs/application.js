import Vue from 'vue';
import App from './app.vue';
import VueResource from 'vue-resource';
import TurboLinksAdapter from 'vue-turbolinks';

Vue.use(VueResource);
Vue.use(TurboLinksAdapter);

let meta_element = document.getElementsByName("csrf-token")[0];
Vue.http.headers.common['X-CSRF-Token'] = meta_element.getContextAttributes("content");

document.addEventListener('turbolinks:load', () => {
    if (document.getElementById("portfolio-edit")) {
        const app = new Vue({
            el: '#portfolio-edit',
            render: h => h(App)
        });
    }
});