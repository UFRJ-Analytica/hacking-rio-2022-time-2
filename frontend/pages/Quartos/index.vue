<template>
    <div>
        <h2 class="primary--text">
            QUARTOS
        </h2>
        <p class="darkText--text">
            Aqui estão as informações de consumo energético e de controle dos quartos
        </p>
    </div>
</template>

<script>
export default {
    name: 'Quartos',
    head() {
        return {
            title: 'Quartos',
            meta: [ 
                {
                    hid: 'Informações de consumo energético e de controle dos quartos',
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