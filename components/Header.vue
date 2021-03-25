<!--  -->
<template>
  <section class="external">
    <div class="nav">
       <div class="container ">
      <!-- 顶部导航 -->
        <div class="row">
            <!-- 左侧 -->
          <div class="col-3 bd1">
            <h5>Logo</h5>
          </div>
          <!-- 右侧 -->
          <nav class="col-6 offset-md-3 nav_l ">
            <ul class="mt-3">
              <li><nuxt-link to="/">首页</nuxt-link></li>
              <li><nuxt-link  :to="{name:'TotalPage-worksSase'}">作品展示</nuxt-link></li>
              <li><nuxt-link  :to="{name:'TotalPage-shoot'}">拍摄花絮</nuxt-link></li>
              <li><nuxt-link  :to="{name:'TotalPage-webDevelop'}">网站开发</nuxt-link></li>
              <li><nuxt-link  :to="{name:'TotalPage-contact'}">联系我们</nuxt-link></li>
            </ul>
          </nav>

        </div>

      </div>
    </div>

  </section>
</template>

<script scoped>
//引入轮播组件

export default {
  name:'Header',
  data () {
    return {
    };
  },

  components: {

  },

}

</script>
<style scoped>

.external .nav{
	position:fixed;
	width:100%;
	background-color:rgba(28,28,28,0.6);
	z-index:999

}
.container{
  min-width: 100vh;
  height: 90px;  /* box-shadow: 10,10,20,#000,#000,#000,5; */
}

.container .nav_l ul{
  display: flex;
  list-style: none;
}
.container .nav_l ul>li{
  flex: 1;
  font-size: 15px;
}
.container .nav_l ul>li a{
  font-family:  Source Han Serif SC;
  display:block;
  text-align: center;
  color: #ccc;
  padding: 18px 0;
  /* border: 1px solid red; */
}

.container .nav_l ul>li a:hover{
  color: white;
  transition: .5s linear;
  text-decoration: none;
  }

.bd1{
  /* border: 1px solid red; */
}
</style>
