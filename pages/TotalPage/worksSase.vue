<!--  -->
<template>
  <section>
    <header>
      <h1>视觉传播塑造企业形象
        <br/>
        <sub>&nbsp;&nbsp;Visual communication shapes corporate image</sub>
      </h1>
    </header>

    <main>

    <div id="modules">
      <b-breadcrumb :items="items"  class="brean_crumb"></b-breadcrumb>


      <!-- b-container (内容上部分)-----1 -->
      <div id="container1">
        <h2 class="titles">{{ obj.titles.title1 }}</h2>

        <div class="row">
          <div class="col-4 box_video bd1">
            <!-- <img src="~/assets/img/video2.jpg" width="100%"> -->
            <!-- 视频跳转区域 -->
            <nuxt-link  :to="{name:'worksDetails-worksDetailOne'}">
               <b-card
               sub-title="xxx 拍摄"
                img-src="~/assets/img/video/video1.png"
                img-alt="Image"
                img-top
              >
              <i class="fa fa-play-circle"></i>
                <b-card-text>
                    艺术涂鸦风宣传片
                </b-card-text>
              </b-card>
            </nuxt-link>
          </div>
           <div class="col-4 box_video bd1">
              <b-card
               sub-title="xxx 拍摄"
                img-src="~/assets/img/video/video2.png"
                img-alt="Image"
                img-top
              >
              <i class="fa fa-play-circle"></i>
                <b-card-text>
                    复古艺术电影宣传片
                </b-card-text>
              </b-card>
          </div>
           <div class="col-4 box_video bd1">
              <b-card
               sub-title="xxx 拍摄"
                img-src="~/assets/img/video/video3.png"
                img-alt="Image"
                img-top
              >
              <i class="fa fa-play-circle"></i>
                <b-card-text>
                    欧美型潮流宣传片
                </b-card-text>

              </b-card>
          </div>

        </div>

      <!-- 视频跳转区域 -->


      </div>
      <!-- b-container（内容中部分）-----2 -->
      <div id="container2">
        <div
          class="twomodule"
          :style="{
            background: 'url(' + obj.modules2.bimg + ') no-repeat center',
          }"
        >
          <div class="content">
            <h4>{{ obj.modules2.hfour }}</h4>
            <p>{{ obj.modules2.pcontent }}</p>
            <ul>
              <li v-for="(v, k) in obj.modules2.lis" :key="k">{{ v }}</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- b-container（内容底部分）-----3 -->
      <div id="container3">
        <h2 class="titles">{{ obj.titles.title3 }}</h2>
       <!-- 记录片视频内容 -->
        <div class="row bd1">
           <div class="col-4 dec_video bd1">
            <!-- <img src="~/assets/img/video2.jpg" width="100%"> -->
            <!--  -->
               <b-card
               sub-title="xxx 拍摄"
                img-src="~/assets/img/video/videodct1.png"
                img-alt="Image"
                img-top
              >
              <i class="fa fa-play-circle"></i>
                <b-card-text>
                    西西里旅行 记录片
                </b-card-text>
              </b-card>
          </div>
           <div class="col-4 dec_video bd1">
              <b-card
               sub-title="xxx 拍摄"
                img-src="~/assets/img/video/videodct2.png"
                img-alt="Image"
                img-top
              >
              <i class="fa fa-play-circle"></i>
                <b-card-text>
                     日本旅游 记录片拍摄
                </b-card-text>
              </b-card>
          </div>
           <div class="col-4 dec_video bd1">
              <b-card
               sub-title="xxx 拍摄"
                img-src="~/assets/img/video/wideoct3.png"
                img-alt="Image"
                img-top
              >
              <i class="fa fa-play-circle"></i>
                <b-card-text>
                    荒野求生 记录电影
                </b-card-text>

              </b-card>
          </div>
        </div>
       <!-- 记录片视频内容结束 -->
      </div>

    </div>
    </main>

    <Footer/>
  </section>
</template>
<script scoped>
import Footer from "@/components/Footer"
export default {
  name: "worksSese",
  data() {
    return {
      // 面包屑
      items: [
        {
          text: "首页",
          href: "/",
        },
        {
          text: "作品展示",
          active: true,
        },
      ],
      dataList:[],
      obj: {
        //body三分支大标题
        titles: {
          title1: "宣传片",
          title2: "广告片",
          title3: "记录片",
        },
        // 二分支内容
        modules2: {
          bimg:
            "http://17360474.s61i.faiusr.com/2/AD0I2syjCBACGAAgicnT2wUo55nSogUwgA84_QU.jpg",
          // 二分支标题
          hfour: "超越预期 做到你想不到",
          // 二分支文本
          pcontent:
            "通过研究商业模式来定义品牌模式提供优秀的品牌整合解决方案，令品牌长远发展，更具竞争力新成立企业，需要有好的标志，好的品牌形象有助于提升企业整体竞争力。",
          // 二分支列表
          lis: {
            data1: "· span企业/品牌命名设计",
            data2: "· 企业/品牌标志(logo)设计",
            data3: "· 识别系统(VIS)设计",
            data4: "· 视觉导向系统设计",
            data5: "· 旧品牌优化升级更新设计",
            data6: "· 卡通形象设计",
          },
        },
      },
    };
  },
  components: {
      Footer
  },
  mounted() {
    this.getData
  },
  methods:{
      getData(){
        this.$axios.$get("/api/opus/").then(res=>{
        console.log(res.data[0])
        this.dataList = red.data
      })
     }
  }


};
</script>
<style scoped>
/* 锚点 */
/* .bd1{
  border: 1px solid;
} */
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
header h1 p{
  text-align: center;
}
header h1 p sub{
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
  background-image: url("~assets/img/testImg/parallaximg2.jpg");
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
}



a{
  color: black;
  text-decoration: none;
}
.listgroup {
  bottom: 230px;
  right: 30px;
  z-index: 999;
  position: fixed;

}
.titles {
  margin: 0 auto;
  width: 1000px;
  text-align: center;
  height: 60px;
  margin-bottom: 30px;
  border-bottom: 3px solid #ccc;
}
/* 最外围的盒子 */
#modules {
  width: 1200px;
  margin: 0 auto;
  padding: 0;
}
#container1 .cards {
  margin-bottom: 70px;
}
/* ------------------------ 视频跳转样式 ---------------------------------- */

#container1 .titles,
#container3 .titles{
 font-family: STKaiti;
  font-weight: 600;
  color: #000;
  width: 100%;
}

#container1 .box_video,#container3 .dec_video{
  position: relative;
}
#container1 .box_video i,#container3 .dec_video i{
  content: " ";
  position: absolute;
  left: 150px;
  top: 75px;
  font-size: 100px;
}

#container1 .box_video .fa-play-circle::before,
#container3 .dec_video .fa-play-circle::before{
  color: rgba(255, 255, 255, .4);
}
/* 第二个模块的title(前边是把title大概定个样式 这里是细节调整) */
#container2 .title {
  margin-top: 100px;
  height: 20px;
}
/* 面包屑导航样式 */
#modules .brean_crumb{
  background-color: white;
  margin-top: 15px;
}
/* 广告宣传内容区块 */
.twomodule {
  width: 1200px;
  height: 750px;
  padding: 0;
}
/* 文本区域 */
.content {
  width: 560px;
  height: 350px;
  margin-top: 20px;
}
.content p,
.content ul {
  font-size: 13px;
  color: #aaa;
  line-height: 35px;
  list-style: none;
}
.content p {
  width: 500px;
}
.content h4 {
  color: #333;
}
/* 第三块 卡片设置bottom边距 */
#container3 .cards {
  margin-bottom: 70px;
}
.cards:hover {
  transform: scale(1.1);
  transition: transform 400ms linear;
  z-index: 99;
}







</style>
