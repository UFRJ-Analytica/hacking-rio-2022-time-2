<template>
  <v-app class="font">
    <v-navigation-drawer
      v-model="drawer"
      :mini-variant="miniVariant"
      :clipped="clipped"
      fixed
      app
      id="sidebar"
    >

    <h1 id="hurb-title">Hurb</h1>

      <v-list>
        <v-list-item
          v-for="(item, i) in items"
          :key="i"
          :to="item.to"
          router
          exact
        >

          <v-list-item-action>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title v-text="item.title" />
          </v-list-item-content>
        </v-list-item>
      </v-list>

    </v-navigation-drawer>


    <v-app-bar
      :clipped-left="clipped"
      fixed
      app
      id="header"
    >
      <v-btn
        icon
        @click.stop="miniVariant = !miniVariant"
      >
        <v-icon color="black">mdi-{{ `chevron-${miniVariant ? 'right' : 'left'}` }}</v-icon>
      </v-btn>

    </v-app-bar>


    <v-main id="main">
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>
      
  </v-app>
</template>

<script>
export default {
  name: 'DefaultLayout',
  data () {
    return {
      clipped: false,
      drawer: false,
      fixed: false,

      items: [
        {
          icon: 'mdi-home',
          title: 'Início',
          to: '/'
        },
        {
          icon: 'mdi-chart-bubble',
          title: 'Resumo',
          to: '/resumo'
        },
        {
          icon: 'mdi-chart-bar',
          title: 'Lazer',
          to: '/lazer'
        },
        {
          icon: 'mdi-chart-bubble',
          title: 'Quartos',
          to: '/quartos'
        },
        {
          icon: 'mdi-chart-bubble',
          title: 'Relatórios',
          to: '/relatorios'
        }

      ],


      miniVariant: false,
      right: true,
      rightDrawer: false,
      title: 'Vuetify.js'


    }
  }
}
</script>

<style>

@import 'https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,700;0,800;1,400;1,600&display=swap';

* {
  color: #000;
}

.font {
  font-family: 'Poppins', sans-serif;
}

h1 {
  font-weight: 700;
  font-size: 3.5rem;
  margin-left: 0.8rem;
  color: "#3468FC"!important;
}

h2 {
  font-weight: 700;
  font-size: 2rem;
}

#header,
#main {
  box-shadow: none;
  background-color: #f4f4f4;
}

#sidebar {
  background-color: #fff!important;
  box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);
}

/* remove a opacidade cinza nos links */
.theme--light.v-list-item--active:before, 
.theme--light.v-list-item--active:hover:before, 
.theme--light.v-list-item:focus:before {
    opacity: 0;
}



</style>