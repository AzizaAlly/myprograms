<template>
    <nav class="navbar">
      <div class="logo">Real estate</div>
      <ul>
        <li><router-link to="/" active-class="active">Home</router-link></li>
        <li><router-link to="/about" active-class="active">About</router-link></li>

        <li class="dropdown">
          <router-link to="">Services</router-link>
          <ul class="dropdown-content">
            <li>
              <a @click="goToRent">Rent</a>
            </li>
            <li>
              <a @click="goToInvest">Invest</a>
           </li>
          </ul>
        </li>
      </ul>
      <div class="auth-buttons">
        <router-link to="/login"><button class="login">Login</button></router-link>
        <router-link to="/register"><button class="register">Register</button></router-link>
      </div>
    </nav>
  </template>
  
  <script>
  export default {
    name: 'Navbar',
    methods: {
      selectService(service) {
        console.log('Service Selected:', service);
      },

      goToRent() {
      this.$router.push('/rent');
    },
    goToInvest() {
      this.$router.push('/invest');
    }

    }
  }
  </script>
  
  <style scoped>
  .navbar {
    position: fixed; 
    top: 0;
    left: 0;
    width: 100%; 
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem 2rem;
    background-color: white;
    z-index: 1000; 
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3); 
  }
  
  .logo {
    font-size: 24px;
    font-weight: bold;
    color: #009688;
  }
  
  ul {
    list-style: none;
    display: flex;
    gap: 1.5rem;
    margin: 0;
  }
  
  li a {
    text-decoration: none;
    color: #333;
    font-size: 16px;
  }

  li a:hover {
    color: #009688;
  }
  
  .dropdown {
    position: relative;
    cursor: pointer;
  }
  
  .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    z-index: 1;
    top: 100%; 
    left: 0;
  }
  
  .dropdown-content li {
    padding: 12px 16px;
    background-color: white;
  }
  
  .dropdown-content li a {
    text-decoration: none;
    color: #009688;
  }
  
  .dropdown:hover .dropdown-content {
    display: block;
  }
  
  .auth-buttons {
    display: flex;
    gap: 1rem;
  }
  
  .login, .register {
    border: none;
    padding: 0.5rem 1rem;
    cursor: pointer;
    font-size: 16px;
    transition: all 0.3s ease; 
    border-radius: 20px;
  }
  
  .login {
    background-color: white;
    color: #009688;
    border: 2px solid #009688;
  }
  
  .register {
    background-color: white;
    color: #009688;
    border: 2px solid #009688;
  }
  
  .login:hover, .register:hover {
    background-color: #009688;
    color: white;
  }
  </style>
  