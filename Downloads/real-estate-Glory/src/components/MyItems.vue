<template>
    <div class="investment-page">
      <!-- Sidebar and Content -->
      <div class="investment-body">
        
  
        <main class="content">
          <div class="top-right-section">
            <div class="add-investment-section" @click="showAddPropertyModal = true">
              <i class="fas fa-plus"></i> <!-- Font Awesome Plus Icon -->
              <span>Add Item</span>
            </div>
          </div>
          <div class="property-list">
            <h2>My Rent  Properties</h2>
            <div class="grid">
              <div class="property-item" v-for="property in properties" :key="property.id">
                <img :src="property.image[0]" alt="Property Image" class="property-image" />
                <h3>{{ property.name }}</h3>
                <p><strong>Location:</strong> {{ property.location }}</p>
                <p><strong>Price:</strong> ${{ property.price }}</p>
                <p><strong>Features:</strong> {{ property.features.join(', ') }}</p>
                <p><strong>Owner Contact:</strong> {{ property.ownerContact }}</p>
                <div class="button-group">
                    <button @click="selectPropertyForUpdate(property)">Update</button>
                    <button @click="deleteProperty(property.id)">Delete</button>
                </div>
              </div>
            </div>
          </div>
  
          <!-- Add Property Modal -->
          <div v-if="showAddPropertyModal" class="modal">
            <div class="modal-content">
              <h2>Add Property</h2>
              <form @submit.prevent="submitProperty">
                <h3>Property Details</h3>
                <div class="form-group">
                  <label for="name">Property Name:</label>
                  <input type="text" v-model="newProperty.name" required />
                </div>
                <div class="form-group">
                  <label for="description">Description:</label>
                  <textarea v-model="newProperty.description" required></textarea>
                </div>
                <div class="form-group">
                  <label for="location">Location:</label>
                  <input type="text" v-model="newProperty.location" required />
                </div>
                <div class="form-group">
                  <label for="features">Features (comma-separated):</label>
                  <input type="text" v-model="newProperty.features" required />
                </div>
                <div class="form-group">
                  <label for="contact">Owner Contact:</label>
                  <input type="email" v-model="newProperty.ownerContact" required />
                </div>
                <div class="form-group">
                  <label for="images">Property Images:</label>
                  <input type="file" @change="onFileChange" multiple />
                </div>
                <button type="submit" class="submit-button">Add Property</button>
                <button type="button" class="close-button" @click="showAddPropertyModal = false">Close</button>
              </form>
            </div>
          </div>
  
          <!-- Update Property Modal -->
          <div v-if="showUpdatePropertyModal" class="modal">
            <div class="modal-content">
              <h2>Update Property</h2>
              <form @submit.prevent="updateProperty">
                <h3>Property Details</h3>
                <div class="form-group">
                  <label for="name">Property Name:</label>
                  <input type="text" v-model="selectedProperty.name" required />
                </div>
                <div class="form-group">
                  <label for="description">Description:</label>
                  <textarea v-model="selectedProperty.description" required></textarea>
                </div>
                <div class="form-group">
                  <label for="location">Location:</label>
                  <input type="text" v-model="selectedProperty.location" required />
                </div>
                <div class="form-group">
                  <label for="features">Features (comma-separated):</label>
                  <input
                    type="text"
                    :value="selectedProperty.features.join(', ')" 
                    @input="updateFeatures($event.target.value)"
                    required
                  />
                </div>
                <div class="form-group">
                  <label for="contact">Owner Contact:</label>
                  <input type="email" v-model="selectedProperty.ownerContact" required />
                </div>
                <div class="form-group">
                  <label for="images">Property Images:</label>
                  <input type="file" @change="onFileChange" multiple />
                </div>
                <button type="submit" class="submit-button">Update Property</button>
                <button type="button" class="close-button" @click="showUpdatePropertyModal = false">Close</button>
              </form>
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
  
  export default {
    name: 'MyProperties',
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
            id: 3,
            name: 'Cozy Cottage',
            price: 150000,
            location: 'Countryside',
            features: ['3 Bedrooms', '2 Bathrooms', 'Garden'],
            ownerContact: 'owner3@example.com',
            image: [pic3],
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
  .investment-page {
    display: flex;
    flex-direction: column;
    height: 100vh; /* Full height of the viewport */
  }
  
  .investment-body {
    display: flex;
    flex-grow: 1;
  }
  
 
  .content {
    flex-grow: 1;
    padding: 20px;
    overflow-y: auto;
    position: relative; /* Needed for positioning child elements */
  }
  
  .top-right-section {
    display: flex;
    justify-content: flex-end; /* Aligns content to the right */
    margin-bottom: 20px; /* Space below the section */
  }
  
  .add-investment-section {
    display: flex;
    align-items: center; /* Aligns icon and text vertically */
    cursor: pointer; /* Changes cursor to pointer */
    color: #009688;
  }
  
  .property-list {
    margin-top: 20px;
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
  
  .modal {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.7);
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
  }
  
  .modal-content {
    background: white;
    border-radius: 8px;
    padding: 30px; /* Increased padding for more space */
    width: 600px; /* Increased modal width */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  }
  
  h2 {
    color: #009688; /* Green Color */
    margin-bottom: 20px; /* Space below title */
  }
  
  h3 {
    color: #333; /* Dark Color for Subtitles */
    margin-bottom: 10px; /* Space below subtitles */
  }
  
  .form-group {
    margin-bottom: 15px;
  }
  
  label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
  }
  
  input[type="text"],
  input[type="email"],
  textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  
  textarea {
    resize: none;
  }
  
  .submit-button {
    background-color: #009688; /* Green Color */
    color: white;
    border: none;
    padding: 10px 15px;
    cursor: pointer;
    border-radius: 4px;
    transition: background-color 0.3s ease;
  }
  
  .submit-button:hover {
    background-color: #009688; /* Darker Green */
  }
  
  .close-button {
    background-color: #f44336; /* Red Color */
    color: white;
    border: none;
    padding: 10px 15px;
    cursor: pointer;
    border-radius: 4px;
    margin-left: 10px;
    transition: background-color 0.3s ease;
  }
  
  .close-button:hover {
    background-color: #d32f2f; /* Darker Red */
  }

  .button-group {
  display: flex;
  justify-content: space-between; /* Space between buttons */
  margin-top: 10px; /* Space above buttons */
}

.button-group button {
  background-color: #009688; /* Blue background */
  color: white; /* White text */
  border: none;
  padding: 10px 15px;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.button-group button:hover {
  background-color: #009688; /* Darker blue on hover */
}

.button-group {
  display: flex;
  justify-content: space-between; /* Space between buttons */
  margin-top: 10px; /* Space above buttons */
}
  </style>
  