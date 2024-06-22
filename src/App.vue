<template>
  <v-app>
    <HeaderBlock></HeaderBlock>
    <v-main class="router-block">
      NOT FAIL {{ backendURL }}
      <br />
      IS PROD: {{ isProd }}
      <router-view />
    </v-main>
  </v-app>
</template>

<script>
import HeaderBlock from "./components/HeaderBlock.vue";

export default {
  name: "App",
  components: {
    HeaderBlock,
  },
  data() {
    return {
      backendURL: "",
      isProd: "",
    };
  },
  mounted() {
    this.backendURL = process.env.VUE_APP_SERVER_URL;
    this.isProd = process.env.NODE_ENV;
  },
};
</script>

<style lang="scss">
@import "./styles/global.scss";
</style>

<style lang="scss" scoped>
.router-block {
  padding: 28px 32px !important;
}
</style>
