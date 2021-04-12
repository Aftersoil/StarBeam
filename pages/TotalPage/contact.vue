<!--  -->
<template>
  <section>
    <header>
      <h1>为您提供专业设计解决方案
        <br/>
        <sub>Provide you with professional design solutions</sub>
      </h1>
    </header>
    <main>
       <div class="container culture pt-5">
         <b-jumbotron header="企业文化" lead="公司发展历程 项目经验">
          <p style="color:#fff">Company culture company experience</p>
          <b-button variant="outline-light" class="" :to="{name:'TotalPage-company'}">More Info</b-button>
        </b-jumbotron>
      </div>

      <!-- 顶部标题 -->
      <h3 class="pt-4">联系我们
        <br/>
        <p><sub>CONCAT US</sub></p>
      </h3>
      <div class="addres_content bd1">
        <Map/>
      </div>
    </main>
    <Footer/>
  </section>
</template>

<script scoped>
import Map from '@/components/Map'
import Footer from '@/components/Footer'
export default {
  name:'contact',
  data () {
    return {
    };
  },

  components: {
    Map,
    Footer
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
section .culture{
  width: 100%;

}

section .culture .jumbotron{
  background-image: url('~/assets/img/company_culture.jpg');
  background-size: cover;
  position: relative;
}
section .culture .jumbotron .display-3{
   font-family: STKaiti;
  /* color: #fff; */
}
section .culture .jumbotron p{
  font-family: STKaiti;
  text-indent: 1.2rem;
  font-weight: 600;
  color: #000;
  font-size: 17px;
}
/* 企业文化区块 */
section .culture .jumbotron .btn {
  position: absolute;
  right: 50px;
}

section h3{
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

section .addres_content{
  width: 100%;
  height: 500px;
  margin-top: 25px;
  border: 0;
}



</style>
