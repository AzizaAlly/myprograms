<template>
    <div class="rent-page">
  
      <!-- Sidebar and Content -->
      <div class="rent-body">
        <aside class="rentsidebar">
          <!-- <ul>
            <li>Dashboard</li>
            <li>My Items</li>
            <li>Notifications</li>
            <li>Settings</li>
          </ul> -->
  
          <!-- Logout button at the bottom -->
          <div class="rentsidebar-logout" @click="handleLogout">
            <i class="fas fa-sign-out-alt"></i> <!-- Font Awesome Logout Icon -->
            Logout
          </div>
        </aside>
  
        <main class="content1">
          <div class="top-right-section1">
            <div class="add-item-section1" @click="addItem">
              <i class="fas fa-plus"></i> <!-- Font Awesome Plus Icon -->
              <span>Add Item</span>
            </div>
          </div>
          <h1>Get the place you desire</h1>
          <div class="content-area1">
            <!-- Your main content goes here -->
            <div class="grid">
              <div class="property-item" v-for="property in properties" :key="property.id">
                <img :src="property.image[0]" alt="Property Image" class="property-image" />
                <h3>{{ property.name }}</h3>
                <p><strong>Location:</strong> {{ property.location }}</p>
                <p><strong>Price:</strong> ${{ property.price }}</p>
                <p><strong>Features:</strong> {{ property.features.join(', ') }}</p>
                <p><strong>Owner Contact:</strong> {{ property.ownerContact }}</p>
                <!-- <div class="button-group">
                    <button @click="selectPropertyForUpdate(property)">Update</button>
                    <button @click="deleteProperty(property.id)">Delete</button>
                </div> -->
              </div>
            </div>
          </div>
        </main>
      </div>
    </div>
  </template>
  
  <script>
   import pic1 from '../assets/pic1.png';
  import pic2 from '../assets/pic2.png';
  import pic3 from '../assets/pic3.png';
  import realIcon from '../assets/realicon.png'; 
  import pic4 from '../assets/pic4.png'; 
  import pic5 from '../assets/pic5.png'; 
  import pic9 from '../assets/pic9.png'; 
  
  export default {
    name: 'RentPage',
    data() {
      return {
        properties: [
          {
            id: 1,
            name: 'Luxury Apartment',
            price: 250000,
            location: 'City Center',
            features: ['2 Bedrooms', '1 Bathroom', 'Swimming Pool'],
            ownerContact: 'owner1@example.com',
            image: [pic1],
          },
          {
            id: 2,
            name: 'Beachfront Property',
            price: 500000,
            location: 'Malibu, CA',
            features: ['4 Bedrooms', '3 Bathrooms', 'Ocean View'],
            ownerContact: 'owner2@example.com',
            image: [pic2],
          },
          {
            id: 4,
            name: 'Cozy Cottage',
            price: 150000,
            location: 'Countryside',
            features: ['3 Bedrooms', '2 Bathrooms', 'Garden'],
            ownerContact: 'owner3@example.com',
            image: [pic4],
          },
          {
            id: realIcon,
            name: 'Cozy Cottage',
            price: 150000,
            location: 'Countryside',
            features: ['3 Bedrooms', '2 Bathrooms', 'Garden'],
            ownerContact: 'owner3@example.com',
            image: [realIcon],
          },
          {
            id: 3,
            name: 'Cozy Cottage',
            price: 150000,
            location: 'Countryside',
            features: ['3 Bedrooms', '2 Bathrooms', 'Garden'],
            ownerContact: 'owner3@example.com',
            image: [pic3],
          },
          {
            id: 5,
            name: 'Cozy Cottage',
            price: 150000,
            location: 'Countryside',
            features: ['3 Bedrooms', '2 Bathrooms', 'Garden'],
            ownerContact: 'owner3@example.com',
            image: [pic5],
          },
          {
            id: 9,
            name: 'Cozy Cottage',
            price: 150000,
            location: 'Countryside',
            features: ['3 Bedrooms', '2 Bathrooms', 'Garden'],
            ownerContact: 'owner3@example.com',
            image: [pic9],
          },
        ],
        showAddPropertyModal: false,
        showUpdatePropertyModal: false,
        selectedProperty: {},
        newProperty: {
          name: '',
          description: '',
          location: '',
          features: '',
          ownerContact: '',
          images: [],
        },
      };
    },
    methods: {
      handleLogout() {
        alert('You have been logged out!');
        this.$router.push('/login'); // Redirect to login page after logout
      },
      addItem() {
        alert('Add Item clicked!');
        // Logic to add an item can go here
      }
    }
  }
  </script>
  
  <style scoped>
  .rent-page {
    display: flex;
    flex-direction: column;
    height: 100vh; /* Full height of the viewport */
  }
  
  .rent-body {
    display: flex;
    flex-grow: 1;
  }
  
  .rentsidebar {
    width: 200px;
    background-color: #e9e9e9;
    padding: 20px;
    border-right: 1px solid #ccc;
    display: flex;
    flex-direction: column;
    justify-content: space-between; /* Pushes the logout button to the bottom */
    height: 100%; /* Full height of the page */
  }
  
  .rentsidebar ul {
    list-style-type: none;
    padding: 0;
  }
  
  .rentsidebar li {
    margin: 10px 0;
  }
  
  .rentsidebar-logout {
    margin-top: auto;
    cursor: pointer;    
  }
  
  .content1 {
    flex-grow: 1;
    padding: 20px;
    overflow-y: auto;
    position: relative; /* Needed for positioning child elements */
  }
  
  .top-right-section1{
    display: flex;
    justify-content: flex-end; /* Aligns content to the right */
    margin-bottom: 20px; /* Space below the section */
  }
  
  .add-item-section1 {
    display: flex;
    align-items: center; /* Aligns icon and text vertically */
    cursor: pointer; /* Changes cursor to pointer */
  }
  
  .add-item-section1 i {
    margin-right: 8px; /* Space between icon and text */
    color: #009688; /* Change color to match your theme */
  }

  .grid {
    display: grid;
    grid-template-columns: repeat(5, 1fr); /* 5 columns */
    gap: 20px; /* Space between items */
  }
  
  .property-item {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center; /* Center text */
  }
  
  .property-image {
    width: 100%; /* Full width */
    height: auto; /* Maintain aspect ratio */
    margin-bottom: 10px; /* Space below image */
  }
  
  .property-item h3 {
    margin: 0 0 5px;
  }
  
  .property-item p {
    margin: 5px 0;
  }

  </style>

