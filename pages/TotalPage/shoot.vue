<!--拍摄花絮-->
<template>
  <section id="con">
    <header>
      <h1>
        影视广告拍摄制作 演出视频
        <br />
        <sub class="row pt-4 pl-5"
          >Film and television advertising production</sub
        >
      </h1>
    </header>
    <main>
      <div class="container">
        <!-- 面包屑导航 -->
        <b-breadcrumb class="bgc">
          <b-breadcrumb-item
            ><nuxt-link :to="{ name: 'index' }"
              >首页</nuxt-link
            ></b-breadcrumb-item
          >
          <b-breadcrumb-item active>拍摄花絮</b-breadcrumb-item>
        </b-breadcrumb>

        <template v-if="data.length < 1">
          <div class="row no_data">
            <div class="col-12" style="text-align: center;">
              暂时没有数据
            </div>
          </div>
          </template>

        <!--  卡片组件-->
        <b-card-group deck>
          <!-- 没有数据 -->
          <div id="chatcontent" >
            <!-- 卡片图片 -->
            <template  v-for="(item, index) in data">
              <nuxt-link
                :key="index"
                :to="{
                  path: '/detailPage/shootDetail',
                  query: { id: item.id },
                }"
              >
                <b-card
                  :img-src="item.small_img"
                  :img-alt="item.title"
                  img-left
                  class="mb-3 shoot-card-item"
                  :style="{ padding: '10px' }"
                >
                  <b-card-text class="text">
                    <h6>
                      {{ item.title }}<b-badge variant="danger">New</b-badge>
                    </h6>
                    <div class="desc">{{ item.desc }}</div>
                  </b-card-text>
                  <div class="right">
                    <span class="right-1">{{ item.createTime | formatDate }}</span>
                  </div>
                </b-card>
              </nuxt-link>
            </template>
          </div>
        </b-card-group>
      </div>
    </main>
    <Footer />
  </section>
</template>

<script scoped>
import { formatDate } from '@/assets/js/util';
import Footer from "@/components/Footer";
export default {
  name: "shoot",
  data() {
    return {
      data: [],
    };
  },
  components: {
    Footer,
  },
  filters: {
    formatDate(time){
      time = Number.parseInt(time)
      console.log(time)
      let data = new  Date(time)
      return formatDate(data, 'yyyy-MM-dd hh:mm:ss')
    }
  },
  mounted() {
    this.getData()
  },
  methods:{
      getData(){
        this.$axios.$get("/api/shoot").then(res=>{
        this.data = res.data
        console.log(this.data)

      })
     }
  }

};
</script>
<style scoped>
#con {
  margin: 0 auto;
}
/* 顶部编写 */

header {
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  transform-style: inherit;
  /* 需要设置高度以使时差生效 */
  height: 100vh;
}

header h1 {
  background-color: rgba(0, 0, 0, 0.7);
  color: white;
  padding: 1em 3em;
  font-size: 2em;
  bottom: 250px;
  right: 0px;
  font-family: STKaiti;
  position: absolute;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
}
header h1 sub {
  font-size: 1rem;
}

header::before {
  position: absolute;
  content: "";
  display: block;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background-image: url("~assets/img/testImg/parallaximg1.jpg");
  background-size: cover;
  /* 核心，按z轴向远处移动1px，大小会缩小一倍，使用scale放大到原图大小 */
  transform: translateZ(-1px) scale(2);
  z-index: -1;
}

main {
  display: flex;
  justify-content: center;
  position: relative;
  letter-spacing: 0.075em;
  background-color: white;
  height: auto;
}
/* 顶部编写结束 */
.no_data{
  height: 250px;
}
.no_data .contnet{
  height: 500px;
}
.bgc {
  margin-top: 20px;
  background: rgb(255, 255, 255);
}
.card {
  margin-top: 10px;
  background-image: linear-gradient(120deg, #fdfbfb 80%, #eaf4f8 0%);
}
.card-img-left{
  width: 250px;
}
a {
  color: black;
  text-decoration: none;
}
img {
  width: 200px;
  border: rgb(241, 241, 241) 5px solid;
  border-radius: 3px;
  margin-left: 20px;
}
.text {
  margin-left: 20px;
}
.text_detail {
  position: absolute;
  border: 1px solid #000;
  overflow: hidden;
}
#chatcontent {
  margin-top: 30px;
  width: 100%;
}
.right {
  display: flex;
  justify-content: center;
  float: right;
}
.right-1 {
  float: right;
  text-align: center;
  background: rgb(255, 255, 255);
  border: 2px solid #d7d8d8;
  padding: 0 10px;
  margin-right: 2px;
  line-height: 40px;
  font-size: 13px;
}
/* section .footer_bg{
  background-color: rgb(243 243 243);
  width: 100%;
} */


.shoot-card-item {
  transition-duration: 0.5s;
}
.shoot-card-item:hover {
  cursor: pointer;
  box-shadow: 10px 10px 10px #888888;
}
</style>
