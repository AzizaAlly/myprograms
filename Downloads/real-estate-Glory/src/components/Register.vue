<template>
    <div class="container">
      <h2>Register</h2>
      <p>Already have an account? <router-link to="/login">Login</router-link></p>
      <form @submit.prevent="handleRegister">
        <div class="input-container">
          <input type="text" placeholder="Full Name" v-model="username" required />
        </div>
        <div class="input-container">
          <input type="email" placeholder="Email" v-model="email" required />
        </div>
        <div class="input-container">
        <input type="text" placeholder="Wallet address" v-model="Address" required />
        </div>
        <div class="input-container">
          <input type="password" placeholder="Password" v-model="password" required />
        </div>
        <button type="submit">Register</button>
      </form>
      
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        username: '',
        email: '',
        password: ''
      };
    },
    methods: {
      handleRegister() {
        // Handle registration logic
        console.log('Registering:', this.username);
      }
    }
  };
  </script>
  
  <style scoped>
  .container {
    max-width: 300px;
    margin: 200px auto;
    padding: 10rem;
    background: #e0e5ec;
    border-radius: 20px;
    box-shadow: 8px 8px 20px #a3b1c6, -8px -8px 20px #ffffff;
    text-align: center;
  }
  
  .input-container {
    margin-bottom: 2rem;
    max-width: 600px;
    width: 300px;
  }
  
  input {
    width: 100%;
    padding: 1rem;
    border: none;
    border-radius: 10px;
    box-shadow: inset 5px 5px 10px #a3b1c6, inset -5px -5px 10px #ffffff;
  }
  
  button {
    padding: 1rem;
    border: none;
    width: 10rem;
    border-radius: 20px;
    background-color: #009688;
    color: white;
    cursor: pointer;
    box-shadow: 5px 5px 10px #a3b1c6, -5px -5px 10px #ffffff;
    transition: all 0.3s;
  }
  
  button:hover {
    box-shadow: 2px 2px 5px #a3b1c6, -2px -2px 5px #ffffff;
  }
  </style>
  