<template>
  <aside class="sidebar">
    <ul>
      <li>
        <router-link to="/InvestDashboard" class="sidebar-link">
          <i class="fas fa-tachometer-alt"></i>
          <span>Dashboard</span>
        </router-link>
      </li>
      <li>
        <router-link to="/investments" class="sidebar-link">
          <i class="fas fa-landmark"></i>
          <span>Investments</span>
        </router-link>
      </li>
      <li>
        <router-link to="/MyProperties" class="sidebar-link">
          <i class="fas fa-cubes"></i>
          <span>My Properties</span>
        </router-link>
      </li>
      <li>
        <router-link to="/notification1" class="sidebar-link">
          <i class="fas fa-bell"></i>
          <span>Notifications</span>
        </router-link>
      </li>
      <li>
        <router-link to="/setting1" class="sidebar-link">
          <i class="fas fa-cog"></i>
          <span>Settings</span>
        </router-link>
      </li>
    </ul>

    <!-- Logout button at the bottom -->
    <div class="sidebar-logout" @click="handleLogout">
      <i class="fas fa-sign-out-alt"></i> <!-- Font Awesome Logout Icon -->
      Logout
    </div>
  </aside>
</template>

<script>
export default {
  methods: {
    handleLogout() {
      alert('You have been logged out!');
      this.$router.push('/login'); // Redirect to login page after logout
    },
  },
};
</script>

<style scoped>
.sidebar {
  position: fixed;
  left: 0;
  top: 0;
  width: 220px;
  background-color: #f0f8ff; /* Light blue background */
  padding: 20px;
  border-right: 1px solid #ccc;
  display: flex;
  flex-direction: column;
  justify-content: space-between; /* Pushes the logout button to the bottom */
  height: 100vh; /* Full height of the viewport */
  position: fixed; /* Fixed position to ensure it stays in view */
}

.sidebar ul {
  list-style-type: none;
  padding: 0;
  margin: 0; /* Reset margin */
}

.sidebar li {
  margin: 15px 0;
}

.sidebar-link {
  text-decoration: none;
  color: #333;
  display: flex;
  align-items: center;
  padding: 10px;
  border-radius: 4px;
  transition: background-color 0.3s ease, color 0.3s ease;
}

.sidebar-link i {
  margin-right: 10px;
  font-size: 1.2em;
}

.sidebar-link.active,
.sidebar-link:hover {
  background-color: #009688; /* Green background on active and hover */
  color: white;
}

.sidebar-logout {
  cursor: pointer;
  display: flex;
  align-items: center;
  color: #333;
  text-decoration: none;
  padding: 10px;
  border-radius: 4px;
  transition: background-color 0.3s ease, color 0.3s ease;
}

.sidebar-logout:hover {
  background-color: #f44336; /* Red background on hover */
  color: white;
}

.sidebar-logout i {
  margin-right: 10px;
  font-size: 1.2em;
}
</style>
