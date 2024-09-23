import { createRouter, createWebHistory } from 'vue-router';
import Home from './components/Home.vue';
import About from './components/About.vue';
import Login from './components/Login.vue';
import Register from './components/Register.vue';
import RentPage from './components/RentPage.vue'; 
import InvestPage from './components/InvestPage.vue';
import Investments from './components/Investments.vue'; 
import InvestDashboard from './components/InvestDashboard.vue'; 
import Notifications from './components/Notifications.vue'; 
import Settings from './components/Settings.vue'; 
import MyProperties from './components/MyProperties.vue';
import Rents from './components/Rents.vue';
import Rentdashboard from './components/Rentdashboard.vue';
import MyItems from './components/MyItems.vue';
import Notification1 from './components/Notification1.vue';
import Setting1 from './components/Setting1.vue';

 

const routes = [
  { path: '/', component: Home }, 
  { path: '/About', name: 'About', component: About}, 
  { path: '/login', name: 'Login', component: Login},
  { path: '/register', name: 'Register', component: Register},
  { path: '/rent', name: 'Rent', component: RentPage },
  { path: '/Rentdashboard', component: Rentdashboard},
  { path: '/rents', component: Rents },
  { path: '/invest', name: 'Invest', component: InvestPage},
  { path: '/InvestDashboard', component: InvestDashboard },
  { path: '/investments', component: Investments },
  { path: '/notifications', component: Notifications },
  { path: '/settings', component: Settings },
  { path: '/MyProperties', component: MyProperties },
  { path: '/MyItems', component: MyItems },
  { path: '/notification1', component: Notification1 },
  { path: '/setting1', component: Setting1 },

  

];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
