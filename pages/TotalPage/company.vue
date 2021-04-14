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
      <div class="container pt-3">
        <h3>企业文化</h3>
        <div class="row">
          <div class="col-md-8 offset-md-2 col-sm-12 content_text">
            <p>
              <strong>星梁文化传媒</strong>是一家集合 互联网信息服务
              互联网科技技术咨询；互联网科技技术服务；互联网开发；
              文化会展服务；文化艺术竞赛活动的组织策划 文化艺术咨询服务；
              文化娱乐经纪人；文化艺术品互联网销售；群众参与的文艺类演出、
              比赛等公益性文化活动的策划等。
            </p>
            <div class="row">
              <div class="col-md-4 bgs_item bd1">
                <!-- <img src="~/assets/img/j2.png" alt=""> -->
              </div>
              <div class="col-md-4 bgs_item bd1">
                <!-- <img src="~/assets/img/j2.png" alt=""> -->
              </div>
              <div class="col-md-4 bgs_item bd1">lorem</div>
            </div>
          </div>
        </div>

        <!-- 服务范围 -->
        <h3>服务范围</h3>
        <!-- 第一列 -->
        <div class="row">
          <div class="col-6">
            <div class="row card_style">
              <div class="col-3">
                <!-- 图标 -->
                <i class="iconfont icon-dianyingyuan"></i>
              </div>
              <!-- 描述 -->
              <div class="col-9 service_text">
                <strong>微电影</strong>
                <p>
                  团队拥有资深的导演、策划、拍摄和制作团队，
                  专注为客户创造和设计品牌传播价值，
                  提供从影视广告拍摄制作、演出视频等音像制作，
                  全面提升客户品牌传播价值...
                </p>
              </div>
            </div>
          </div>

          <div class="col-6">
            <div class="row card_style">
              <div class="col-3">
                <!-- 图标 -->
                <i class="iconfont icon-wangzhan"></i>
              </div>
              <!-- 描述 -->
              <div class="col-9 service_text">
                <strong>网站开发</strong>
                <p>
                  专注网站建设、网站设计、品牌设计、空间设计、
                  网络营销、网站托管、整合营销服务为核心服务。
                  专注于创意设计实现商业价值较大化，
                  为所有谋求长远发展的企业提升品牌品质。
                </p>
              </div>
            </div>
          </div>
        </div>

        <!-- 第二列 -->
        <div class="row mt-2">
          <div class="col-6">
            <div class="row card_style">
              <div class="col-3">
                <!-- 图标 -->
                <i class="iconfont icon-xuanchuanshipin"></i>
              </div>
              <!-- 描述 -->
              <div class="col-9 service_text">
                <strong>宣传片</strong>
                <p>
                  为客户量身定制影视广告、360全景视频和会议会务策划
                  （包括：企业宣传片、TVC广告片、品牌微电影、培训教学片、
                  活动策划等）
                </p>
              </div>
            </div>
          </div>

          <div class="col-6">
            <div class="row card_style">
              <div class="col-3">
                <!-- 图标 -->
                <i class="iconfont icon-guanggao"></i>
              </div>
              <!-- 描述 -->
              <div class="col-9 service_text">
                <strong>广告</strong>
                <p>
                  为客户提供包括企业文化表现、品牌管理咨询、
                  平面设计制作、会展活动策划、
                  等不同的解决方案和专业的咨询服务， 帮助客户进行企业战略建设
                </p>
              </div>
            </div>
          </div>
        </div>

        <!-- 服务范围 -->
        <h3 class="mb-5">发展历程</h3>

        <div class="time_line">
          <time-line :timeline-list="dongtai"></time-line>
        </div>
      </div>
    </main>
    <Footer />
  </section>
</template>

<script scoped>
import Map from "@/components/Map";
import Footer from "@/components/Footer";
import TimeLine from "@/components/TimeLine";
export default {
  name: "contact",
  data() {
    return {
      dongtai: [
        {
          date: "2012-12-21",
          title: "时间线1",
          content: "时间线1内容",
        },
        {
          date: "2012-12-21",
          title: "时间线2",
          content: "时间线2内容",
        },
        {
          date: "2012-12-21",
          title: "时间线3",
          content: "时间线3内容",
        },
      ],
    };
  },

  components: {
    Map,
    Footer,
    TimeLine,
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
.container h3 {
  font-family: STKaiti;
  padding: 8px 0;
  line-height: 50px;
  font-weight: 600;
  color: #000;
  border-bottom: 2px solid #cccc;
  padding-bottom: 7px;
  text-align: center;
}
.container .content_text {
  text-indent: 15px;
  text-align: center;
}
.bd1 {
  border: 1px solid #000;
}
.container .bgs_item {
  background-image: url("~/assets/img/j2.png");
  background-size: cover;
  height: 150px;
  border: 5px solid #fff;
}

.service_text {
  display: inline-block;
  line-height: 30px;
  text-align: center;
}
.service_text p {
  text-indent: 15px;
  text-align: left;
}
/* 卡片外部样式 */
.card_style {
  border: 1px solid #ccc;
}
/* .time_line{
  widt;
} */
</style>
