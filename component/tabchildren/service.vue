<template>
  <div>
      <xheader/>
      <div class="menubar">
      	<ul>
      		<li v-for="s in servicelist" v-text="s.type"></li>
      	</ul>
      </div>
      <div class="serlistbg">
      	<div v-for="s in servicelist" class="service">
      		<p>—&nbsp;&nbsp;<span v-text="s.type"></span>&nbsp;&nbsp;—</p>
      		<ul>
      			<li v-for="c in s.con">
      				<img :src="c.img"/>
      				<span v-text="c.kind"></span>
      			</li>
      		</ul>
      	</div>
      </div>
  </div>
</template>
<script>
import xheader from "../common/xheader.vue";
import autumn from "../../img/autumn.jpg";
export default {
  data(){
      return {
          servicelist:[
          	{
          		type:"生活服务",
          		con:[
          			{
          				kind:"衣物洗护",
          				img:autumn
          			},
          			{
          				kind:"衣物洗护",
          				img:autumn
          			},
          			{
          				kind:"衣物洗护",
          				img:autumn
          			},
          			{
          				kind:"衣物洗护",
          				img:autumn
          			}
          		]
          	},
          	{
          		type:"保姆月嫂",
          		con:[
          			{
          				kind:"衣物洗护",
          				img:autumn
          			},
          			{
          				kind:"衣物洗护",
          				img:autumn
          			},
          			{
          				kind:"衣物洗护",
          				img:autumn
          			},
          			{
          				kind:"衣物洗护",
          				img:autumn
          			}
          		]
          	}
          ]
      }
  },
  components:{
  	xheader
  }
}
</script>
<style scoped>
.menubar{margin-top: 2.5rem;width: 25%;border-right: 1px solid #DBDBDB;position: fixed;left: 0;top: 0;height:100%;background: #FDFDFD;}
.menubar ul{list-style: none;width: 100%;text-align: center;color: #555555;}
.menubar ul li{height:3.6rem;line-height: 3.6rem;font-size: 0.9rem;}
.serlistbg{width: 75%;position: relative;left:25%;margin-top: 3rem;}
.service{margin-bottom: 1rem;padding:0 1rem;}
.service p{text-align: center;line-height: 32px;color: #CCCCCC;font-size: 16px;}
.service p span{color: #555555;}
.service ul{list-style: none;display: flex;justify-content: space-between;flex-wrap: wrap;color: #555555;}
.service ul li{width: 25%;height:4.5rem;margin:0.5rem 0.5rem;display: flex;flex-direction: column;justify-content: space-between;}
.service ul li img{display: block;width: 100%;height:71%;}
.service ul li span{font-size: 13px;line-height: 24px;text-align: center;width: 100%;overflow: hidden;white-space: nowrap;}
</style>


