<template>
  <div class="h-100 bg-dark">
    <header class="p-3 text-bg-dark">
      <nav class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
          <router-link to="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
            <h1 style="font-family: Kavoon" class="pe-3">Duckies</h1>
          </router-link>
          <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
            <li><router-link to="/ducks" class="nav-link px-2 text-white">Liste des canards</router-link></li>
            <li><router-link to="/add-duck" class="nav-link px-2 text-white">Ajouter un canard</router-link></li>
            <li><router-link to="/about" class="nav-link px-2 text-white">À propos</router-link></li>
          </ul>
        </div>
      </nav>
    </header>
    <router-view
      :inventory="inventory"
      :addToInv="addToInventory"
      :updateInv="updateInventory"
      :removeInv="removeFromInventory"
    />
    <footer>
      <div className="text-bg-dark d-flex justify-content-center align-items-center pt-3">
        <p>
          Tous droits réservés
        </p>
      </div>
    </footer>
  </div>
</template>
<style>
  td {
    white-space: no-wrap;
  }
</style>
<script>
import ProductDataService from '@/services/ProductDataService'
export default {
  data () {
    return {
      inventory: []
    }
  },
  methods: {
    addToInventory (data) {
      this.inventory.push(data)
    },
    updateInventory (index, data) {
      const product = this.inventory[index]
      Object.keys(product).forEach(function (key) {
        product[key] = data[key]
      })
    },
    removeFromInventory (index) {
      this.inventory.splice(index, 1)
    }
  },
  mounted () {
    ProductDataService.getAll()
      .then(response => {
        this.inventory = response.data
      })
  }
}
</script>
