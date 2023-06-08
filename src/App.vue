<template>
  <div class="app">
  <div>
    <nav class="navbar">
      <div class="logo-container">
        <img src="./assets/logo.png" alt="Logo" class="logo">
      </div>
      <h1 class="logo-text">SDN 2 Mertani</h1>
    </nav>
  </div>
    <div v-if="foundData" class="student-info">
      <img :src="foundData.image" :alt="foundData.name" class="student-image">
      <h2 class="student-name">{{ foundData.name }}</h2>
      <h2 class="lulus">Selamat Anda dinyatakan lulus</h2>
      
    </div>
    <h1 class="app-title">Input NISN</h1>
    <div class="search-container">
      <input v-model="nisnInput" type="text" placeholder="Masukkan NISN" class="search-input">
      <button @click="searchData" class="search-button">Cari</button>
    </div>


    <div v-if="!foundData && searchPerformed" class="no-data">
      <p>Data tidak ditemukan.</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      nisnInput: "",
      foundData: null,
      searchPerformed: false,
      students: [
        {
          nisn: "0109424224",
          name: "ALMIRA EKA JULIA SALSABILLA",
          image: "../src/assets/Salsa.jpeg"
        },
        {
          nisn: "0114370501",
          name: "ALMIRA WIRA ANINDY",
          image: "../src/assets/Almira.jpeg"
        },
        {
          nisn: "0103342398",
          name: "ALYNDA GIZCHA PURNAMA",
          image: "../srs/assets/Ghisca.jpeg"
        },
        {
          nisn: "0104400335",
          name: "MARIYANI DEWI WULANDARI",
          image: "../src/assets/Mariani.jpeg"
        },
        {
          nisn: "0109432729",
          name: "NAYSHILLA NERISA AQILA LOZAFU",
          image: "../src/assets/Naisyla.jpeg"
        },
        {
          nisn: "0104371133",
          name: "REVALINO OKTAVIAN",
          image: "../src/assets/Okta.jpeg"
        },
        {
          nisn: "0112193784",
          name: "RISKA ALIFFA SEPTIYA WATI",
          image: "../src/assets/RIska.jpeg"
        },
        {
          nisn: "0112815972",
          name: "RYAN ADY YAMA RAHARJA",
          image: "../src/assets/Adi.jpeg"
        },
        {
          nisn: "0102430526",
          name: "ANDREAN GALANG SYAHPUTRA",
          image: "../src/assets/Galang.jpeg"
        },
        {
          nisn: "0116819985",
          name: "ANINDYA ZHAFIRAH",
          image: "../src/assets/Anindia.jpeg"
        },
        {
          nisn: "0112065738",
          name: "FAJAR ARROSYD",
          image: "../src/assets/Fajar.jpeg"
        },
        {
          nisn: "0987654321",
          name: "Jane Smith",
          image: "path/to/jane-smith.jpg"
        },
        // Add more student data here
      ]
    };
  },
  methods: {
    searchData() {
      this.searchPerformed = true;
      this.foundData = this.students.find(
        student => student.nisn === this.nisnInput
      );
    }
  }
};
</script>

<style scoped>
#app{
  margin: 0;
  padding: 0;
}
.app {
  display: flex;
  flex-direction: column;
  width: 100vw;
  text-align: center;
  height: 100vh;
  align-self: center;

}

.app-title {
  font-size: 24px;
  margin-bottom: 20px;
  text-align: center;
}

.search-container {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 20px;
}

.search-input {
  padding: 10px;
  width: 200px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
}

.search-button {
  margin-left: 10px;
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 4px;
  font-size: 16px;
  cursor: pointer;
}

.student-info {
  margin-top: 20px;
}

.student-name {
  font-size: 20px;
  margin-bottom: 10px;
}

.student-nisn {
  margin-bottom: 10px;
}

.student-image {
  max-width: 10%;
  height: auto;
  border-radius: 4px;
}

.no-data {
  margin-top: 20px;
  color: red;
}
.navbar {
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #007bff;
  padding: 10px;
}

.logo-container {
  display: flex;
  align-items: center;
}

.logo-text {
  font-size: 24px;
  font-weight: bold;
  margin-left: 10px;
}

.logo{
  width: 64px;
  height: 64px;
}
.lulus{
  font-size: 20px;
  margin-bottom: 10px;
  color:greenyellow
}
</style>