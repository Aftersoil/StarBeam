<!--  -->
<template>
  <section>
    <header>
      <h1>Web 网站开发
        <br/>
        <sub>Provide you with professional design solutions</sub>
      </h1>
    </header>
    <main>
      <div class="container">


          <h3>Web 网站开发</h3>
          <div class="row" >
          <template class="" v-for="(item,index) in dataList">
            <div class="col-4" :key="index">
              <!-- 网站图片 -->
              <img src="~/assets/img/develop/pc/pc1.png" width="100%" alt="">
              <!-- 网站简介 -->
                <p class="title">
                  <span>
                    {{item.title}}
                  </span>
                </p>
                <p class="sub_title" style="color: rgb(153, 153, 153); font-size: 14px;">
                  <span>
                    {{item.subTitle}}
                  </span>
                </p>
              <!-- 网站简介END -->
            </div>
            </template>
          </div>



      <template class="contaienr">
        <h3>移动端开发</h3>
         <b-card class="card_img" img-src="~/assets/img/develop/mobile/mb1.png" img-alt="Card image" img-left>
          <b-card-text>
            <h4 class="card_title" color="#999999">
              企业品牌类
              <br>
              <sub>Enterprise brand</sub>
            </h4>
            <div class="card_desc">
              <p>
                <span>
                  随着4G网络普及，各大小品牌都纷纷进驻移动互联网，
                  而国内超过90%的推广公司都会通过移动端开发方式进行推广。
                  手机网站就是能被随身携带和访问的微网站，能直接转发到微博和微信朋友圈，能直接在手机上观看并购买您的产品。
                </span>
              </p>
              <p>
                <span>
                  展示企业形象、企业文化、企业产品的最好窗口，今年又以新季度的企划案？放在传统网站上做SEO提升点击量？太繁琐了。移动端网站能直接在微博、微信朋友圈推广，用户能方便快捷访问您最新形象展示。
                  用户群针对性强，绝对是时尚买家和商业精英群体、企业级等。
                </span>
              </p>
            </div>

          </b-card-text>
        </b-card>
      </template>



      </div>




    </main>
    <Footer/>
  </section>
</template>

<script scoped>
import Footer from '@/components/Footer'
export default {
  name:'webDetail',
  data () {
    return {
      id:1,
      dataList:[],
      title:""
    };
  },

  components: {
    Footer
  },

  mounted(){
    this.getData()
  },
  methods: {
    getData(){
      this.$axios.$get(`/api/category/project/1`)
      .then(res=>{
        this.dataList = res.data
        console.log(this.dataList[0])
      })



    }


  },


}

</script>
<style scoped>
/* 顶部编写样式 */

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
  font-size: 1.5em;
  bottom: 250px;
  right: 0px;
  font-family: STKaiti;
  position: absolute;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;

}
header h1 sub{
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
  background-image: url("~assets/img/testImg/parallaximg4.jpg");
  background-size: cover;
  /* 核心，按z轴向远处移动1px，大小会缩小一倍，使用scale放大到原图大小 */
  transform: translateZ(-1px) scale(2);
  z-index: -1;
}

main {
  position: relative;
  letter-spacing: 0.075em;
  background-color: white;

}
/* 顶部结束 */

.bd1{
  border: 1px solid #000;
}



/* 网站布局 */
.title,.sub_title{
  text-align: center;
}

/* 小程序移动端 */


.card_img{
  height: 450px;

}

.card_title sub{
  color: #999;
  font-size: 13px;
}
.card_desc{
  width: 100%;
  font-size: 16px;
  padding-top: 50px;
}
.card_desc p{
  line-height: 35px;
}




</style>
