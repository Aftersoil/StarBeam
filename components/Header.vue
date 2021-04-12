<!--  -->
<template>
  <section class="external">
    <div class="nav">
       <div class="container ">
      <!-- 顶部导航 -->
        <div class="row mt-2">
            <!-- 左侧 -->
          <div class="col-2">
            <div class="logo_styl">
              <img src="~/assets/img/logo.png" width="100%" alt="">
            </div>
          </div>
          <!-- 右侧 -->
          <nav class="col-7 offset-md-3 nav_l ">
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
	background-color:rgba(255,255,255,0.6);
  top: 0;
	z-index:999
}
.container{
  min-width: 100vh;
  height: 90px;  /* box-shadow: 10,10,20,#000,#000,#000,5; */
}
.logo_styl{
  width: 80px;
  height: 80px;
}

.container .nav_l ul{
  display: flex;
  padding: 0;
  margin-left: 125px;
}
.container .nav_l ul>li{
  list-style: none;
}


ul li a{
  position: relative;
  display: block;
  padding: 10px 20px;
  margin: 0px 0;
  text-decoration: none;
  text-transform: uppercase;    /* ?? */
  color: #262626;
  font-weight: 500;
  transition: 0.5s;
  font-family: STKaiti;
  font-weight: bolder;
}

ul li a::before{
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-top: 1px solid #000;
  border-bottom: 1px solid #000;
  transform: scaleY(2);
  opacity: 0;
  transition: 0.5s;
  z-index: -1;
  /* 降低层级 */
}
ul li a:hover::before{
  transform: scaleY(1);
  opacity: 1;
}


ul li a:hover{
  color: #fff;
  /* 文字层级默认突出 */
}

ul li a::after{
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #000;
  transform: scale(0);
  transition: 0.5s;
  z-index: -1;
  /* 降低层级 */
}
ul li a:hover::after{
  transform: scale(1);
}


.bd1{
  /* border: 1px solid red; */
}
</style>
