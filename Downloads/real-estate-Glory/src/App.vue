<template>
  <div id="app">
    <Navbar v-if="isHomePage || isAboutPage" />
    <Sidebar v-if="isInvestDashboard || isInvestments || isInvestPage || isMyProperties || isNotification1 || isSetting1"  />
    <rentsidebar v-if="isRentPage || isRents || isRentdarshboard || isNotifications || isMyItems || isSettings"/>
    <div class="content">
      <router-view />
    </div>
  </div>
</template>

<script>


import Navbar from './components/Navbar.vue';
import Rentsidebar from './components/Rentsidebar.vue';
import Sidebar from './components/Sidebar.vue';


export default {
  components: {
    Navbar,
    Sidebar,
    Rentsidebar,
  },
  computed: {
    isHomePage() {
      return this.$route.path === '/';
    },
    isAboutPage() {
      return this.$route.path === '/About'; 
    },
    isLoginPage() {
      return this.$route.path === '/login';
    },
    isRegisterPage() {
      return this.$route.path === '/register';
    },
    isRentPage(){
      return this.$route.path ==='/rent';
    },
    isRents() {
      return this.$route.path === '/rents';
    },
    isRentdarshboard() {
      return this.$route.path === '/rentdarshboard';
    },
    isInvestDarshboard() {
      return this.$route.path === '/InvestDarshboard';
    },
    isInvestPage() {
      return this.$route.path === '/invest';
    },
    isInvestments() {
      return this.$route.path === '/investments';
    },
    isMyProperties() {
      return this.$route.path === '/MyProperties';
    },
    isNotification1() {
      return this.$route.path === '/notification1';
    },
    isSetting1() {
      return this.$route.path === '/setting1';
    },
    isNotifications() {
      return this.$route.path === '/notifications';
    },
    isSettings() {
      return this.$route.path === '/settings';
    },
   isMyItems() {
      return this.$route.path === '/MyItems';
    },
  
   },
};
</script>

<style>
#app {
  max-width: 3072px; 
  margin: 0 auto;
  padding: 0;
  display: flex; /* Flex container */
}

.sidebar {
  width: 120px;
  background-color: #f0f8ff; /* Light blue background */
  padding: 0px;
  border-right: 1px solid #ccc;
  position: fixed; /* Fix sidebar position */
  height: 100%; /* Full height */
}

.content {
  margin-left: 220px; /* Adjust this to match the width of the sidebar */
  padding: 40px; /* Optional: add some padding for content */
  flex-grow: 1; /* Allows content area to expand */
}

body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  overflow-x: hidden;
  width: 100vw; 
  background-color: white;
}

.rentsidebar {
  width: 120px;
  background-color: #f0f8ff; /* Light blue background */
  padding: 0px;
  border-right: 1px solid #ccc;
  position: fixed; /* Fix sidebar position */
  height: 100%; /* Full height */
}
</style>
