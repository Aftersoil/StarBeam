<!-- -->
<template>
  <div id="wrap" class="my-map">
    <div id="mapContainer"></div>
  </div>
</template>

<script scoped>
export default {
  name: "Map",
  data() {
    return {};
  },

  mounted() {
    this.getMap();
  },

  methods: {
    getMap() {
      let mapObj = new AMap.Map("mapContainer", {
        resizeEnable: true,
        zoom: 18,

        center: ["113.008809", "28.113497"],
      });
      let marker = new AMap.Marker({
        map: mapObj,
      });
    },
  },

  components: {},
};
</script>

<style scoped>
.my-map {
  margin: 0 auto;
  width: 1140px;
  height: 500px;
}
.my-map .icon {
  background: url(//a.amap.com/lbs-dev-yuntu/static/web/image/tools/creater/marker.png)
    no-repeat;
}
.my-map .icon-cir {
  height: 31px;
  width: 28px;
}
.my-map .icon-cir-red {
  background-position: -11px -5px;
}
.amap-container {
  height: 100%;
}
.myinfowindow {
  width: 240px;
  min-height: 50px;
}
.myinfowindow h5 {
  height: 20px;
  line-height: 20px;
  overflow: hidden;
  font-size: 14px;
  font-weight: bold;
  width: 220px;
  text-overflow: ellipsis;
  word-break: break-all;
  white-space: nowrap;
}
.myinfowindow div {
  margin-top: 10px;
  min-height: 40px;
  line-height: 20px;
  font-size: 13px;
  color: #6f6f6f;
}
</style>
