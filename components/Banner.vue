<template>
  <div class="content">
    <b-carousel
      id="carousel-1"
      v-model="slide"
      :interval="4000"
      controls
      indicators
      background="#ababab"
      img-width="1024"
      img-height="480"
      style="text-shadow: 1px 1px 2px #333"
      @sliding-start="onSlideStart(slide)"
      @sliding-end="onSlideEnd(slide)"
    >
      <template v-for="(item, index) in imgData">
        <b-carousel-slide v-if="item.url" :key="index" :img-src="item.url">
          <h1 v-if="item.desc">{{ item.desc }}</h1>
        </b-carousel-slide>
      </template>
    </b-carousel>
  </div>
</template>

<script>
export default {
  name: "Banner",
  props: {
    imgData: {
      type: Array[Object],
      default: [],
    },
    slide: {
      type: Number,
      default: 0,
    },
  },
  data() {
    return {};
  },
  methods: {
    onSlideStart(slide) {
      this.$emit("update:slide", slide);
    },
    onSlideEnd(slide) {
      this.$emit("update:slide", slide);
    },
  },
};
</script>
<style scoped>
.content {
  width: 100%;
}
.breadcrumb {
  padding: 0, 1rem !important;
}
</style>
