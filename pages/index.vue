<template>
  <section class="content bd1">
    <div class="section">
      <!-- 顶部内容模块 -->
      <div class="container  bd1 mt-3">
        <h4 style="text-align:center; ">
          公司业务<br/>
          <sub>Company Business</sub>
        </h4>
        <div class="row  fun_content1 mt-4 mb-4">
          <div class="col-2 bd1 cont_1">
            <p><span>拍摄剪辑</span></p>
          </div>
          <div class="col-2 bd1 cont_2">
             <p><span>纪录片</span></p>
            <!-- <img src="~/assets/img/j3.jpg" width="100%" alt=""> -->
          </div>
          <div class="col-2  bd1 cont_3">
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


    <div class="section" id="content1">
       <h4 style="text-align:center; color:#000;">
          项目案例<br/>
          <sub>Project cases</sub>
       </h4>
       <div class="container">
         <div class="row">
           <div class="col-6 bd1">
             Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dicta rerum sed praesentium repellat corrupti repudiandae earum cupiditate pariatur explicabo quia perspiciatis ducimus modi quis fuga, rem eos quo obcaecati architecto?
           </div>
           <div class="col-6 bd1">
              Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dicta rerum sed praesentium repellat corrupti repudiandae earum cupiditate pariatur explicabo quia perspiciatis ducimus modi quis fuga, rem eos quo obcaecati architecto?
           </div>
         </div>
       </div>
    </div>

    <div class="section img" id="img2" >IMG 2</div>

    <div class="section" id="footer">
      <Footer/>
    </div>

  </div>
  </section>
</template>

<script>
import Footer from "@/components/Footer"
export default {
  name:"",
  data() {
    return {

    }
  },
  components:{
    Footer
  }

}
</script>

<style>
html{
  color: #000;
}
.bd1{
  border: 1px solid #000;
}
/* 隐藏导航栏 */
::-webkit-scrollbar{
    display: none;
}
.content{
  width: 100vw;
  height: auto;
  /* border: 1px solid #000;1B2E53 */
  background-color: #fff;
  /* border: 1px solid #fff; */

}

.container h4{
  font-family: STKaiti;
  font-weight: 600;
  color: #000;
  border-bottom: 2px solid #000;
  width: 1045px;
  padding-bottom: 7px;
  margin: 0 auto;
}
.content .fun_content1{
  /* border-radius: 3px; */
  border-width: 3px;
  border: 0;

}

.content .fun_content1 div{
  margin: 10px auto;
}
.content .fun_content1 .cont_1,
.content .fun_content1 .cont_2,
.content .fun_content1 .cont_3,
.content .fun_content1 .cont_4{
  background-size: cover;
  width: 140px;
  height: 130px;
  position: relative;
  border-width: 5px;
  border-color: rgba(255, 255, 255, 0.9);
  /* z-index: 999; */
}

.content .fun_content1 .cont_1{
  background-image: url('~/assets/img/j2.png');
}
.content .fun_content1 .cont_2{
  background-image: url('~/assets/img/j3.png');
}
.content .fun_content1 .cont_3{
  background-image: url('~/assets/img/w1.png');
}
.content .fun_content1 .cont_4{
  background-image: url('~/assets/img/q2.png');
}
.content .fun_content1 div p{
  margin: 0;padding: 0;
  text-align: center;
  background-color: rgba(28,28,28,0.5);
  position: absolute;
  left: 0;
  width: 100%;
  bottom: -1px;
}

.content1 {

}










.content .section{
  height: 350px;
}
.content .section #content1{
  height: 750px;
  /* background-color: rgba(28,28,28,0.5); */
  background-color: #ffff;

}

.content .section #footer{
  height: 300px;
}




.img{
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

#img1{
    background-image: url('~/assets/img/testImg/1.jpg');
}
#img2{
    background-image: url('~/assets/img/testImg/3.jpg');
}
#img3{
    background-image: url('~/assets/img/testImg/6.jpg');
}



</style>
