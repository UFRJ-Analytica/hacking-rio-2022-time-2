<template>
    <v-container class="box">
        <h2 class="primary--text pag-title">
            RELATÓRIOS
        </h2>
        <p class="darkText--text pag-title">
            Aqui estão os relatórios de consumo energético do Hotel
        </p>
    <div>

        <v-container class="rel-container">
        <v-card
            class="rel-button"
        >

        <p class="rel-button-name black--text"> RELATÓRIO MENSAL </p>

        <div class="rel-action-button white--text">
            BAIXAR
        </div>
        
        </v-card>
    </v-container>        

    
        <v-container class="rel-container">
        <v-card
            class="rel-button"
        >

        <p class="rel-button-name black--text"> RELATÓRIO SEMANAL </p>

        <div class="rel-action-button white--text">
            BAIXAR
        </div>
        
        </v-card>
    </v-container>   

    <v-container class="rel-container">
        <v-card
            class="rel-button"
        >

        <p class="rel-button-name black--text"> RELATÓRIO DIÁRIO </p>

        <div class="rel-action-button white--text">
            BAIXAR
        </div>
        
        </v-card>
    </v-container>   






    </div>
    </v-container>
</template>

<script>

export default {
    name: 'Relatórios',
    head() {
        return {
            title: 'Relatórios',
            meta: [ 
                {
                    hid: 'Relatórios de consumo energético do Hotel',
                    name: 'Dashboard Hub acompanhar seu hotel',
                    content: 'Web app inteligente para monitoramento e controle do consumo energético em hotéis. Pode ser usado pelo hoteleiro/dono para manipular luzes e equipamentos, como ar condicionado, em todas as partes do hotel.'
                }
            ]
        }
    }
}
</script>

<style>

.rel-container {
    display: flex;
    justify-content: center;
}

.rel-button {
        display:block;
        margin: 10px; 
        padding: 0px; 
        width: 90%; 
        height: 110px; 
        border-radius: 20px!important;

        display: flex;
        flex-direction: column; 
        justify-content: center;
        align-items: center;

        box-shadow: 7px 5px 40px rgba(0, 0, 0, 0.15) !important;
    }

    p.rel-button-name {
        font-size: 1.1rem;
        font-weight: 700;
        letter-spacing: 1px;
        
        position: absolute;
        left: 50px;
    }

    .rel-action-button {
        z-index: 1;
        background-color: #3468FC;

        border-radius: 10px;
        border-bottom-right-radius: 10px!important;
        border-bottom-left-radius: 10px!important;
    
        padding: 10px;
        width: 240px;
        text-align: center;
        font-weight: 600;
        letter-spacing: 1px;
        cursor: pointer;

        margin-left: 70%;
    }


</style>