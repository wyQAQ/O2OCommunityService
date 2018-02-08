<template>
    <div class="weui-tabbar">
        <a href="#/totaltab/shouye" class="weui-tabbar__item" :class="{'weui-bar__item_on':id==0}" @click="isOn(0)">
            <span style="display: inline-block;position: relative;">
                <i class="iconfont icon-shouye " :class="{'fontColor':id==0}"></i>
            
            </span>
            <p class="weui-tabbar__label" :style="{color:id==0?'#B53722':'#999999'}">首页</p>
        </a>
        <a href="#/totaltab/service" class="weui-tabbar__item" :class="{'weui-bar__item_on':id==1}" @click="isOn(1)">
            <i class="iconfont icon-msnui-service" :class="{'fontColor':id==1}"></i>
            <p class="weui-tabbar__label" :style="{color:id==1?'#B53722':'#999999'}">服务</p>
        </a>
        <a href="#/totaltab/community" class="weui-tabbar__item" :class="{'weui-bar__item_on':id==2}" @click="isOn(2)">
            <span style="display: inline-block;position: relative;">
                <i class="iconfont icon-shequ" :class="{'fontColor':id==2}"></i>
                
            </span>
            <p class="weui-tabbar__label" :style="{color:id==2?'#B53722':'#999999'}">社区</p>
        </a>
        <a href="#/totaltab/mine" class="weui-tabbar__item" :class="{'weui-bar__item_on':id==3}" @click="isOn(3)">
           <i class="iconfont icon-iconfontwode" :class="{'fontColor':id==3}"></i>
            <p class="weui-tabbar__label" :style="{color:id==3?'#B53722':'#999999'}">我的</p>
        </a>
    </div>
</template>
<script>
export default {
  data(){
      return {
          id:0,
          address:"睿城"
      }
  },
  mounted(){
    var arr=location.href.split(":")
    var words=arr[arr.length-1].split("/");
    var key=words[words.length-1]
    if(/^shouye$/.test(key)){
        this.id=0;
        this.$store.state.pagetitle="首页";
        this.$store.state.lefticon="iconfont icon-icon-test6";
        this.$store.state.rightcon="iconfont icon-icon-test9";
        this.$store.state.address=this.address;
    }
    if(/^service$/.test(key)){
        this.id=1;
        this.$store.state.pagetitle="服务";
        this.$store.state.lefticon="iconfont icon-icon-test6";
        this.$store.state.rightcon="iconfont icon-icon-test9";
        this.$store.state.address=this.address;
    }
    if(/^community$/.test(key)){
        this.id=2;
        this.$store.state.pagetitle="社区";
        this.$store.state.lefticon="iconfont icon-icon-test1";
        this.$store.state.rightcon="iconfont icon-xiaoxi";
        this.$store.state.address="";
    }
    if(/^mine$/.test(key)){
        this.id=3;
        this.$store.state.pagetitle="我的";
        this.$store.state.lefticon="iconfont icon-icon-test1";
        this.$store.state.rightcon="iconfont icon-xiaoxi";
        this.$store.state.address="";
    }
  },
  methods:{
      isOn(id){
          this.id = id;
          this.matchpagetitle(id);
      },
      matchpagetitle(id){
      	if(id==0){
      		this.$store.state.pagetitle="首页";
      		this.$store.state.lefticon="iconfont icon-icon-test6";
        	this.$store.state.rightcon="iconfont icon-icon-test9";
        	this.$store.state.address=this.address;
      	}
      	if(id==1){
      		this.$store.state.pagetitle="服务";
      		this.$store.state.lefticon="iconfont icon-icon-test6";
        	this.$store.state.rightcon="iconfont icon-icon-test9";
        	this.$store.state.address=this.address;
      	}
      	if(id==2){
      		this.$store.state.pagetitle="社区";
      		this.$store.state.lefticon="iconfont icon-icon-test1";
        	this.$store.state.rightcon="iconfont icon-xiaoxi";
        	this.$store.state.address="";
      	}
      	if(id==3){
      		this.$store.state.pagetitle="我的";
      		this.$store.state.lefticon="iconfont icon-icon-test1";
        	this.$store.state.rightcon="iconfont icon-xiaoxi";
        	this.$store.state.address="";
      	}
      }
  }
}
</script>
<style scoped>
    i{
        line-height: 1;
        font-size: 20px;
        font-weight: 600;
    }
    .fontColor{
        color:#d81e06;
        font-weight: 500;
    }
    .weui-tabbar{
        position: fixed;
        bottom:-1px;
        background: white;
    }
</style>




