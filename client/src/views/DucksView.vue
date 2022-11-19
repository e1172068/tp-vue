<template>
  <div class="bg-light">
    <div className="pt-5 pb-5 container">
      <div className="d-flex justify-content-between align-items-center">
        <h1>Liste des canards</h1>
        <router-link to="/add-duck" class="btn btn-warning">Ajouter</router-link>
      </div>
      <div>
        <table disabled className="table table-warning table-striped table-hover">
          <thead>
              <tr className="table-dark">
                  <th scope="col">Nom</th>
                  <th scope="col">Description</th>
                  <th scope="col">Prix</th>
                  <th scope="col">Catégorie</th>
                  <th scope="col">Actions</th>
              </tr>
          </thead>
          <tbody v-for="(product) in inventory" :key="product.id">
            <tr class="h-100">
              <td>{{product.nom}}</td>
              <td>{{product.description}}</td>
              <td>{{parseFloat(product.prix).toFixed(2)}}$</td>
              <td>{{product.categorie}}</td>
              <td>
                <span class="pe-1"><router-link :to="'/duck/' + product.id" aria-label="modifier"><i class="fa-solid fa-circle-info"></i></router-link></span>
                <span class="pe-1"><router-link :to="'/edit-duck/' + product.id" aria-label="modifier"><i class="fa-regular fa-pen-to-square"></i></router-link></span>
                <span><a href="" aria-label="supprimer" @click.prevent="deleteProduct(product.id)"><i class="fa-solid fa-trash"></i></a></span>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>
<script>
import ProductDataService from '@/services/ProductDataService'

export default {
  props: ['inventory', 'removeInv'],
  methods: {
    deleteProduct (id) {
      ProductDataService.delete(id)
        .then(response => {
          this.removeInv(this.productIndex)
        })
    }
  },
  computed: {
    productIndex () {
      const index = this.inventory.findIndex((product) => {
        return product.id === this.id
      })
      return index
    }
  }
}
</script>
