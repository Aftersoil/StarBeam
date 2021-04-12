<template>
  <section>
    <Header/>
    <Nuxt />
    <!-- <Footer/> -->
  </section>
</template>

<script scoped>
import Header from "@/components/Header"
// import Footer from "@/components/Footer"
import Banner from "@/components/Banner"
export default {
  name:'',
  data () {
    return {
    };
  },

  components: {
    Header,
    // Footer,
    Banner
  },


}

</script>
<style>

</style>
