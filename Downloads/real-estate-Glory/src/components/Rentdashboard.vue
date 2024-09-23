<template>
    <div class="rent-page">
      <div class="rent-body">
        <main class="content">
          <div class="property1-list">
            <h2>My Rent Properties</h2>
            <div class="grid1">
              <div class="property-item1" v-for="property in properties" :key="property.id">
                <img :src="property.image[0]" alt="Property Image" class="property-image1" />
                <h3>{{ property.name }}</h3>
                <p><strong>Location:</strong> {{ property.location }}</p>
                <p><strong>Price:</strong> ${{ property.price }}</p>
                <p><strong>Features:</strong> {{ property.features.join(', ') }}</p>
                <p><strong>Owner Contact:</strong> {{ property.ownerContact }}</p>
                <button @click="viewPropertyDetails(property)" class="rent-button">View Details</button>
              </div>
            </div>
          </div>
        </main>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: 'Rentdashboard',
    props: {
      properties: {
        type: Array,
        required: true,
      },
    },
    methods: {
      viewPropertyDetails(property) {
        // Your existing logic to view property details
      },
    },
  };
  </script>
  
  <style scoped>
  /* Add your styles here, similar to those in MyProperties.vue */
  .property-image1 {
    width: 100%;
    height: auto;
  }
  .property-item1 {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center;
  }
  .grid1 {
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 20px;
  }
  </style>
  