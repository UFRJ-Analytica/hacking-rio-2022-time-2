<template>
    <v-container class="card-container">
        <v-card
            class="card-about"
        >
        
        <p class="about-title">
            O QUE É O HURB DASHBOARD
        </p>
        
        <p class="about-text darkText--text"> 
            texto falando tudo sobre o projeto
        </p>

        
        </v-card>
    </v-container>
</template>

<script>

// <a href="https://www.freepik.com/free-vector/rio-de-janeiro-concept-illustration_11786052.htm#query=rio%20de%20janeiro&position=10&from_view=keyword">Image by storyset</a> on Freepik

export default {
    name: 'Botao',
    props: ['link', 'icon', 'name']
}
</script>

<style>
    .card-about {
        display:block;
        margin: 10px 10px 0 0; 
        padding: 0px; 
        width: 501px; 
        height: 440px; 
        border-radius: 20px!important;

        display: flex;
        flex-direction: column; 
        justify-content: flex-start;
        align-items: flex-start;
        box-shadow: 7px 5px 40px rgba(0, 0, 0, 0.15) !important;
    }

    .about-title {
        font-size: 1.1rem;
        font-weight: 700;
        letter-spacing: 1px;
        color: #3468FC;
        margin: 2rem;
    }

    .about-text {
        margin: 2rem;
    }
</style>