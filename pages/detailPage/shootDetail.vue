<!--  -->
<template>
  <section>
    <header>
      <h1>
        为您提供专业设计解决方案
        <br />
        <sub>Provide you with professional design solutions</sub>
      </h1>
    </header>
    <main>
      <div class="container">
        <template v-if="!title">
          <div>暂时还没有数据</div>
        </template>
        <template v-else>
          <div class="shoot-detail-header border-bottom">
            <h2 class="title">{{ title }}</h2>
            <span class="desc">{{ desc }}</span>
          </div>
          <div class="shoot-detail-wrapp">
            <Banner
              :imgData="imgData"
              :slide.sync="currentIndex"
              @sliding-start="prevClick(slide)"
              @sliding-end="nextClick(slide)"
            />
            <div id="smallpicarea">
              <div id="thumbs">
                <ul>
                  <li
                    class="first btnPrev fa fa-chevron-left"
                    @click="prevClick()"
                  ></li>
                  <li v-for="(item, index) in imgData" :key="index">
                    <a @click="clickThumbs(index)">
                      <img
                        :src="item.link"
                        :class="currentIndex == index ? 'current' : ''"
                        :ref="`thumb_${index}`"
                      />
                    </a>
                  </li>
                  <li
                    class="last btnNext fa fa-chevron-right"
                    @click="nextClick()"
                  ></li>
                </ul>
              </div>
            </div>
          </div>
        </template>

           
      </div>
    </main>
    <Footer />
  </section>
</template>

<script scoped>
import Footer from "@/components/Footer";
import Banner from "@/components/Banner";

export default {
  name: "contact",
  data() {
    return {
      // 图片数据
      title: "",
      desc: "",
      imgData: [
        {
          url: "https://picsum.photos/1024/480/?image=10",
          desc: "这是描述",
        },
      ],
      currentIndex: 0,
      timer: null,
    };
  },
  mounted() {
    this.getData();
    console.log();
  },
  methods: {
    clickThumbs(index) {
      this.currentIndex = index;
    },
    prevClick() {
      this.currentIndex = this.currentIndex - 1;
      if (this.currentIndex < 0) {
        this.currentIndex = this.imgData.length - 1;
      }
    },
    nextClick() {
      this.currentIndex = this.currentIndex + 1;
      if (this.currentIndex > this.imgData.length - 1) {
        this.currentIndex = 0;
      }
    },
    async getData() {
      const id = this.$route.query.id;
      let { data } = await this.$axios.get(`/api/shootBanner/${id}`);

      if (data.data[0]) {
        data = data.data[0];
        this.title = data.title;
        this.desc = data.desc;
        this.imgData = data.banner;
      }
    },
  },

  components: {
    Banner,
    Footer,
  },
};
</script>
<style scoped>
.container {
  padding: 15px;
}
.shoot-detail-header {
  padding: 10px;
  text-align: center;
}
.shoot-detail-header .desc {
  font-size: 12px;
}
.shoot-detail-wrapp {
  padding: 15px;
  margin: 0 auto;
}
.shoot-detail-desc {
  font-size: 14px;
  color: #212121;
  min-height: 18px;
  line-height: 18px;
}
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

.bd1 {
  border: 1px solid #000;
}
section .culture {
  width: 100%;
}

section .culture .jumbotron {
  background-image: url("~/assets/img/company_culture.jpg");
  background-size: cover;
  position: relative;
}
section .culture .jumbotron .display-3 {
  font-family: STKaiti;
  /* color: #fff; */
  color: #fff;
}
section .culture .jumbotron p {
  text-indent: 1.2rem;
  color: #000;
  font-weight: 600;
  font-size: 17px;
}
/* 企业文化区块 */
section .culture .jumbotron .btn {
  position: absolute;
  right: 50px;
}

section h3 {
  text-align: center;
  font-family: STKaiti;
  font-weight: 600;
  color: #000;
  border-bottom: 2px solid #ccc;
  line-height: 23px;
  width: 1104px;
  margin: 0 auto;
  margin-top: 10px;
}

section .addres_content {
  width: 100%;
  height: 500px;
  margin-top: 25px;
  border: 0;
}
#smallpicarea {
  margin: 0px auto;
  width: 100%;
  padding-top: 20px;
}
#thumbs {
  display: flex;
  align-items: center;
  justify-content: center;
  list-style-type: none;
  margin: 0px auto;
  width: 100%;
  height: 110px;
}
#thumbs ul {
  margin-top: 3px;
  padding-bottom: 0px;
  margin: 0px;
  padding-left: 0px;
  padding-right: 0px;
  padding-top: 0px;
}
#thumbs li {
  display: inline;
  float: left;
  margin: 0px 7px;
  width: 90px;
  height: 60px;
}
#thumbs li.first {
  margin: 25px 10px 0px 15px;
  width: 9px;
  height: 16px;
  cursor: pointer;
}
#thumbs li.last {
  margin-top: 25px;
  margin-left: 10px;
  width: 9px;
  height: 16px;
  cursor: pointer;
}
#thumbs li a {
  cursor: pointer;
  border: #fff 2px solid;
  width: 90px;
  display: block;
  font-size: 0px;
}
#thumbs li a :hover {
  border: #9a0000 2px solid;
}
#thumbs li a img {
  width: 90px;

  height: 60px;
}
.current {
  border: #9a0000 2px solid;
}
</style>
