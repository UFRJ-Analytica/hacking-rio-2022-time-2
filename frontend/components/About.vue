<template>
    <v-container class="card-container">
        <v-card
            class="card-about"
        >
        
        <p class="about-title">
            O QUE É O HURB DASHBOARD
        </p>
        
        <p class="about-text darkText--text"> 
            <strong class="about-callout">Turismo amigo do meio ambiente!</strong>
            
            <br/><br/>

            O <span class="hurb-dashboard">hurb Dashboard</span> é um Web app inteligente para monitoramento e controle do consumo energético em hotéis
            
            <br/><br/>

            Pode ser usado pelo hoteleiro <br/> /dono para manipular 
            <br/>
            luzes e equipamentos, 
            <br/>
            como ar condicionado, 
            <br/>
            em todas as partes 
            <br/>
            do hotel.

            <br/><br/>
            Reduzindo, assim, 
            <br/>
            emissões de carbono!
        </p>
    
        <img 
            src="/rio_mapa.jpg" 
            alt="Turismo Rio" 
            class="img-about"
            />
        
        <div class="credits darkText--text">
        <a 
            href="https://www.freepik.com/free-vector/rio-de-janeiro-concept-illustration_11786052.htm#query=rio%20de%20janeiro&position=10&from_view=keyword"
        >
            Image by storyset on Freepik
        </a> 


        </div>
        
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
    .card-about {
        display:block;
        margin: 10px 10px 0 0; 
        padding: 0px; 
        width: 501px; 
        height: 470px; 
        border-radius: 20px!important;

        display: flex;
        flex-direction: column; 
        justify-content: flex-start;
        align-items: flex-start;
        box-shadow: 7px 5px 40px rgba(0, 0, 0, 0.15) !important;
    }

    .hurb-dashboard {
        font-weight: 700;
        color: #3468FC;
    }

    .about-title {
        font-size: 1.2rem;
        font-weight: 700;
        letter-spacing: 1px;
        color: #3468FC;
        margin: 2rem;
        z-index: 10;
    }

    .about-callout {
        font-size: 1.1rem;
        padding-bottom: 10px;
    }

    .about-text {
        margin: 2rem;
        margin-top: -5px;
        z-index: 10;
    }

    .img-about {
        height: 60%;
        position: absolute;
        z-index: 0;
        bottom: 10px;
        right: 0px;
        border-radius: 20px;
    }

    .credits a{
        color: #455A64;
    }

    .credits {
        position: absolute;
        right: 10px;
        font-size: 0.7em;
        bottom: 10PX;
    }

</style>