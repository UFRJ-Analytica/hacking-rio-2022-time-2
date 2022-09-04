<template>
    <v-container class="box">
        <h2 class="primary--text pag-title">
            RESUMO
        </h2>
        <p class="darkText--text pag-title">
            Aqui está o resumo do consumo energético do hotel
        </p>
    
         <div class="rec-container">

            <div class="rec">
                <Rectangle 
                    nome="CONSUMO TOTAL" 
                    consumo="343"
                />
            </div>

            <div class="rec">
                <Rectangle 
                nome="CONSUMO LAZER" 
                consumo="201"
                />
            </div>

        </div>

    <div>
        <!-- <plotly-graph /> -->
    </div>
    </v-container>
</template>

<script>

import Rectangle from '../../components/Rectangle.vue'

export default {
    name: 'Resumo',
    components: { Rectangle},
    head() {
        return {
            title: 'Resumo',
            meta: [ 
                {
                    hid: 'Resumo do consumo energético do hotel',
                    name: 'Dashboard Hub acompanhar seu hotel',
                    content: 'Web app inteligente para monitoramento e controle do consumo energético em hotéis. Pode ser usado pelo hoteleiro/dono para manipular luzes e equipamentos, como ar condicionado, em todas as partes do hotel.'
                }
            ]
        }
    }
}
</script>











