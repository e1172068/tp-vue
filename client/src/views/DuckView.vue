<template>
  <div class="bg-light">
    <div class="container pt-5 pb-5">
      <div class="row">
        <h1 class="pt-5">{{ product.nom }}</h1>
        <div class="row pt-3">
          <img v-if="product.photo" class="col-6" :src="'/img/'+product.photo" :alt="product.name"/>
          <dl class="col-6">
            <dt>Nom</dt>
            <dd>{{ product.nom }}</dd>
            <dt>Description</dt>
            <dd>{{ product.description }}</dd>
            <dt>Prix</dt>
            <dd>{{ product.prix }}</dd>
            <dt>Photo</dt>
            <dd>{{ product.photo }}</dd>
            <dt>Categorie</dt>
            <dd>{{ product.categorie }}</dd>
          </dl>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import ProductDataService from '@/services/ProductDataService'

export default {
  props: ['inventory'],
  data () {
    return {
      product: {},
      id: parseInt(this.$route.params.id)
    }
  },
  mounted () {
    ProductDataService.get(this.id)
      .then(response => {
        this.product = response.data
      })
  }
}
</script>
