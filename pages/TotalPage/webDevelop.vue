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
    <h3  class="web_title pt-4">
     <span>网站开发</span>
     <p><sub>Web development</sub></p>
    </h3>
    <div class="content bg_card ">
      <div class="container" v-for="item in data" v-bind:key="item">
        <div class="col-12 col-sm-3 col-md-6 col1">
          <div class="cotn">
            <div class="c_l">
              <div>{{item.title}}</div>
               <ul style="list-style:none; display:inline" v-for="descItem in formatDate(item.desc)" :key="descItem">
                 <li>{{descItem}}</li>
               </ul>

            </div>
            <div class="c_r">
              <div>》</div>
            </div>
          </div>
        </div>
        <div class="col-12 col-sm-9 col-md-6 col2">
          <nuxtLink :key="item" :to="{
            path:'/detailPage/webDetail',
            query:{
              id:item.id,
            }
            }">

            <div class="con">
              <div
                class="img_con"
                v-bind:style="{ backgroundImage: 'url(' + item.small_img + ')' }"
              ></div>
              <div class="hr">
                <hr />
                <hr />
                <hr />
                <hr />
                <div class="text_con">
                  <h3>
                    <span>{{ item.title }}</span
                    ><br />
                    {{ item.subTitle }}
                  </h3>
                </div>

              </div>
            </div>
          </nuxtLink>
        </div>
      </div>
    </div>
    </main>
    <Footer/>
  </section>
</template>


<script scoped>
import Footer from "@/components/Footer"
export default {
  name: "webDevelop",
  data() {
    return {
      data:[],

    };
  },

  components: {
    Footer
  },

  mounted(){
    this.getData()
    // this.formatDate()
  },
  methods:{
      getData(){
        this.$axios.$get(`/api/category`).then((res)=>{
          this.data = res.data;
          console.log(this.data)

          // this.data.desc = this.formatDate(this.data.desc)
          console.log(this.data);
        })
     },

    formatDate(data) {
      // var strlist="1.品牌网站 , 2.企业 + 外贸企业 官网, 3.集团 + 上市公司 官网, 4.产品 + 营销型 网站",
      const strlist = data.split(",")
      return strlist
    },


  }
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
  font-size: 2em;
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
  background-image: url("~assets/img/testImg/parallaximg3.jpg");
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

.container {
  padding: 0;
  height: 400px;
  display: flex;
  margin-top: 20px;
}

/* 面包屑导航样式 */


/* 标题文字  样式*/
section .web_title{
  font-family: STKaiti;
  padding: 0;
  font-weight: 600;
  color: #000;
  border-bottom: 2px solid #000;
  width: 1137px;
  text-align: center;
  margin: 0px auto;
  line-height: 23px;
}
.container:nth-of-type(even) {
  transform: rotateY(180deg);
}
.container:nth-of-type(even) .col1,
.container:nth-of-type(even) .col2 {
  transform: rotateY(180deg);
}
/* t */

.col1 {
  height: 100%;
  padding: 0;
  background-color: rgba(255, 255, 255,.5);
  padding-top: 60px;
  width: 40%;
}


.col1,.con{
box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
}
.con{
  border-right: 0;
}
.col1,.con:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
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
  padding: 15px 0 0 60px;
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
  color: aliceblue;
}

.con:hover:after {
  background-color: rgba(0, 0, 0, 0.5);
  color: aliceblue;

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
  background-size: cover;
  z-index: 10;
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
}
.text_con h3{
  color: #fcfcfc;
}

.text_con * {
  transition: 1s;
}
</style>
