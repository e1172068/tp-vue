<template>
  <div class="bg-light">
    <div class="container pt-5 pb-5">
      <div>
        <div class="mb-3">
          <label class="form-label">Nom du produit</label>
          <input class="form-control" type="text" v-model="product.nom" />
        </div>
        <div class="mb-3">
          <label class="form-label">Description</label>
          <input class="form-control" type="text" v-model="product.description" />
        </div>
        <div class="mb-3">
          <label class="form-label">Prix</label>
          <input class="form-control" type="text" v-model="product.prix" />
        </div>
        <div class="mb-3">
          <label class="form-label">Photo</label>
          <input class="form-control" type="text" v-model="product.photo" />
        </div>
        <div class="mb-3">
          <label class="form-label">Catégorie</label>
          <input class="form-control" type="text" v-model="product.categorie" />
        </div>
        <input class="btn btn-success" type="submit" value="Soumettre" @click.prevent="saveProduct"/>
      </div>
    </div>
  </div>
</template>
<script>
import ProductDataService from '@/services/ProductDataService'
export default {
  props: ['addToInv'],
  data () {
    return {
      product: {
        nom: '',
        description: '',
        prix: '',
        photo: '',
        categorie: ''
      }
    }
  },
  methods: {
    saveProduct () {
      ProductDataService.create(this.product)
        .then(response => {
          this.product.id = response.data.id
          this.addToInv(this.product)
          this.$router.push('ducks')
        })
    }
  }
}
</script>
