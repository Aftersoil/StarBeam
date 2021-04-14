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
    <!-- 顶部图片 -->
    <main>
      <div class="container pt-3">
        <!-- 面包屑导航 Start-->
        <div class="row">
          <div class="col-sm-12">
            <b-breadcrumb :items="items"></b-breadcrumb>
          </div>
        </div>
        <!-- 面包屑导航 END-->

        <!-- 视频卡片 Start -->
        <div class="big_card bd1">
          <div class="card_title">
            <h3>{{ data.sub_title }}</h3>

            <p class="sub_title">
              <span style="">{{ data.title }}</span> · 视频发布日期
              {{ formatDate(data.createTime) }}
            </p>
          </div>
          <div class="card_video">
            <video width="100%" controls src="～/assets/video/v1.mp4">
              您的版本太低
            </video>
          </div>
          <div class="info">{{ data.desc }}</div>
        </div>
        <!-- 视频卡片 End -->
        <!-- <b-button variant="dark">返回上一页</b-button> -->
      </div>
    </main>
    <Footer />
  </section>
</template>

<script scoped>
import Map from "@/components/Map";
import Footer from "@/components/Footer";
import { formatDate } from "@/assets/js/util";

export default {
  name: "worksDetailOne",
  data() {
    return {
      items: [
        {
          text: "Admin",
          href: "#",
        },
        {
          text: "Manage",
          href: "#",
        },
        {
          text: "Library",
          active: true,
        },
      ],

      data: [],
    };
  },
  mounted() {
    this.getData();
  },
  methods: {
    getData() {
      const id = this.$route.query.id;
      console.log(id);
      this.$axios.get(`/api/opus/${id}`).then((res) => {
        const { data } = res.data;

        if (data) {
          this.data = data[0];
          console.log(this.data);
        }
      });
    },
    formatDate(time) {
      time = Number.parseInt(time);
      console.log(time);
      let data = new Date(time);
      return formatDate(data, "yyyy-MM-dd hh:mm:ss");
    },
  },
  components: {
    Map,
    Footer,
  },
};
</script>
<style scoped>
/* 视觉差固定样式START */
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

/* 视觉差固定样式 END*/
main {
  position: relative;
  letter-spacing: 0.075em;
  background-color: white;
  height: 800px;
}
/* 顶部结束 */

.bd1 {
  border-bottom: 1px solid rgb(129, 129, 129);
}

/* 内容开始 */
/* 面包屑样式代码 */
.container .breadcrumb {
  background-color: #fff;
  padding: 0;
}
.container .breadcrumb a {
  color: #000;
}

/* 视频Card区域 */
.big_card {
  padding: 8px;
}
.card_title h3 {
  text-align: center;
  line-height: 50px;
  border-bottom: 1px solid rgb(129, 129, 129);
}
.card_title .sub_title {
  font-size: 13px;
  display: inline-block;
  color: #999;
  width: 100%;
  text-align: right;
}

.big_card .card_video {
}
.info {
  white-space: pre-line;
  transition: all 0.3s;
  font-size: 14px;
  color: #212121;
  /* letter-spacing: 0; */
  line-height: 18px;
  /* height: 63px; */
  /* width: 573px; */
  overflow: hidden;
}
</style>
