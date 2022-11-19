import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import DucksView from '../views/DucksView.vue'
import AboutView from '../views/AboutView.vue'
import AddDuckView from '../views/AddDuckView.vue'
import EditDuckView from '../views/EditDuckView.vue'
import DuckView from '../views/DuckView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/ducks',
    name: 'ducks',
    component: DucksView
  },
  {
    path: '/about',
    name: 'about',
    component: AboutView
  },
  {
    path: '/add-duck',
    name: 'add-duck',
    component: AddDuckView
  },
  {
    path: '/edit-duck/:id',
    name: 'edit-duck',
    component: EditDuckView
  },
  {
    path: '/duck/:id',
    name: 'duck/:id',
    component: DuckView
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
