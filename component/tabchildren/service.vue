<template>
  <div>
      <xheader/>
      <div class="menubar">
      	<ul>
      		<li v-for="s in servicelist" v-text="s.type"></li>
      	</ul>
      </div>
      <div class="serlistbg">
      	
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
</style>


