<template>
    <div>
        <router-view></router-view>
        <xfooter />
    </div>
  
</template>

<script>
    import xfooter from "../common/xfooter.vue"
    export default{
        components:{
            xfooter
        }
    }
</script>
