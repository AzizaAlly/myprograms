<!-- src/components/Notifications.vue -->
<template>
    <div class="notifications1">
      <h1>Notifications</h1>
      <p>Stay updated with the latest notifications.</p>
      <!-- Add notification-related content here -->
      <ul>
        <li v-for="notification in notification1" :key="notification.id">
          {{ notification.message }}
        </li>
      </ul>
    </div>
  </template>
  
  <script>
  export default {
    name: 'Notification1',
    data() {
      return {
        notification1: [
          { id: 1, message: 'Your investment in Luxury Apartment has been approved.' },
          { id: 2, message: 'New property listed in your preferred location.' },
          // Add more notifications as needed
        ],
      };
    },
  };
  </script>
  
  <style scoped>
  .notifications1 {
    padding: 20px;
    color: #333;
  }
  
  .notifications1 h1 {
    color: #4caf50; /* Green color */
  }
  
  .notifications1 ul {
    list-style-type: none;
    padding: 0;
  }
  
  .notifications1 li {
    background-color: #f9f9f9;
    margin: 10px 0;
    padding: 10px;
    border-radius: 4px;
  }
  </style>