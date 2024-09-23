<!-- src/components/Investments.vue -->
<template>
    <div class="investments">
      <h1>Investments</h1>
      <p>Manage and view all your investments here.</p>
      <!-- Add more investment-related content here -->
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
    name: 'Investments',
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
      selectPropertyForUpdate(property) {
        this.selectedProperty = { ...property }; // Create a copy for editing
        this.showUpdatePropertyModal = true; // Show the update modal
      },
      deleteProperty(id) {
        this.properties = this.properties.filter(property => property.id !== id);
      },
      updateFeatures(value) {
        this.selectedProperty.features = value.split(',').map(feature => feature.trim());
      },
      onFileChange(event) {
        this.newProperty.images = Array.from(event.target.files).map(file => URL.createObjectURL(file));
      },
      submitProperty() {
        const property = {
          id: Date.now(),
          name: this.newProperty.name,
          description: this.newProperty.description,
          location: this.newProperty.location,
          features: this.newProperty.features.split(',').map(feature => feature.trim()),
          ownerContact: this.newProperty.ownerContact,
          image: this.newProperty.images,
        };
        this.properties.push(property); // Add new property to the list
        this.showAddPropertyModal = false; // Hide the form after submission
        this.newProperty = { name: '', description: '', location: '', features: '', ownerContact: '', images: [] }; // Reset form
      },
      updateProperty() {
        const index = this.properties.findIndex(property => property.id === this.selectedProperty.id);
        if (index !== -1) {
          this.properties.splice(index, 1, this.selectedProperty); // Update the property
        }
        this.showUpdatePropertyModal = false; // Hide the update form after submission
        this.selectedProperty = {}; // Reset selected property
      },
    },
  };
  

  </script>
  
  <style scoped>
  .investments {
    padding: 20px;
    color: #333;
  }
  
  .investments h1 {
    color: #4caf50; /* Green color */
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
  