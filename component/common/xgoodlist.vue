<template>
  <div  class="xgoodlist">
  	<div class="xgood" v-for="g in goods">
  		<img :src="g.img"/>
  		<p>
  			<span v-text="g.name"></span>
  			<span v-text="g.price"></span>
  		</p>
  	</div>
  </div>
</template>
<script>
import springImg from "../../img/spring.jpg";
export default {
  data(){
      return {
          goods:[
          	{
          		img:springImg,
          		name:"丹东草莓",
          		price:'￥'+"139.00"
          	},
          	{
          		img:springImg,
          		name:"丹东草莓",
          		price:'￥'+"139.00"
          	},
          	{
          		img:springImg,
          		name:"丹东草莓",
          		price:'￥'+"139.00"
          	},
          	{
          		img:springImg,
          		name:"丹东草莓",
          		price:'￥'+"139.00"
          	}
          ]
      }
  }
}
</script>
<style scoped>
.xgoodlist{padding:0 1rem;width:90%;padding-bottom: 2.5rem;display: flex;justify-content: space-between;flex-wrap: wrap;}
.xgood{display: flex;flex-direction:column;justify-content:space-between;margin:0.5rem 0;width:45%;}
.xgood img{display: block;width:100%;height: 8rem;}
.xgood p{display: flex;flex-direction: column;justify-content: space-around;text-align: center;}
.xgood p span{font-size: 0.9rem;}
.xgood p span:nth-of-type(2){color: #e80909;}
</style>


