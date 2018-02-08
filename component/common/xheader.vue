<template>
  <div class="headerbg">
      <p v-for="i in headcon"><i :class=i.icon></i><span v-text="i.scon" class="headps"></span></p>
  </div>
</template>
<script>
export default {
  data(){
      return {
	      headcon:[
	      	{
	      		icon:this.$store.state.lefticon,
	      		scon:this.$store.state.address
	      	},
	      	{
	      		icon:"",
	      		scon:this.$store.state.pagetitle
	      	},
	      	{
	      		icon:this.$store.state.rightcon,
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
.headerbg{position:fixed;top:0;left:0;z-index: 99;width:94%;height: 2.5rem;line-height: 2.5rem;display: flex;justify-content: space-between;padding:0 0.75rem;background: #d81e06;}
.headerbg p{font-family: charcoal;font-weight: 500;font-size: 1.1rem;color: white;}
.headerbg p i,.headerbg p span{color: white;}
.headerbg p i{font-weight: 600;}
.headerbg p:nth-of-type(1){display: flex;justify-content: space-between;}
.headerbg p:nth-of-type(1) i{margin-right: 0.5rem;}
.headerbg p:nth-of-type(1) span{display: inline-block;width: 2.2rem;}
.headerbg p:nth-of-type(2){flex: 4;text-align: center;}
.headerbg p:nth-of-type(3){flex: 1;text-align: right;}
.headerbg p:nth-of-type(3) i{font-size: 1.1rem;line-height: 2.5rem;}
</style>


