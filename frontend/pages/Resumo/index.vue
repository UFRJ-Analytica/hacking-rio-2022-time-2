<template>
    <v-container class="box">
        <h2 class="primary--text pag-title">
            RESUMO
        </h2>
        <p class="darkText--text pag-title">
            Aqui está o resumo do consumo energético do hotel
        </p>
    <div class="main">
    </div>
    </v-container>
</template>

<script>
export default {
    name: 'Resumo',
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











