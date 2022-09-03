<template>
    <v-container class="card-container">
        <v-card
            class="card"
            elevation="2"
            :to=link
            router
            exact
            :ripple="false"
        >
        
        <v-icon 
            class="button-icon"
            size="100"
        >
            {{ icon }}
        </v-icon>
        
        <p class="button-name darkText--text"> {{ name }} </p>
        
        </v-card>
    </v-container>
</template>

<script>
export default {
    name: 'Botao',
    props: ['link', 'icon', 'name']
}
</script>

<style>
    .card {
        display:block;
        margin: 0px; 
        padding: 0px; 
        width: 226px; 
        height: 216px; 
        border-radius: 20px!important;

        display: flex;
        flex-direction: column; 
        justify-content: center;
        align-items: center;
    }

    p.button-name {
        
        font-size: 1.1rem;
        font-weight: 500;
        letter-spacing: 1px;
    }

    i.v-icon.v-icon.button-icon {
        color: #3468FC;
    }

    .v-card--link:before {
    background: none;
    }
</style>