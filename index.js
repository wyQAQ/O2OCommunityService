import Vue from "vue";
import "weui";
import "./font/iconfont.css";
import "./template/base.css";
//路由
import VueRouter from 'vue-router';
Vue.use(VueRouter);

//outer
import totaltab from "./component/outer/totaltab.vue";
import login from "./component/outer/login.vue";
import register from "./component/outer/register.vue";
import personalinfo from "./component/outer/personalinfo.vue";
import search from "./component/outer/search.vue";
import activelist from "./component/outer/activelist.vue";
import activedetail from "./component/outer/activedetail.vue";
import noticelist from "./component/outer/noticelist.vue";
import noticedetail from "./component/outer/noticedetail.vue";
import postmess from "./component/outer/postmess.vue";
import postmesslist from "./component/outer/postmesslist.vue";
import postmessdetail from "./component/outer/postmessdetail.vue";
import sellerdiscountlist from "./component/outer/sellerdiscountlist.vue";
import sellerdiscountdetail from "./component/outer/sellerdiscountdetail.vue";
import payment from "./component/outer/payment.vue";
import repairlist from "./component/outer/repairlist.vue";
import repairdetail from "./component/outer/repairdetail.vue";

//tabchildren
import shouye from "./component/tabchildren/shouye.vue";
import service from "./component/tabchildren/service.vue";
import community from "./component/tabchildren/community.vue";
import mine from "./component/tabchildren/mine.vue";

//状态管理
import Vuex from 'vuex';
Vue.use(Vuex);

var router = new VueRouter({
    routes: [{
        path: "/totaltab",//四个选项
        component: totaltab,
        children: [{
            path: 'shouye',//首页
            component: shouye
        }, {
            path: 'service',//服务
            component: service
        }, {
            path: 'community',//社区
            component: community
        }, {
            path: 'mine',//我的
            component: mine
        }]
    }, 
    {
        path: "/login",//登录
        component: login
    },
    {
        path: "/register",//注册
        component: register
    },
    {
        path: "/personalinfo",//我的信息详情页
        component: personalinfo
    },
    {
        path: "/search",//放大镜查询页
        component: search
    },
    {
        path: "/activelist",//活动列表页
        component: activelist
    },
    {
        path:"/activedetail",//活动详情页
        component:activedetail
    },
    {
        path: "/noticelist",//社区公告列表页
        component: noticelist
    },
    {
        path:"/postmesslist",//帖子列表
        component:postmesslist
    },
    {
        path:"/postmessdetail",//帖子详情
        component:postmessdetail
    },
    {
        path:"/postmess",//我要发帖
        component:postmess
    },
    {
        path:"/noticedetail",//社区公告详情页
        component:noticedetail
    },
    {
        path:"/sellerdiscountlist",//商家优惠信息列表
        component:sellerdiscountlist
    },
    {
        path:"/sellerdiscountdetail",//商家优惠信息详情页
        component:sellerdiscountdetail
    },
    {
        path:"/payment",//生活缴费页
        component:payment
    },
    {
        path:"/repairlist",//维修服务列表
        component:repairlist
    },
    {
        path:"/repairdetail",//维修服务详情
        component:repairdetail
    },
    // 默认进入页面的时候跳转到
    {
        path: '/',
        redirect: '/totaltab/shouye'
    }]
})

//配置状态
var store = new Vuex.Store({
    state: {
        pagetitle:"首页",
        lefticon:"iconfont icon-icon-test6",
        rightcon:"iconfont icon-icon-test9",
        address:"睿城"
    }
})
new Vue({
    el: "#app",
    template: `
        <div id="box">
            <router-view></router-view>
        </div> 
    `,
    router,
    store
})