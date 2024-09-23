<!-- src/components/Settings.vue -->
<template>
    <div class="setting1">
      <h1>Settings</h1>
      <p>Configure your account settings here.</p>
      <!-- Add settings-related content here -->
      <form @submit.prevent="saveSettings">
        <div class="form-group1">
          <label for="username">Username:</label>
          <input type="text" v-model="settings.username" id="username" required />
        </div>
        <div class="form-group1">
          <label for="email">Email:</label>
          <input type="email" v-model="settings.email" id="email" required />
        </div>
        <div class="form-group1">
          <label for="password">Password:</label>
          <input type="password" v-model="settings.password" id="password" required />
        </div>
        <button type="submit" class="save-button">Save Settings</button>
      </form>
    </div>
  </template>
  
  <script>
  export default {
    name: 'Setting1',
    data() {
      return {
        settings: {
          username: 'JohnDoe',
          email: 'johndoe@example.com',
          password: '',
        },
      };
    },
    methods: {
      saveSettings() {
        // Implement your save logic here
        alert('Settings saved successfully!');
      },
    },
  };
  </script>
  
  <style scoped>
  .settings1 {
    padding: 20px;
    color: #333;
  }
  
  .settings1 h1 {
    color: #4caf50; /* Green color */
  }
  
  .form-group1 {
    margin-bottom: 15px;
  }
  
  label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
  }
  
  input[type='text'],
  input[type='email'],
  input[type='password'] {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  
  .save-button {
    background-color: #4caf50; /* Green background */
    color: white; /* White text */
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 4px;
    transition: background-color 0.3s ease;
  }
  
  .save-button:hover {
    background-color: #45a049; /* Darker green on hover */
  }
  </style>
  