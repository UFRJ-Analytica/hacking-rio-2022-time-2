<template>
    <v-container class="card-container">
        <v-card
            class="card"
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
        margin: 10px; 
        padding: 0px; 
        width: 200px; 
        height: 200px; 
        border-radius: 20px!important;

        display: flex;
        flex-direction: column; 
        justify-content: center;
        align-items: center;

        box-shadow: 7px 5px 40px rgba(0, 0, 0, 0.15) !important;
    }
    .card:hover {
        transform: scale(1.08);
        transition: all 0.2s;
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