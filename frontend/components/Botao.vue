<template>
    <v-container class="card-container">
        <v-card
            class="card"
            elevation="2"
        >
        <v-card-title>
            Título
        </v-card-title>
        <v-card-text>
            Texto
        </v-card-text>
        </v-card>
    </v-container>
</template>

<script>
export default {
    name: 'Botao',
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
    }
</style>