<!--  -->
<template>
  <section class="bd1">
    <div class="container content bdtop">
      <div class="row">
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
  </section>
</template>

<script scoped>
export default {
  name: "Footer",
  data() {
    return {};
  },

  components: {},
};
</script>
<style scoped>
.container {
}
.bd1 {
  /* border: 1px solid red; */
}
section {
  width: 100%;
  background-color: #001432;
  margin-top: 50px;
}
.content {
  margin: 0 auto;
  color: #f7f7f7;
  background-color: #001432;
}
.content .bdtop {
  border: 0;
  /* border-top: 2px solid #ccc; */
  padding-top: 15px;
}
.content .letCode {
  width: 150px;
  margin: 0 auto;
  padding-top: 15px;
}
.content .content_item {
  font-size: 15px;
  position: relative;
}
.content .content_item h6 {
  font-family: STKaiti;
  font-size: 18px;
  /* padding-left: 140px; */
  font-weight: 600;
  text-align: center;
}
.content .content_item p span {
  padding-left: 5px;
}
.content .content_item::before {
  content: "";
  width: 300px;
  height: 150px;
  position: absolute;
  background-image: url("~/assets/img/foot_bg.png");
  background-repeat: no-repeat;
  background-size: 300px 150px;
  right: 0px;
  top: 56px;
  z-index: 1;
}
.content .content_item2 p {
  text-align: center;
}
</style>
