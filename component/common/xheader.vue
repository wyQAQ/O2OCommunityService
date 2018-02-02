<template>
  <div class="headerbg">
      <p v-for="i in headcon"><i :class=i.icon></i><span v-text="i.scon"></span></p>
  </div>
</template>
<script>
export default {
  data(){
      return {
	      headcon:[
	      	{
	      		icon:"iconfont icon-icon-test6",
	      		scon:"睿城"
	      	},
	      	{
	      		icon:"",
	      		scon:this.$store.state.pagetitle
	      	},
	      	{
	      		icon:"iconfont icon-icon-test9",
	      		scon:""
	      	},
	      ]
      }
  },
  mounted(){
  	
  }
}
</script>
<style scoped>
	i{font-style: normal;}
.headerbg{height: 2.5rem;line-height: 2.5rem;display: flex;justify-content: space-between;padding:0 0.75rem;background: #d81e06;}
.headerbg p{font-family: charcoal;font-weight: 500;font-size: 1.1rem;color: white;}
.headerbg p i,.headerbg p span{color: white;}
.headerbg p:nth-of-type(1){display: flex;justify-content: space-between;}
.headerbg p:nth-of-type(1) i{margin-right: 0.5rem;}
.headerbg p:nth-of-type(2){flex: 4;text-align: center;}
.headerbg p:nth-of-type(3){flex: 1;text-align: right;}
.headerbg p:nth-of-type(3) i{font-size: 1.1rem;line-height: 2.5rem;}
</style>


