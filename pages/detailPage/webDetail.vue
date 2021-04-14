<!--  -->
<template>
  <section>
    <header>
      <h1>
        Web 网站开发
        <br />
        <sub>Provide you with professional design solutions</sub>
      </h1>
    </header>
    <main>
      <div class="container">
        <div v-if="routId == 1" class="row">
          <template class="" v-for="(item, index) in dataList">
            <div class="col-4" :key="index">
              <img :src="item.itemImg" width="100%" alt="" />

              <p class="title">
                <span>
                  {{ item.itemTitle }}
                </span>
              </p>
              <p
                class="sub_title"
                style="color: rgb(153, 153, 153); font-size: 14px"
              >
                <span>
                  {{ item.itemSubTitle }}
                </span>
              </p>
            </div>
          </template>
        </div>

        <template
          v-else-if="routId == 2"
          class="contaienr"
          v-for="(item, index) in dataList"
        >
          <b-card
            no-body
            :key="index"
            class="overflow-hidden mt-3"
            style="max-width: 100%"
          >
            <b-row no-gutters>
              <b-col md="3">
                <b-card-img
                  :src="item.itemImg"
                  alt="Image"
                  class="rounded-0"
                ></b-card-img>
              </b-col>
              <b-col md="9">
                <b-card-body>
                  <b-card-text>
                    <h4 class="card_title" color="#999999">
                      {{ item.itemTitle }}
                      <br />
                      <sub>{{ item.itemSubTitle }}</sub>
                    </h4>
                    <div class="card_desc">
                      <p>
                        <span> </span>
                      </p>
                      <p>
                        <span>
                          {{ item.itemDesc }}
                        </span>
                      </p>
                    </div>
                  </b-card-text>
                </b-card-body>
              </b-col>
            </b-row>
          </b-card>
        </template>

        <template
          v-else-if="routId == 3"
          class="contaienr"
          v-for="(item, index) in dataList"
        >
          <b-card
            no-body
            :key="index"
            class="overflow-hidden mt-3"
            style="max-width: 100%"
          >
            <b-row no-gutters>
              <b-col md="3">
                <b-card-img
                  :src="item.itemImg"
                  alt="Image"
                  class="rounded-0"
                ></b-card-img>
              </b-col>
              <b-col md="9">
                <b-card-body>
                  <b-card-text>
                    <h4 class="card_title" color="#999999">
                      {{ item.itemTitle }}
                      <br />
                      <sub>{{ item.itemSubTitle }}</sub>
                    </h4>
                    <div class="card_desc">
                      <p>
                        <span> </span>
                      </p>
                      <p>
                        <span>
                          {{ item.itemDesc }}
                        </span>
                      </p>
                    </div>
                  </b-card-text>
                </b-card-body>
              </b-col>
            </b-row>
          </b-card>
        </template>
      </div>
    </main>
    <Footer />
  </section>
</template>

<script scoped>
import Footer from "@/components/Footer";
export default {
  name: "webDetail",
  data() {
    return {
      dataList: [],
      test: false,
      pid: 2,
      routId: this.$route.query.id,
      isShow: true,
    };
  },

  components: {
    Footer,
  },

  mounted() {
    this.getCardList();
  },
  methods: {
    async getCardList() {
      const id = this.$route.query.id;
      const { ...data } = await this.$axios.$get(`/api/category/project/${id}`);
      console.log(data.data);
      this.dataList = data.data[0].project
    },
  },
};
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

/* 网站布局 */
.title,
.sub_title {
  text-align: center;
}

/* 小程序移动端 */

.card-img {
  margin-top: 10px;
  margin-left: 50px;
  width: 150px !important;
}
.card_img img {
  width: 20%;
}
.card_title sub {
  color: #999;
  font-size: 13px;
}
.card_desc {
  width: 100%;
  font-size: 16px;
  padding-top: 10px;
}
.card_desc p {
  line-height: 25px;
}
</style>
