<!--  -->
<template>
  <section>
    <h1>网站开发</h1>
    <div class="content">
      <div class="container" v-for="item in msg" v-bind:key="item">
        <div class="col-12 col-sm-3 col-md-6 col1">
          <div class="cotn">
            <div class="c_l">
              <div>{{ item.L_title }}</div>
              <div>{{ item.L_l_1 }}</div>
              <div>{{ item.L_l_2 }}</div>
              <div>{{ item.L_l_3 }}</div>
              <div>{{ item.L_l_4 }}</div>
              <div>{{ item.L_l_5 }}</div>
            </div>
            <div class="c_r">
              <div>》</div>
            </div>
          </div>
        </div>
        <div class="col-12 col-sm-9 col-md-6 col2">
          <div class="con">
            <div
              class="img_con"
              v-bind:style="{ backgroundImage: 'url(' + item.R_back + ')' }"
            ></div>
            <div class="hr">
              <hr />
              <hr />
              <hr />
              <hr />
              <div class="text_con">
                <h3>
                  <span>{{ item.R_span }}</span
                  ><br />
                  {{ item.R_text }}
                </h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>


<script scoped>
export default {
  name: "webDevelop",
  data() {
    return {
      msg: [
        {
          L_title: "[ WEBSITEDESIGN ] 网站设计",
          L_l_1: "1.品牌网站",
          L_l_2: "2.企业 + 外贸企业 官网",
          L_l_3: "3.集团 + 上市公司 官网",
          L_l_4: "4.产品 + 营销型 网站",
          L_l_5: "",
          R_span: "[ WEBSITEDESIGN ]",
          R_text: "网站设计",
          R_back: "https://www.tqchina.cn/upload/2017/0523/wangzhansheji.jpg",
        },
        {
          L_title: "[ IMAGE STRATEGY ] 形象策略",
          L_l_1: "1.VI形象系统（创新，提示，执行，培训）",
          L_l_2: "2.标志设计",
          L_l_3: "3.品牌命名&amp;形象策略",
          L_l_4: "4.平面广告设计+包装设计",
          L_l_5: "",
          R_span: "[ IMAGE STRATEGY ]",
          R_text: "形象策略",
          R_back: "https://www.tqchina.cn/upload/2017/0523/xingxiangcelue.jpg",
        },
        {
          L_title: "[ WECHAT / H5 ] 微信/H5开发",
          L_l_1: "1. 企业 / 品牌展示 / 活动 / 邀请函 H5开发",
          L_l_2: "2. 手机版移动官网",
          L_l_3: "3. 微官网 / 活动 / 游戏开发",
          L_l_4: "",
          L_l_5: "",
          R_span: "[ WECHAT / H5 ]",
          R_text: "微信/H5开发",
          R_back: "https://www.tqchina.cn/upload/2017/0523/weixinH5kaifa.jpg",
        },
        {
          L_title: "[ ALBUM PLAN ] 广告设计策划",
          L_l_1: "1. 品牌画册",
          L_l_2: "2. 企业画册 / 产品型录",
          L_l_3: "3. 企业吉祥物设计",
          L_l_4: "4. 海报设计",
          L_l_5: "5. SI空间设计",
          R_span: "[ ALBUM PLAN ]",
          R_text: "广告设计策划",
          R_back:
            "https://www.tqchina.cn/upload/2017/0523/guanggaoshejicehua.jpg",
        },
        {
          L_title: "[ WEBSITEDESIGN ] 网站设计",
          L_l_1: "1.品牌网站",
          L_l_2: "2.企业 + 外贸企业 官网",
          L_l_3: "3.集团 + 上市公司 官网",
          L_l_4: "4.产品 + 营销型 网站",
          L_l_5: "",
          R_span: "[ IMAGE STRATEGY ]",
          R_text: "形象策略",
          R_back: "https://www.tqchina.cn/upload/2017/0523/yingxiangdapian.jpg",
        },
      ],
    };
  },

  components: {},
};
</script>
<style scoped>
.container {
  padding: 0;
  height: 400px;
  display: flex;
  margin-top: 20px;
}
.container:nth-of-type(even) {
  transform: rotateY(180deg);
}
.container:nth-of-type(even) .col1,
.container:nth-of-type(even) .col2 {
  transform: rotateY(180deg);
}
.col1 {
  height: 100%;
  padding: 0;
  background-color: rgba(0, 0, 0, 0.05);
  padding-top: 60px;
}
.cotn {
  padding: 0;
  height: 250px;
  display: flex;
  flex-direction: row;
}

.cotn > span {
  position: absolute;
}
.c_l {
  width: 75%;
  padding: 45px;
}
.c_l > div:nth-child(1) {
  font-size: 1.4em;
  font-weight: bold;
  height: 40px;
}
.c_r {
  width: 25%;
  display: flex;
  align-items: center;
}
.c_r > div {
  font-size: 4em;
  opacity: 0;
  transition: all 0.3s linear 0.1s;
}
.cotn:hover .c_r > div {
  opacity: 0.8;
  justify-content: center;
  transform: 5;
  margin-left: 50px;
}
/* ------------------第二列-------------------- */
.col2 {
  padding: 0;
}

.con,
.img_con,
.hr {
  width: 100%;
  height: 400px;
  position: absolute;
}

.con {
  padding-left: 0;
  position: relative;
  overflow: hidden;
}

.con::after {
  content: "";
  display: block;
  width: 100%;
  height: 100%;
  top: 0;
  position: absolute;
  transition: 0.5s;
  z-index: 10;
}

.con:hover:after {
  background-color: rgba(0, 0, 0, 0.5);
}

.con:hover .img_con {
  transform: scale(1.1);
}

.con:hover .text_con {
  display: block;
}

.con:hover .hr hr:nth-child(1),
.con:hover .hr hr:nth-child(2) {
  width: 510px;
}

.con:hover .hr hr:nth-child(3),
.con:hover .hr hr:nth-child(4) {
  height: 338px;
}

.img_con {
  transition: 0.5s;
  /* background: url(https://www.tqchina.cn/upload/2017/0523/xingxiangcelue.jpg) no-repeat; */
  background-size: cover;
  z-index: -10;
}

.hr {
  padding: 40px;
}

hr {
  position: absolute;
  border: none;
  z-index: 20;
  transition: 1s;
}

.hr hr:nth-child(1),
.hr hr:nth-child(2) {
  width: 0px;
  height: 1px;
  border-bottom: 1px solid white;
}

.hr hr:nth-child(1) {
  top: 14px;
  left: 30px;
}

.hr hr:nth-child(2) {
  bottom: 15px;
  right: 30px;
}

.hr hr:nth-child(3),
.hr hr:nth-child(4) {
  width: 1px;
  height: 0px;
  border-left: 1px solid white;
}

.hr hr:nth-child(3) {
  top: 15px;
  left: 30px;
}
.hr hr:nth-child(4) {
  bottom: 15px;
  right: 28px;
}

.text_con {
  width: 490px;
  height: 320px;
  transition: 0.5s;
  display: none;
  position: absolute;
  padding: 220px 0px 20px 20px;
  z-index: 20;
  color: white;
}

.text_con * {
  transition: 1s;
}
</style>
