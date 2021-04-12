export default {
  // Global page headers (https://go.nuxtjs.dev/config-head)
  head: {
    title: 'StarBaem',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
      { rel: 'stylesheet', href: 'https://cdn.jsdelivr.net/npm/normalizecss@3.0.0/normalize.css' },
      { rel: 'stylesheet', href: 'https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css' },
    ],
    script: [
      { src: "https://webapi.amap.com/maps?v=1.4.15&key=b26f83d4dc38370d03c7b2628fd66342" },
    ]
  },

  // Global CSS (https://go.nuxtjs.dev/config-css)
  css: [
    '~/assets/css/main.css',
    'swiper/swiper.min.css'
  ],


  // Plugins to run before rendering page (https://go.nuxtjs.dev/config-plugins)
  plugins: [
    // '~plugins/canvas01.js',
    '@/plugins/axios.js',
    { src: '~/plugins/swiper.js', ssr: false }

  ],

  // Auto import components (https://go.nuxtjs.dev/config-components)
  components: true,

  // Modules for dev and build (recommended) (https://go.nuxtjs.dev/config-modules)
  buildModules: [
  ],

  // Modules (https://go.nuxtjs.dev/config-modules)
  modules: [
    // https://go.nuxtjs.dev/bootstrap
    'bootstrap-vue/nuxt',
    // https://go.nuxtjs.dev/axios
    '@nuxtjs/axios'
  ],

  // Axios module configuration (https://go.nuxtjs.dev/config-axios)
  axios: {
    proxy: true,
    // baseURL: process.env.NODE_ENV === 'development' ? 'http://127.0.0.1:7001/' : 'http://cboy.eyuanxing.cn:7001/'
    baseURL: 'http://localhost:7001/'
  },
  proxy: {
    '/api/': 'http://127.0.0.1:7001/',
    '/public/': {
      target: 'http://127.0.0.1:7001/',
    },
  },


  // Build Configuration (https://go.nuxtjs.dev/config-build)
  build: {
  }
}
