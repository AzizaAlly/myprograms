<template>
    <div class="about-container">
      <div class="about-header">
        <h1>About us</h1>
      </div>
      <div class="about-content">
        <div class="about-images">
          <img src="/src/assets/pic1.png" alt="Image 1" class="about-image" />
          <img src="/src/assets/pic2.png" alt="Image 2" class="about-image" />
        </div>
        <div class="about-text">
          <h2>We provide fast, secure and transparent real estate management services based on blockchain technologies for secure transactions and proprty safety</h2>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
          <hr />
          <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: "AboutUs",
  };
  </script>
  
  <style scoped>
  .about-container {
    padding: 2rem;
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 80px;
  }
  
  .about-header h1 {
    font-size: 5rem;
    color: #009688; 
    font-size: 2rem;
  }
  
  .about-content {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    width: 100%;
    max-width: 1200px;
    gap: 2rem;
  }
  
  .about-images {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    flex-basis: 40%;
  }
  
  .about-image {
    width: 100%;
    border-radius: 8px;
  }
  
  .about-text {
    flex-basis: 60%;
    padding-top: 60px;
  }
  
  .about-text h2 {
    font-size: 1.75rem;
    font-weight: bold;
    margin-bottom: 1rem;
  }
  
  .about-text p {
    font-size: 1rem;
    margin-bottom: 1rem;
  }
  
  hr {
    border: 1px solid #009688; 
    margin: 1rem 0;
  }
  
  @media (max-width: 768px) {
    .about-content {
      flex-direction: column;
      align-items: center;
    }
  
    .about-images {
      flex-basis: 100%;
    }
  
    .about-text {
      flex-basis: 100%;
      text-align: center;
    }
  }
  </style>
  