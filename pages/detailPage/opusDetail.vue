<!-- 作品分类下的所有作品 -->
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
        <b-form-file
          v-model="file"
          :state="Boolean(file)"
          placeholder="Choose a file or drop it here..."
          drop-placeholder="Drop file here..."
        ></b-form-file>
      </div>
    </main>
    <Footer />
  </section>
</template>

<script>
import Footer from "@/components/Footer";
export default {
  components: { Footer },
  data() {
    return {};
  },
};
</script>

<style>
</style>