<template>
    <div>
        <h2 class="primary--text">
            LAZER
        </h2>
        <p class="darkText--text">
            Aqui estão as informações de consumo energético e de controle das áreas de lazer
        </p>
    </div>
</template>

<script>
export default {
    name: 'Lazer',
    head() {
        return {
            title: 'Áreas de Lazer',
            meta: [ 
                {
                    hid: 'Informações de consumo energético e de controle das áreas de lazer',
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