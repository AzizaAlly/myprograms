// src/main.js
import { createApp } from 'vue';
import App from './App.vue';
import router from './router';
import store from './store/index.js'; // Corrected import path

const app = createApp(App);

// Initialize authentication state from localStorage
store.dispatch('initializeAuth');

app.use(store);   // Integrate Vuex store
app.use(router);  // Integrate Vue Router
app.mount('#app');
