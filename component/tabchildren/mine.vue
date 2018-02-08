<template>
  <div>
      <xheader/>
      <div class="minebg">
      	<div class="minehead">
      		<div class="left">
      			<p>
      				<img :src="myinfo.img"/>
      			</p>
      			<p>
      				<span v-text="myinfo.name"></span>
      				<span v-text="myinfo.phone"></span>
      			</p>
      		</div>
      		<div class="right">
      			<a href="#/personalinfo">个人信息管理<span>></span></a>
      		</div>
      	</div>
      	<!--间隔条-->
	  		<p class="splitebar"></p>
      	<div class="minebody">
      		<p v-for="m in mylist">
      			<i :class="m.icon"></i>
      			<span v-text="m.con"></span>
      		</p>
      	</div>
      </div>
  </div>
</template>
<script>
import xheader from "../common/xheader.vue";
import minebg from "../../img/spring.jpg";
import sumerImg from "../../img/sumer.jpg";
export default {
  data(){
      return {
          myinfo:{
          	img:sumerImg,
          	name:"阿拉德",
          	phone:"12345678900"
          },
          mylist:[
          	{
          		icon:"iconfont icon-dingdan",
          		con:"我的订单"
          	},
          	{
          		icon:"iconfont icon-gouwuche",
          		con:"我的购物车"
          	},
          	{
          		icon:"iconfont icon-icon-test2",
          		con:"管理收货地址"
          	},
          	{
          		icon:"iconfont icon-buzutixing",
          		con:"意见反馈"
          	}
          ]
      }
  },
  components:{
  	xheader
  },
  mounted(){
  	//
  }
}
</script>
<style scoped>
.minebg{margin-top: 40px;}	
.splitebar{background: #F2F2F2;width: 100%;height: 0.75rem;margin-top:0.5rem;margin-top:0;}
.minehead{background: url(../../img/spring.jpg);display: flex;justify-content: space-between;height: 9.25rem;color: #fff;padding:0 1rem;}
.left{display: flex;justify-content: space-between;margin:1.5rem;}
.left p:nth-of-type(1){width: 3.75rem;height: 3.75rem;border-radius: 50%;overflow: hidden;border:2px solid #fff;margin-top:1rem;}
.left p:nth-of-type(1) img{display: block;width: 100%;height: 100%;}
.left p:nth-of-type(2){display: flex;flex-direction: column;justify-content:flex-start;margin:1rem 0 0 1rem;}
.left p:nth-of-type(2) span{line-height: 2rem;}
.left p:nth-of-type(2) span:nth-of-type(2){font-size: 12px;line-height: 24px;}
.right{margin:1.5rem 0;}
.right a{margin-top: 5rem;font-size: 12px;color: #fff;display: block;}
.minebody{}
.minebody p{border-bottom:1px solid #ccc;display: flex;justify-content: flex-start;height: 46px;line-height: 46px;font-size: 14px;padding:0 1rem;}
.minebody p i{margin-right:1rem;}
.minebody p span{flex: 1;}
</style>


