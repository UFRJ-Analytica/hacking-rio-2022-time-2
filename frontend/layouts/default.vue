<template>
  <v-app class="font">
    <v-navigation-drawer
      v-model="drawer"
      :mini-variant="miniVariant"
      :clipped="clipped"
      fixed
      app
      id="sidebar"
      class="elevation-2"
    >

  <div class="site-logo">
      <img 
        src="/logo_hurb.svg" 
        alt="Hurb" 
        :class="{ 'hurb-logo': !miniVariant, 'hurb-logo mini': miniVariant }"
      />
      <img 
        src="/dashboard.svg" alt="Dashboard" class="dashboard" v-if="!miniVariant"
        />
  </div>

      <v-list>
        <v-list-item
          v-for="(item, i) in items"
          :key="i"
          :to="item.to"
          router
          exact
          :ripple="false"
        >

          <v-list-item-action>
            <v-icon class="darkText--text">
              {{ item.icon }}
            </v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title 
              v-text="item.title"
              class="darkText--text"
            />
          </v-list-item-content>
        </v-list-item>
      </v-list>

    <img 
      src="/logo_analytica.svg" 
      alt="UFRJ Analytica" 
      :class="{ 'team-logo': !miniVariant, 'team-logo mini': miniVariant }"
    />
    
    

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
        :ripple="false"
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
          title: 'INÍCIO',
          to: '/'
        },
        {
          icon: 'mdi-chart-bar',
          title: 'RESUMO',
          to: '/resumo'
        },
        {
          icon: 'mdi-umbrella-beach',
          title: 'LAZER',
          to: '/lazer'
        },
        {
          icon: 'mdi-office-building',
          title: 'QUARTOS',
          to: '/quartos'
        },
        {
          icon: 'mdi-file',
          title: 'RELATÓRIOS',
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
  opacity: 1!important;
}

.font {
  font-family: 'Poppins', sans-serif;
}

h1 {
  font-weight: 700;
  font-size: 3.8rem;
  margin-left: 0.38rem;
  letter-spacing: 2px;
}

h2 {
  font-weight: 700;
  font-size: 2.5rem;
  margin-bottom: -10px;
}

#header,
#main {
  box-shadow: none;
  background-color: #f4f4f4;
}

#sidebar {
  background-color: #fff!important;
}

/* remove a opacidade cinza nos links */
.theme--light.v-list-item--active:before, 
.theme--light.v-list-item--active:hover:before, 
.theme--light.v-list-item:focus:before {
    opacity: 0;
}

.v-list-item.v-list-item.v-list-item--link.theme--light::before {
  background: none;
}

.site-logo {
  margin-bottom: 55px;
}

.hurb-logo {
  height: 200px;
  margin-bottom: -100px;
  margin-left: 0px;
}

.hurb-logo.mini {
  height: 160px;
  margin-left: -20px;
}

.dashboard {
  height: 10px;
  position: absolute;
  left: 124px;
  top: 105px;
}

.team-logo {
  height: 40px;
  position: absolute;
  bottom: 35px;
  margin-left: 15%;
}

.team-logo.mini {
  height: 45px;
  position: absolute;
  bottom: 15px;
  margin-left: 18%;
}

</style>