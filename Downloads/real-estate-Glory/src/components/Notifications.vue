<!-- src/components/Notifications.vue -->
<template>
    <div class="notifications">
      <h1>Notifications</h1>
      <p>Stay updated with the latest notifications.</p>
      <!-- Add notification-related content here -->
      <ul>
        <li v-for="notification in notifications" :key="notification.id">
          {{ notification.message }}
        </li>
      </ul>
    </div>
  </template>
  
  <script>
  export default {
    name: 'Notifications',
    data() {
      return {
        notifications: [
          { id: 1, message: 'Your rent in Luxury Apartment has been approved.' },
          { id: 2, message: 'New item listed in your preferred location.' },
          // Add more notifications as needed
        ],
      };
    },
  };
  </script>
  
  <style scoped>
  .notifications {
    padding: 20px;
    color: #333;
  }
  
  .notifications h1 {
    color: #4caf50; /* Green color */
  }
  
  .notifications ul {
    list-style-type: none;
    padding: 0;
  }
  
  .notifications li {
    background-color: #f9f9f9;
    margin: 10px 0;
    padding: 10px;
    border-radius: 4px;
  }
  </style>
  