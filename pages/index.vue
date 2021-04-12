<template>
  <section class="content bd1">
    <Banner :imgData="imgData" />

    <div class="section">
      <!-- 顶部内容模块 -->
      <div class="container  mt-3">
        <h3 style="text-align: center">
          公司业务<br />
          <sub>Company Business</sub>
        </h3>
        <div class="row fun_content1 mt-4 mb-4">

          <div class="col-2 bd1 cont_1">
            <p><span>拍摄剪辑</span></p>
          </div>

          <div class="col-2 bd1 cont_2">
            <p><span>纪录片</span></p>
            <!-- <img src="~/assets/img/j3.jpg" width="100%" alt=""> -->
          </div>
          <div class="col-2 bd1 cont_3">
            <p><span>网站开发</span></p>
            <!-- <img src="~/assets/img/w1.jpg" width="100%" alt=""> -->
          </div>
          <div class="col-2 bd1 cont_4">
            <p><span>企业文化</span></p>
            <!-- <img src="~/assets/img/q2.jpg" width="100%" alt=""> -->
          </div>
        </div>
      </div>
      <div class="section img" id="img1">IMG 1</div>

      <!-- 内容主体 二 -->
      <div class="section" id="content1">
        <h3 class="container mt-3" style="text-align: center; color: #000">
          需求案例<br />
          <sub>Project cases</sub>
        </h3>
        <div class="container">
          <div class="row mt-4">
            <div class="col-6">
              <div class="content_left">
                <nuxtLink style="color:#000" :to="{name:'TotalPage-webDevelop'}">
                  <p>
                    专注网站建设、网站设计、
                    空间设计、网络营销、网站托管、整合营销服务为核心服务。
                    专注于创意设计实现商业价值较大化
                    <b-button  variant="outline-dark">load more</b-button>
                  </p>
                </nuxtLink>
              </div>
            </div>
            <!-- 右侧区域 -->
            <div class="col-6 ">
              <div class="content_rig ">
                <div class="content_rig_item rig_item1 mb-1">
                 <nuxtLink style="color:#000" :to="{name:'TotalPage-shoot'}">
                  <p>
                    影视后期制作 广告策划、设计、发布、媒体开发及代理
                    影视拍摄与制作、公关活动 拍摄花絮
                    <b-button  variant="outline-dark">load more</b-button>
                  </p>
                  </nuxtLink>
                </div>
                <div class="content_rig_item rig_item2">
                  <nuxtLink style="color:#000" :to="{name:'TotalPage-worksSase'}">
                    <p>
                    提供从影视广告拍摄制作、360全景视频制作、会议会务策划，
                    全面提升客户品牌和产品的传播价值。
                      <b-button  variant="outline-dark">load more</b-button>
                    </p>
                  </nuxtLink>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="section img" id="img2">IMG 2</div>

      <div class="section" id="footer">
        <div class="container">
          <div class="row">
            <!-- 大卡片 -->
            <div class="col-12 mt-5">
              <b-card
                no-body
                class="overflow-hidden"
                style="max-width: 100%; max-height: 80%"
              >
                <b-row no-gutters>
                  <b-col md="6">
                    <b-card-img
                      src="~/assets/img/sy2.png"
                      alt="Image"
                      class="rounded-0"
                    ></b-card-img>
                  </b-col>
                  <b-col md="6">
                    <b-card-body title="ABOUT US">
                      <div class="card_content">
                        <p>
                          &nbsp;&nbsp;&nbsp;专注为客户创造和设计品牌传播价值。
                        </p>
                        <p>
                          &nbsp;&nbsp;&nbsp;团队拥有资深的导演、策划、拍摄和制作团队，提供从影视广告拍摄制作、360全景视频制作、会议会务策划，全面提升客户品牌和产品的传播价值。
                        </p>
                        <p>
                          提供全面的各种以展览服务给客户,无论商业空间和活动策划。
                        </p>
                        <p class="last_but">
                          <nuxt-link class="btn_styl"  :to="{name:'TotalPage-contact'}">Display more</nuxt-link>
                        </p>
                      </div>
                    </b-card-body>
                  </b-col>
                </b-row>
              </b-card>
            </div>
          </div>
        </div>

        <Footer />
        <canvas
          id="canvas"
          style="position: absolute; top: 0px; left: 0px; z-index: 1"
        ></canvas>
      </div>
    </div>
  </section>
</template>

<script>

import Footer from "@/components/Footer";
export default {
  name: "",
  data() {
    return {
      imgData: [
        {
          url: require("~/assets/img/banner/banner10.png"),
          desc: "Banner 1",
        },
        {
          url:  require("~/assets/img/banner/banner11.png"),
          desc: "Banner 2",
        },
        {
          url:  require("~/assets/img/banner/banner12.png"),
          desc: "Banner 3",
        },
        {
          url:  require("~/assets/img/banner/banner13.png"),
          desc: "Banner 3",
        },

      ],
    };
  },
  components: {
    Footer,
  },

  mounted(){
    this.getSvgCaptchaCodeImg()
  },
  methods:{
     getSvgCaptchaCodeImg(){
        this.$axios.$get("/api/shoot").then(res=>{
        console.log(res.data[0])
      })
     }
  }
};
</script>

<style>
html {
  color: #000;
}
.bd1 {
  border: 1px solid #000;
}
/* 隐藏导航栏 */
::-webkit-scrollbar {
  display: none;
}
.content {
  width: 100vw;
  height: auto;
  /* border: 1px solid #000;1B2E53 */
  background-color: #fff;
  /* border: 1px solid #fff; */
}
.content .fun_content1 {
  /* border-radius: 3px; */
  border-width: 3px;
  border: 0;
}

.content .fun_content1 div p {
  margin: 0;
  padding: 0;
  text-align: center;
  background-color: rgba(28, 28, 28, 0.5);
  position: absolute;
  left: 0;
  width: 100%;
  bottom: -1px;
}
.content .fun_content1 .cont_1,
.content .fun_content1 .cont_2,
.content .fun_content1 .cont_3,
.content .fun_content1 .cont_4 {
  color: #fff;
}
/* 标题 */
.container h3,
#content1 h3 {
  font-family: STKaiti;
  font-weight: 600;
  color: #000;
  border-bottom: 2px solid #000;
  padding-bottom: 7px;
  text-align: center;
}

#content1 .content_left {
  height: 500px;
  background-size: cover;
  background-image: url("~/assets/img/code.jpg");
  position: relative;
}

/* 文字演示 */
.content_rig .rig_item1,
.content_rig .rig_item2{
  position: relative;
}
#content1 .content_left p,
#content1  .content_rig_item  p{
  text-indent: 15px;
  background-color: rgba(255, 255, 255, 0.5);
  text-align: left;
  padding: 10px 5px 0 5px;
  bottom: 0;
  position: absolute;
  margin: 0;
  width: 100%;
}
#content1  p .btn{
  float: right;
  margin: 10px;
}
#content1 .content_rig {
  display: flex;
  height: 510px;
  flex-direction: column;
}
#content1 .content_rig .content_rig_item {
  height: 250px;
}

#content1 .content_rig .rig_item1 {
  background-image: url("~/assets/img/zzhx.png");
  background-size: contain;
  filter: bulr 8px;
}

#content1 .content_rig .rig_item2 {
  background-image: url("~/assets/img/ps1.png");
  background-size: cover;
}
.content .fun_content1 div {
  margin: 10px auto;
}
.content .fun_content1 .cont_1,
.content .fun_content1 .cont_2,
.content .fun_content1 .cont_3,
.content .fun_content1 .cont_4 {
  background-size: cover;
  width: 140px;
  height: 130px;
  position: relative;
  border-width: 5px;
  border-color: rgba(255, 255, 255, 0.9);
  /* z-index: 999; */
}

.content .fun_content1 .cont_1 {
  background-image: url("~/assets/img/j2.png");
}
.content .fun_content1 .cont_2 {
  background-image: url("~/assets/img/j3.png");
}
.content .fun_content1 .cont_3 {
  background-image: url("~/assets/img/w1.png");
}
.content .fun_content1 .cont_4 {
  background-image: url("~/assets/img/q2.png");
}

.content .section {
  height: 350px;
}
.content .section #content1 {
  height: 650px;
  /* background-color: rgba(28,28,28,0.5); */
  background-color: #ffff;
}

.img {
  background-size: auto;
  background-position: center;
  overflow: hidden;
  background-attachment: fixed;
  background-repeat: no-repeat;
  max-width: 100%;
  user-select: none;
  cursor: default;
  z-index: -999;
}

#img1 {
  background-image: url("~/assets/img/testImg/2.png");
  background-size: cover;
}
#img2 {
  background-image: url("~/assets/img/testImg/4.png");
  background-size: cover;
}
#img3 {
  background-image: url("~/assets/img/testImg/6.jpg");
}

.content .section #footer {
  height: 700px;
}

.content .section #footer .card-body .card-title {
  text-align: left;
  width: 784px;
  height: 35px;
  border-bottom: 1px solid #000;
}
.content .section #footer .card-body .card_content {
  line-height: 30px;
  width: 100%;
  padding: 50px 5px 5px 5px;
}
.content .section #footer .card-body .last_but {
  margin-top: 60px;
  margin-left: 5px;
}
/* 添加按钮样式 */
.section #footer .card-body .last_but a {
  text-align: center;
  display: block;
  padding: 10px 15px;
  width: 200px;
  border: 1px solid #262626;
  color: #262626;
  text-transform: uppercase;
  text-decoration: none;
  letter-spacing: 2px;
  transition: 0.5s;
  font-size: 12px;
}
.section #footer .card-body .last_but a:hover {
  background: #262626;
  color: #fff;
}
.section #footer .card-body .last_but a::before {
  content: "";
  position: absolute;
  top: -1px;
  left: -1px;
  background: transparent;
}
.section #footer .card-body .last_but a:hover::before {
  transform: scale(1.2, 1.4);
  opacity: 0;
  transition: 0.5s;
}
</style>
