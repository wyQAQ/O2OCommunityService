<template>
	<div >
		<xheader/>
	  <div class="shouye">
	  	<div class="calendar">
	  		<img src="../../img/winter.jpg"/>
	  	</div>
	  	<ul class="servelist">
	  		<a v-for="i in servelist" :href="i.href">
	  			<li >
	  				<i :class="i.icon"></i>
	  				<span v-text="i.con"></span>
	  			</li>
	  		</a>
	  	</ul>
	  	<div class="noticelistbg">
	  		<div class="noticelist">
		  		<div v-for="i in noticelist">
		  			<p>
		  				<i class="iconfont icon-buzutixing"></i>
		  				<span v-text="i"></span>
		  			</p>
		  			<p class="morenotice">
		  				<a href="#/noticelist">更多</a>
		  				<i class="iconfont icon-qianjin" style="font-size: 0.6rem;"></i>
		  			</p>
		  			
		  		</div>
		  	</div>
	  	</div>
	  	
	  </div>
	</div>
	
</template>
<script>
import xheader from "../common/xheader.vue";
import $ from "jquery";
export default {
  data(){
      return {
          calendarimg:["","","",""],
          servelist:[
          	{
          		icon:"iconfont icon-dianhua",
          		con:"管家电话",
          		href:"javascript:;"
          	},
          	{
          		icon:"iconfont icon-gouwuche",
          		con:"商家优惠",
          		href:"#/sellerdiscontlist"
          	},
          	{
          		icon:"iconfont icon-shuifei",
          		con:"生活缴费",
          		href:"#/payment"
          	},
          	{
          		icon:"iconfont icon-gongju",
          		con:"维修服务",
          		href:"#/repairlist"
          	}
          ],
          noticelist:["高空抛物温馨提醒","年假洗衣通知","巴拉巴拉巴拉","颠三倒四大","高空抛物温馨提醒"]
      }
  },
  components:{
  	xheader
  },
  mounted(){
  	var self=this;
  	var t=2.3;
  	var timer;
  	clearInterval(timer);
  	timer=setInterval(function(){
  		t+=2.3;
  		if(t>=4*2.3){
	  			t=0;
	  	}
  		$(".noticelist").animate({"top":-t+"rem"},2000,function(){
			  		t+=2.3;
			  	})
		  	},2500)
  }
}
</script>
<style scoped>
.calendar img{display:block;width:100%;height:8rem;}
.servelist{overflow: hidden;list-style: none;display: flex;justify-content: space-between;padding:0 1rem;}
.servelist li{display: flex;flex-direction: column;justify-content: space-between;align-items: center;}
.servelist li i{font-size: 1.5rem;color: #FDA413;font-weight: 500;}
.servelist li span{font-size: 0.3rem;color: #555555;}
.noticelistbg{position: relative;width: 100%;height: 2.3rem;overflow: hidden;}
.noticelist{width: 90%;font-size: 0.8rem;color: #333333;padding:0 1rem;position: absolute;top:0;left:0;}
.noticelist div{display: flex;justify-content: space-between;line-height: 2.3rem;height: 2.3rem;}
.morenotice{color: #9D9D9D;}
.morenotice a{text-decoration: none;color: #9D9D9D;}
</style>


