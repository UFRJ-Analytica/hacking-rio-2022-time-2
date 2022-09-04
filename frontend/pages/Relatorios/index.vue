<template>
    <v-container class="box">
        <h2 class="primary--text pag-title">
            RELATÓRIOS
        </h2>
        <p class="darkText--text pag-title">
            Aqui estão os relatórios de consumo energético do Hotel
        </p>
    <div class="main">
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

</style>