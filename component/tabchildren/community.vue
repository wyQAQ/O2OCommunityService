<template>
  <div>
      <xheader/>
      <div id="communitybg">
      	<!--轮播图-->
      	<div class="banner" id="banner">
      		<xbanner/>
      	</div>
      	<div class="community">
      		<div class="title">
      			<p>邻里互动</p>
      			<p><a href="#/postmesslist">更多&nbsp;></a></p>
      		</div>
      		<div class="comtype">
      			<p v-for="c in comtype" v-text="c"></p>
      		</div>
      		<div class="commess">
      			<div class="mess" v-for="p in postmess">
      				<!--用户头像-->
      				<a href="javascript:;"><img :src="p.pic"/></a>
      				<div class="messtxt">
      					<p>
      						<span v-text="p.user"></span>
      						<span v-text="p.time"></span>
      					</p>
      					<p>
      						<span v-text="p.type"></span>
      						<span v-text="p.con"></span>
      					</p>
      				</div>
      			</div>
      		</div>
      		<xwritemess/>
      	</div>
      </div>
  </div>
</template>
<script>
import xheader from "../common/xheader.vue";
import xbanner from "../common/banner.vue";
import xwritemess from "../common/writemess.vue";
import autumnImg from "../../img/autumn.jpg";
export default {
  data(){
      return {
          comtype:["#生活杂谈#","#二手闲置#","#突发爆料#"],
          postmess:[
          	{
          		pic:autumnImg,
          		user:"某某人",
          		type:"#二手闲置#",
          		con:"发电机房间开始的解放军第三方很多事解放军第三方范德萨范德萨发的发的所发生的",
          		time:"02-02"
          	},
          	{
          		pic:autumnImg,
          		user:"某某人",
          		type:"#二手闲置#",
          		con:"发电机房间开始的解放军第三方很多事解放军第三方范德萨范德萨发的发的所发生的",
          		time:"02-02"
          	}
          ]
      }
  },
  components:{
  	xheader,
  	xbanner,
  	xwritemess
  }
}
</script>
<style scoped>
#communitybg{margin-top:2.5rem;padding-bottom: 2.3rem;}
.banner{width: 100%;overflow: hidden;position: relative;height: 10.5rem;}
.title{display: flex;padding: 0.5rem 1rem;justify-content: space-between;}
.title p{color: #666;}
.title p a{font-size: 12px;color: #CCCCCC;line-height: 24px;}
.comtype{display: flex;justify-content: space-between;padding:0.5rem 0.5rem;flex-wrap: wrap;}
.comtype p{color:white;width: 30%;background: #E80909;border-radius: 0.5rem;height:4rem;text-align: center;line-height: 4rem;margin:0.5rem 0;}
.commess{padding: 1rem;}
.mess{display: flex;justify-content: space-between;margin:1rem 0;}
.mess a,.mess a img{display: block;}
.mess a{width: 2.5rem;height: 2.5rem;border-radius:2.5rem;overflow: hidden;margin-right: 1rem;}
.mess a img{width:100%;height:100%;}
.messtxt{flex: 1;display: flex;justify-content: space-between;flex-direction: column;}
.messtxt p:nth-of-type(1){display: flex;justify-content: space-between;font-size: 12px;color: #969896;line-height: 1.6rem;}
.messtxt p:nth-of-type(2){font-size: 14px;width:100%;height:3.2rem;line-height: 1.6rem;overflow: hidden;}
.messtxt p:nth-of-type(2) span:nth-of-type(1){color: #FDA413;}



</style>


