<template>
    <div class="add-property">
      <h2>Add Property</h2>
      <form @submit.prevent="submitProperty">
        <div>
          <label for="name">Property Name:</label>
          <input type="text" id="name" v-model="newProperty.name" required />
        </div>
        <div>
          <label for="description">Description:</label>
          <textarea id="description" v-model="newProperty.description" required></textarea>
        </div>
        <div>
          <label for="location">Location:</label>
          <input type="text" id="location" v-model="newProperty.location" required />
        </div>
        <div>
          <label for="features">Features (comma-separated):</label>
          <input type="text" id="features" v-model="newProperty.features" required />
        </div>
        <div>
          <label for="contact">Owner Contact:</label>
          <input type="email" id="contact" v-model="newProperty.ownerContact" required />
        </div>
        <div>
          <label for="image">Property Image URL:</label>
          <input type="text" id="image" v-model="newProperty.image" required />
        </div>
        <button type="submit">Add Property</button>
      </form>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        newProperty: {
          name: '',
          description: '',
          location: '',
          features: '',
          ownerContact: '',
          image: '',
        },
      };
    },
    methods: {
      submitProperty() {
        const property = {
          id: Date.now(),
          name: this.newProperty.name,
          description: this.newProperty.description,
          location: this.newProperty.location,
          features: this.newProperty.features.split(',').map(feature => feature.trim()),
          ownerContact: this.newProperty.ownerContact,
          image: this.newProperty.image,
        };
        this.$emit('add-property', property); // Emit the property to the parent component
        this.newProperty = { name: '', description: '', location: '', features: '', ownerContact: '', image: '' }; // Reset form
      },
    },
  };
  </script>
  
  <style scoped>
  .add-property {
    padding: 20px;
  }
  
  .add-property h2 {
    margin-bottom: 20px;
  }
  
  .add-property div {
    margin-bottom: 15px;
  }
  
  .add-property label {
    display: block;
    margin-bottom: 5px;
  }
  
  .add-property input,
  .add-property textarea {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
  }
  
  .add-property button {
    padding: 10px 15px;
    background-color: #28a745;
    color: white;
    border: none;
    cursor: pointer;
  }
  
  .add-property button:hover {
    background-color: #218838;
  }
  </style>
  