<!--  -->
<template>
  <div class="footer">
      <!--Waves Container-->
      <div class="foot_content">
        <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
          <defs>
            <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
          </defs>
          <g class="parallax">
            <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(0,0,0,0.7" />
            <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(0,0,0,0.5)" />
            <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(0,0,0,0.3)" />
            <use xlink:href="#gentle-wave" x="48" y="7" fill="#000" />
          </g>
        </svg>
      </div>
      <!--Waves end-->
      <div class="bg_row">

        <div  class="foot_text">
            <!-- <p>适用浏览器：360、FireFox、Chrome、Opera、傲游、搜狗、世界之窗. 不支持Safari、IE8及以下浏览器。</p>
            <p>来源：<a href="http://www.kaiu.net/" target="_blank">开优网络</a></p> -->
            <div class="row bt_bg">
                <!-- 底部左侧 -->
                <div class="col-7 content_item bd1">
                  <h6>湖南省星梁文化传媒有限公司</h6>
                  <p>
                    <b><i class="fa fa-user-circle"></i> :</b><span>XX</span>
                  </p>
                  <p>
                    <b><i class="fa fa-phone"></i> :</b><span>1231232131x</span>
                  </p>
                  <p>
                    <b><i class="fa fa-bandcamp"></i> :</b><span>1231232131x</span>
                  </p>
                  <p>
                    <b><i class="fa fa-envelope-o"></i> :</b
                    ><span>l2390@email.com</span>
                  </p>
                </div>

                <!-- 底部右侧 -->
                <div class="col-5 content_item2 bd1">
                  <div class="letCode">
                    <img src="~/assets/img/gzh.jpg" width="100%" alt="" />
                  </div>
                  <p><strong>加入公众号</strong></p>
                </div>
              </div>

        </div>

      </div>
  </div>
  <!--Header ends-->

</template>

<script scoped>
export default {
  name:'Footer',
  data () {
    return {
    };
  },

  components: {},
}

</script>
<style scoped>

@import url(http://fonts.googleapis.com/css?family=Lato:300:400);

h1 {
  font-family: 'Lato', sans-serif;
  font-weight:300;
  letter-spacing: 2px;
  font-size:48px;
}
p {
  font-family: 'Lato', sans-serif;
  letter-spacing: 1px;
  font-size:14px;
  color: #333333;
  margin: 0;
  padding: 0;
}

.footer {
  position:relative;
  margin-top: 50px;
}


.inner-header {
  height:90vh;
  width:100%;
  margin: 0;
  padding: 0;
}

.waves {
    position: relative;
    width: 100%;
    margin-bottom: 0px;
    min-height: 100px;
    max-height: 200px;
}

.content {
  position:relative;
  /* height:15vh; */
  text-align:center;
  background-color: #000;
}



/* Animation */

.parallax > use {
  animation: move-forever 25s cubic-bezier(.55,.5,.45,.5)     infinite;
}
.parallax > use:nth-child(1) {
  animation-delay: -2s;
  animation-duration: 7s;
}
.parallax > use:nth-child(2) {
  animation-delay: -3s;
  animation-duration: 10s;
}
.parallax > use:nth-child(3) {
  animation-delay: -4s;
  animation-duration: 13s;
}
.parallax > use:nth-child(4) {
  animation-delay: -5s;
  animation-duration: 20s;
}
@keyframes move-forever {
  0% {
   transform: translate3d(-90px,0,0);
  }
  100% {
    transform: translate3d(85px,0,0);
  }
}
/*Shrinking for mobile*/
@media (max-width: 768px) {
  .waves {
    height:30px;
    min-height:20px;
  }
  .content {
    height:25vh;
  }
  h1 {
    font-size:24px;
  }
}
.bg_row{
  background-color: #000;
}

/* 底部样式添加 */
.footer .foot_text{
   width: 60%;
   text-align:left;
   background-color:#000;
   height:40%;
   font:normal 14px/24px 'MicroSoft YaHei';

}
.footer .foot_text p{
  color: #fff;
}
.letCode {
  width: 150px;
  margin: 0 auto;
  padding-top: 15px;
}
.content_item {
  padding-top: 20px;
}
.content_item2  p{
  text-align: center;
  font-weight: 100;
}

.foot_text {
  margin: 0 auto;
  color: #f7f7f7;
  background-color: #001432;
}
/* 底部样式 */

.foot_text .letCode {
  width: 150px;
  margin: 0 auto;
  padding-top: 15px;
}

</style>
