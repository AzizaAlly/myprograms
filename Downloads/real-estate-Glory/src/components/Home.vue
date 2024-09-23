<template>
  <div>
    <!-- Hero Section -->
    <section class="hero">
      <div class="content">
        <h1>
          Perfect place for your
          <span class="highlight">secure Blockchain based real estate</span> solutions
        </h1>
      </div>
      <img :src="realIcon" alt="Real Estate Icon" class="icon" />
    </section>

    <!-- Featured Houses Section -->
    <section class="featured-houses">
      <h2>Featured Houses for Rent</h2>
      <div class="houses-container">
        <div class="house" v-for="house in featuredHouses" :key="house.id">
          <div class="image-container">
            <img :src="house.image" alt="House Image" class="house-image" />
            <span class="for-rent-label">For Rent</span>
          </div>
          <div class="house-details">
            <h4>{{ house.title }} &nbsp; &nbsp; Price: TZS {{ house.price }} /Month </h4>
            <p class="location">
              <i class="fas fa-map-marker-alt"></i>
              {{ house.location }}
            </p>
            <p class="house-info">
              <span><i class="fas fa-bed"></i> {{ house.rooms }} Rooms</span>
              <span><i class="fas fa-bath"></i> {{ house.bathrooms }} Bathrooms</span>
              <span><i class="fas fa-ruler-combined"></i> {{ house.area }} sqft</span>
            </p>
            <button class="view-details-button" @click="viewDetails(house.id)">View Details</button>
          </div>
        </div>
      </div>
    </section>

    <!-- Featured Categories Section -->
    <section class="featured-categories">
      <h2>Featured Categories</h2>
      <div class="categories-container">
        <div
          class="category-card"
          v-for="category in featuredCategories"
          :key="category.name"
          @click="navigateToCategory(category.name)"
          tabindex="0"
          @keyup.enter="navigateToCategory(category.name)"
          role="button"
          aria-label="Navigate to {{ category.name }} category"
        >
          <div class="category-icon">
            <i :class="category.icon" aria-hidden="true"></i>
          </div>
          <h3>{{ category.name }}</h3>
        </div>
      </div>
    </section>

    <!-- Footer Section -->
    <footer class="site-footer">
      <div class="footer-container">
        <div class="footer-section about">
          <h3>Get in touch to access our services</h3>
          <p>
            We are committed to providing the best real estate solutions tailored to your needs.
            Secure blockchain based transactions and exceptional customer service are our top priorities.
          </p>
        </div>
        <div class="footer-section links">
          <h3>Quick Links</h3>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Contacts</a></li>
            <li><a href="#">Services</a></li>
          </ul>
        </div>
        <div class="footer-section contact">
          <h3>Contact Us</h3>
          <p><i class="fas fa-phone"></i> +255 677 888 999</p>
          <p><i class="fas fa-envelope"></i> info@realestate.com</p>
          <p><i class="fas fa-map-marker-alt"></i> Dodoma, Tanzania</p>
        </div>
      </div>
      <div class="footer-bottom">
        &copy; 2024 Real Estate. All Rights Reserved.<br>
        System is designed and developed by eGA
      </div>
      <button class="button">
  <svg viewBox="0 0 384 512" class="svgIcon">
    <path
      d="M214.6 41.4c-12.5-12.5-32.8-12.5-45.3 0l-160 160c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L160 141.2V448c0 17.7 14.3 32 32 32s32-14.3 32-32V141.2L329.4 246.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3l-160-160z"
    ></path>
  </svg>
</button>
    </footer>
    </div>
</template>

<script>
import realIcon from '../assets/realicon.png'; 
import pic1 from '../assets/pic1.png'; 
import pic2 from '../assets/pic2.png'; 
import pic3 from '../assets/pic3.png'; 
import pic4 from '../assets/pic4.png'; 
import pic5 from '../assets/pic5.png'; 
import pic9 from '../assets/pic9.png'; 

export default {
  name: 'Home', // Removed duplicate 'name'

  data() {
    return {
      realIcon,
      featuredHouses: [
        {
          id: 1,
          title: "Luxurious Lodge",
          price: 300000,
          location: "Dodoma, Tanzania",
          rooms: 2,
          bathrooms: 1,
          area: 800,
          image: pic3
        },
        {
          id: 2,
          title: "Skyper Pool Apartment",
          price: 500000,
          location: "Dodoma, Tanzania",
          rooms: 3,
          bathrooms: 2,
          area: 1200,
          image: pic9
        },
        {
          id: 3,
          title: "House on Hilltop",
          price: 800000,
          location: "Dodoma, Tanzania",
          rooms: 4,
          bathrooms: 3,
          area: 2000,
          image: pic5
        },
        {
          id: 4,
          title: "Self Contained Room",
          price: 250000,
          location: "Dodoma, Tanzania",
          rooms: 1,
          bathrooms: 1,
          area: 600,
          image: pic2
        },
        {
          id: 5,
          title: "Spacious Townhouse",
          price: 700000,
          location: "Dodoma, Tanzania",
          rooms: 3,
          bathrooms: 2,
          area: 1500,
          image: pic3
        },
        {
          id: 6,
          title: "Luxury Villa",
          price: 600000,
          location: "Dodoma, Tanzania",
          rooms: 2,
          bathrooms: 2,
          area: 1400,
          image: pic1
        },
        {
          id: 7,
          title: "Elegant Duplex",
          price: 800000,
          location: "Dodoma, Tanzania",
          rooms: 2,
          bathrooms: 2,
          area: 1400,
          image: pic3
        },
        {
          id: 8,
          title: "To Be Opened Restaurant",
          price: 600000,
          location: "Dodoma, Tanzania",
          rooms: 2,
          bathrooms: 2,
          area: 1400,
          image: pic4
        }
      ],
      featuredCategories: [
        { name: 'House', icon: 'fas fa-home' },
        { name: 'Apartment', icon: 'fas fa-building' },
        { name: 'Office', icon: 'fas fa-briefcase' },
        { name: 'Buy', icon: 'fas fa-shopping-cart' },
        { name: 'Invest', icon: 'fas fa-chart-line' },
      ]
    };
  },

  methods: {
    scrollToTop() {
      window.scrollTo({
        top: 0,
        behavior: 'smooth', // Smooth scroll to top
      });
    },
    
    viewDetails(id) {
      console.log('View details for house ID:', id);
      // Implement navigation to details page here
      // Example:
      // this.$router.push(`/house/${id}`);
    },
    
    navigateToCategory(categoryName) {
      console.log('Navigate to category:', categoryName);
      // Implement navigation logic here
      // Example:
      // this.$router.push(`/category/${categoryName.toLowerCase()}`);
    }
  }
};
</script>


<style scoped>
/* Hero Section */
.hero {
  background-image: url('../assets/Back.png'); 
  background-size: cover;
  background-position: center;
  height: 100vh;
  width: 100vw; 
  max-width: 3072px; 
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
  position: relative;
  text-align: center;
  margin: 0; 
  padding: 0; 
}

.content {
  z-index: 1;
}

h1 {
  font-size: 20px;
  margin-bottom: 40rem;
  font-size: 80px;
  font-weight: 500;
}

.highlight {
  color: #009688;
}

p {
  font-size: 0.7rem;
  margin-bottom: 0.5rem;
  font-weight: 500;
}

.icon {
  position: absolute;
  top: 615px;
  right: 0px;
}

.hero::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

.featured-houses {
  padding: 1rem;
  text-align: center;
  background-color: #f9f9f9; /* Light background for contrast */
}

.featured-houses h2 {
  margin-bottom: 1rem;
}

.houses-container {
  display: grid;
  grid-template-columns: repeat(4, 1fr); /* Change to 4 columns */
  gap: 1rem;
  justify-items: center;
}

.house {
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  padding: 1rem;
  text-align: left;
}

.image-container {
  position: relative;
  display: flex; /* Use flexbox for centering */
  justify-content: center; /* Center align horizontally */
}

.house-image {
  width: 100%; 
  max-width: 380px; 
  border-radius: 8px;
}

.for-rent-label {
  position: absolute;
  top: 10px;
  left: 25px;
  background-color: #EBB92F; 
  color: #ffffff; /* Dark red text */
  padding: 0.5rem;
  border-radius: 15px;
}

.view-details-button {
  background-color: #009688;
  color: white;
  border: none;
  padding: 0.5rem 1rem;
  border-radius: 5px;
  cursor: pointer;
  margin-top: 0.5rem; 
  margin-left: 20rem;
  align-self: right;
}

.view-details-button:hover {
  background-color: #007a63;
}

.location i, .house-info span i {
  margin-right: 0.55rem; 
  color: #009688; 
}

.house-info {
  display: flex;
  justify-content: space-between; 
  margin-top: 0.5rem; 
}

/* Featured Categories Section */
.featured-categories {
  padding: 2rem;
  text-align: center;
  background-color: #f1f1f1; /* Slightly different light background */
}

.featured-categories h2 {
  margin-bottom: 1.5rem;
  font-size: 2rem;
  color: #333;
}

.categories-container {
  display: grid;
  grid-template-columns: repeat(5, 1fr); /* Five columns */
  gap: 1rem;
  justify-items: center;
}

.category-card {
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  padding: 1.5rem;
  text-align: center;
  width: 100%;
  max-width: 150px; /* Adjust as needed */
  transition: transform 0.3s, box-shadow 0.3s;
  cursor: pointer;
}

.category-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

.category-icon {
  font-size: 2.5rem;
  color: #009688;
  margin-bottom: 1rem;
}

.category-card h3 {
  font-size: 1rem;
  color: #333;
}

/* Footer Section */
.site-footer {
  background-color: #009688; 
  color: white;
  padding: 2rem 1rem;
}

.footer-container {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  max-width: 1200px;
  margin: 0 auto;
}

.footer-section {
  flex: 1;
  min-width: 200px;
  margin: 1rem;
}

.footer-section h3 {
  margin-bottom: 1rem;
  font-size: 1.2rem;
}

.footer-section p, .footer-section ul, .footer-section li {
  font-size: 0.9rem;
  line-height: 1.6;
}

.footer-section ul {
  list-style: none;
  padding: 0;
}

.footer-section ul li {
  margin-bottom: 0.5rem;
}

.footer-section ul li a {
  color: white;
  text-decoration: none;
}

.footer-section ul li a:hover {
  text-decoration: underline;
}

.footer-bottom {
  text-align: center;
  margin-top: 2rem;
  font-size: 0.8rem;
  border-top: 1px solid rgba(255, 255, 255, 0.2);
  padding-top: 1rem;
}

/* Responsive Design */
@media (max-width: 1200px) {
  .houses-container {
    grid-template-columns: repeat(3, 1fr); /* 3 columns on medium screens */
  }

  .categories-container {
    grid-template-columns: repeat(3, 1fr); /* 3 columns on medium screens */
  }

  .footer-container {
    flex-direction: row;
  }
}

@media (max-width: 768px) {
  .houses-container {
    grid-template-columns: repeat(2, 1fr); /* 2 columns on small screens */
  }

  .categories-container {
    grid-template-columns: repeat(2, 1fr); /* 2 columns on small screens */
  }

  .hero {
    height: 70vh;
  }

  .icon {
    width: 80px;
  }

  h1 {
    font-size: 2rem;
  }

  p {
    font-size: 1rem;
    padding-left: 0;
  }

  .house {
    flex-direction: column; /* Stack image and details vertically */
    align-items: center;
    text-align: center;
  }

  .house-details {
    padding-top: 1rem; /* Space between image and details */
  }

  .house-info {
    flex-direction: column; /* Stack info items vertically */
    align-items: center;
  }

  .house-info span {
    margin-bottom: 0.3rem;
  }

  .categories-container {
    grid-template-columns: repeat(1, 1fr); 
  }

  .category-card {
    max-width: 200px;
  }

  .footer-container {
    flex-direction: column;
    align-items: center;
  }

  .footer-section {
    margin: 1rem 0;
    text-align: center;
  }
}

@media (max-width: 480px) {
  .houses-container {
    grid-template-columns: 1fr; 
  }

  .categories-container {
    grid-template-columns: 1fr; 
  }

  .house-image {
    max-width: 100px; 
  }

  .category-card {
    max-width: 250px;
  }
}

.category-card:focus {
  outline: 2px solid #009688;
}

.category-card:focus-visible {
  outline: 2px solid #009688;
}

.button {
  position: fixed;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  background-color: rgb(20, 20, 20);
  border: none;
  font-weight: 600;
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0px 0px 0px 4px rgba(180, 160, 255, 0.253);
  cursor: pointer;
  transition-duration: 0.3s;
  overflow: hidden;
  position: relative;
}

.svgIcon {
  width: 12px;
  transition-duration: 0.3s;
}

.svgIcon path {
  fill: white;
}

.button:hover {
  width: 140px;
  border-radius: 50px;
  transition-duration: 0.3s;
  background-color: rgba(28, 231, 197, 0.164);
  align-items: center;
}

.button:hover .svgIcon {
  /* width: 20px; */
  transition-duration: 0.3s;
  transform: translateY(-200%);
}

.button::before {
  position: absolute;
  bottom: -20px;
  content: "Back to Top";
  color: white;
  /* transition-duration: .3s; */
  font-size: 0px;
}

.button:hover::before {
  font-size: 13px;
  opacity: 1;
  bottom: unset;
  /* transform: translateY(-30px); */
  transition-duration: 0.3s;
}

</style>
