// src/store/index.js
import { createStore } from 'vuex';

export default createStore({
  state: {
    isAuthenticated: false, // Authentication status
    user: null,             // User information (optional)
    properties: [           // List of properties
      // Initial properties can be added here or managed dynamically
      /*
      Example property structure:
      {
        id: 1,
        name: 'Luxury Apartment',
        price: 250000,
        location: 'City Center',
        features: ['2 Bedrooms', '1 Bathroom', 'Swimming Pool'],
        ownerContact: { email: 'owner1@example.com', phone: '123-456-7890' },
        images: ['path/to/image1.jpg', 'path/to/image2.jpg'],
      }
      */
    ],
  },
  mutations: {
    SET_AUTH(state, payload) {
      state.isAuthenticated = payload.isAuthenticated;
      state.user = payload.user;
    },
    LOGOUT(state) {
      state.isAuthenticated = false;
      state.user = null;
    },
    ADD_PROPERTY(state, property) {
      state.properties.push(property);
    },
    UPDATE_PROPERTY(state, updatedProperty) {
      const index = state.properties.findIndex(prop => prop.id === updatedProperty.id);
      if (index !== -1) {
        state.properties.splice(index, 1, updatedProperty);
      }
    },
    DELETE_PROPERTY(state, propertyId) {
      state.properties = state.properties.filter(prop => prop.id !== propertyId);
    },
  },
  actions: {
    login({ commit }, { email, password }) {
      return new Promise((resolve, reject) => {
        // Simulate an API call for authentication
        setTimeout(() => {
          // Replace this with real authentication logic (e.g., API call)
          if (email === 'user@example.com' && password === 'password') {
            const user = { email, name: 'John Doe' }; // Example user data
            commit('SET_AUTH', { isAuthenticated: true, user });
            // Optionally, store auth tokens in localStorage or cookies
            localStorage.setItem('auth', JSON.stringify({ isAuthenticated: true, user }));
            resolve();
          } else {
            reject(new Error('Invalid email or password'));
          }
        }, 1000);
      });
    },
    logout({ commit }) {
      return new Promise((resolve) => {
        // Simulate API call for logout
        setTimeout(() => {
          commit('LOGOUT');
          localStorage.removeItem('auth');
          resolve();
        }, 500);
      });
    },
    initializeAuth({ commit }) {
      const auth = JSON.parse(localStorage.getItem('auth'));
      if (auth && auth.isAuthenticated) {
        commit('SET_AUTH', { isAuthenticated: true, user: auth.user });
      }
    },
    addProperty({ commit }, property) {
      commit('ADD_PROPERTY', property);
    },
    updateProperty({ commit }, property) {
      commit('UPDATE_PROPERTY', property);
    },
    deleteProperty({ commit }, propertyId) {
      commit('DELETE_PROPERTY', propertyId);
    },
  },
  getters: {
    isAuthenticated: (state) => state.isAuthenticated,
    user: (state) => state.user,
    properties: (state) => state.properties,
    featuredHouses: (state) => {
      // Define criteria for featured houses (e.g., specific features)
      return state.properties.filter(property => 
        property.features.includes('Swimming Pool') || 
        property.features.includes('Ocean View')
      );
    },
  },
});
