<template>
	<div >
		<xheader/>
	  <div class="shouye">
	  	<!--日历-->
	  	<div class="calendar winterimg" :class="seasonwhich">
	  		<div class="timenum">
	  			<p v-text="today.tday" class="tday"></p>
	  			<div class="tdym">
	  				<span v-text="today.tdate"></span>
	  				<span v-text="yearmonth"></span>
	  			</div>
	  		</div>
	  		<p class="getinactiviies"><a href="#/activelist">进入活动>></a></p>
	  	</div>
	  	<!--服务列表-->
	  	<ul class="servelist">
	  		<a v-for="i in servelist" :href="i.href">
	  			<li >
	  				<i :class="i.icon"></i>
	  				<span v-text="i.con"></span>
	  			</li>
	  		</a>
	  	</ul>
	  	<!--社区公告轮播-->
	  	<div class="noticelistbg">	
	  		<div class="noticelist">
	  			<i class="iconfont icon-buzutixing"></i>
		  		<div class="noticelistcon">
		  			<p v-for="i in noticelist">	
		  				<span v-text="i"></span>
		  			</p>	
		  		</div>
		  		<p class="morenotice">
	  				<a href="#/noticelist">更多</a>
	  				<i class="iconfont icon-qianjin" style="font-size: 0.6rem;"></i>
	  			</p>
		  	</div>
	  	</div>
	  	<!--间隔条-->
	  	<p class="splitebar"></p>
	  	<!--居家生活-->
	  	<div>
	  		<p class="homelifeservicetitle">居家生活</p>
	  		<div class="homelifeservice">
	  			<p v-for="h in homelifeservicelist">
	  				<img :src="h.img"/>
	  				<span v-text="h.txt"></span>
	  			</p>
	  		</div>
	  	</div>
	  	<!--间隔条-->
	  	<p class="splitebar"></p>
	  	<!--商家优惠-->
	  	<div class="sellerdiscountbg">
	  		<p class="homelifeservicetitle">商家优惠</p>
	  		<xgoodlist/>
	  	</div>
	  
	  </div><!--shouye end-->
	</div>
	
</template>
<script>
import xheader from "../common/xheader.vue";
import xgoodlist from "../common/xgoodlist.vue";
import $ from "jquery";
//四季背景图片
import springImg from "../../img/spring.jpg";
import sumerImg from "../../img/sumer.jpg";
import autumnImg from "../../img/autumn.jpg";
import winterImg from "../../img/winter.jpg";
//居家服务列表图片
import jujia1 from "../../img/jujia1.png";
import jujia2 from "../../img/jujia2.png";
import jujia3 from "../../img/jujia3.png";
import jujia4 from "../../img/jujia4.png";
export default {
  data(){
      return {
      	//根据当前年月判断的季节存放背景路径
      	  seasonwhich:"",
      	//当天年月日
      	  today:{
      	  	year:"",
      	  	month:"",
      	  	tday:"",
      	  	tdate:""
      	  },
      	//今天的年月变量
      	  yearmonth:"",
      	//根据四季变化的背景图
          //calendarimg:[springImg,sumerImg,autumnImg,winterImg],
        //横条服务列表
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
        //前四条社区公告
          noticelist:["高空抛物温馨提醒","年假洗衣通知","巴拉巴拉巴拉","颠三倒四大","高空抛物温馨提醒"],
        //居家生活服务
          homelifeservicelist:[
          	{
          		img:jujia1,
          		txt:"日常保洁",
          		src:""
          	},
          	{
          		img:jujia2,
          		txt:"保姆月嫂"
          	},
          	{
          		img:jujia3,
          		txt:"家电清洗"
          	},
          	{
          		img:jujia4,
          		txt:"绿植鲜花"
          	}
          ]
      }
  },
  components:{
  	xheader,
  	xgoodlist
  },
  mounted(){
  	var self=this;
  	//日历显示
  	var today=new Date();
  	this.today.year=today.getFullYear(),
  	this.today.month=(today.getMonth()+1)>10?(today.getMonth()+1):'0'+(today.getMonth()+1),
  	this.today.tday=today.getDate()>10?today.getDate():'0'+today.getDate(),
  	this.today.tdate=transDay(today.getDay());
  	this.yearmonth=this.today.year+'年'+this.today.month+"月";
  	//四季背景图片变换
  	switch(today.getMonth()+1){
  		case 3:
  		case 4:
  		case 5:
  			this.seasonwhich="spring";break;
  		case 6:
  		case 7:
  		case 8:
  			this.seasonwhich="sumer";break;
  		case 9:
  		case 10:
  		case 11:
  			this.seasonwhich="autumn";break;
  		case 12:
  		case 1:
  		case 2:
  			this.seasonwhich="winter";break;
  		default:
  			break;
  	}
  	//社区公告前四条轮播
  	var t=0;
  	var timer;
  	clearInterval(timer);//选择其他后返回未生效？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？
  	timer=setInterval(function(){
  		t+=2.25;
  		if(t>4*2.25){
  			t=0;
  			$(".noticelistcon").animate({"top":-t+"rem"},0);
  		}
  		$(".noticelistcon").animate({"top":-t+"rem"},1500);
  	},3000)
  }
}

//规范星期格式
function transDay(num){
	switch(num){
		case 0:
			return '星期天';break;
		case 1:
			return '星期一';break;
		case 2:
			return '星期二';break;
		case 3:
			return '星期三';break;
		case 4:
			return '星期四';break;
		case 5:
			return '星期五';break;
		case 6:
			return '星期六';break;
		default:
			break;
	}
}
</script>
<style scoped>
.shouye{margin-top:3.2rem;}
.splitebar{background: #F2F2F2;width: 100%;height: 0.75rem;margin-top:0.5rem;}
.calendar{width:94%;height:8rem;}
.servelist{overflow: hidden;list-style: none;display: flex;justify-content: space-between;padding:0 1rem;}
.servelist li{display: flex;flex-direction: column;justify-content: space-between;align-items: center;}
.servelist li i{font-size: 1.5rem;color: #FDA413;font-weight: 500;}
.servelist li span{font-size: 0.3rem;color: #555555;}
.noticelistbg{position: relative;width: 100%;height: 2.3rem;overflow: hidden;}
.noticelist{width: 90%;font-size: 0.8rem;color: #333333;padding:0 1rem;position: relative;display: flex;justify-content: space-between;}
.noticelist i{line-height: 2.3rem;}
.noticelistcon{line-height: 2.3rem;position: absolute;top:0;left:2.5rem;}
.morenotice{color: #9D9D9D;}
.morenotice a{text-decoration: none;color: #9D9D9D;}
.winterimg{margin:1rem 0.7rem;padding:1rem 0;color: white;position: relative;}
.timenum{display: flex;justify-content: space-between;width: 35%;margin-left: 1rem;}
.tday{width: 3.2rem;line-height: 3.2rem;font-size: 2.3rem;border-right: 1px solid white;}
.tdym{display: flex;flex-direction: column;justify-content: space-between;font-size:0.8rem;}
.getinactiviies{position:absolute;bottom: 0.5rem;left:70%;font-size: 0.7rem;}
.getinactiviies a{color: white;}
.spring{background-image: url(../../img/spring.jpg);}
.sumer{background-image: url(../../img/sumer.jpg);}
.autumn{background-image: url(../../img/autumn.jpg);}
.winter{background-image: url(../../img/winter.jpg);}
.homelifeservicetitle{font-size: 1rem;line-height: 2rem;padding:0 1rem;}
.homelifeservice{display: flex;justify-content: space-around;height:6rem;margin:0 0.5rem;}
.homelifeservice p{width:20%;display: flex;flex-direction: column;justify-content: space-between;height:100%;}
.homelifeservice p img{display: block;width:100%;height:80%;}
.homelifeservice p span{font-size: 14px;text-align: center;}
.sellerdiscountbg{}
</style>


