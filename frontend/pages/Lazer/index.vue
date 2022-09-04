<template>
    <v-container class="box">
        <h2 class="primary--text pag-title">
            LAZER
        </h2>
        <p class="darkText--text pag-title">
            Aqui estão Informações de consumo energético e de controle das áreas de lazer
        </p>

    <div class="main-lazer">
        <div class="rec-container">

            <div class="rec">
                <Rectangle 
                    nome="AR DO SALÃO DE JOGOS" 
                    temperatura="20"
                    consumo="43"
                    button='true'
                />
            </div>

            <div class="rec">
                <Rectangle 
                nome="LUZES SALÃO DE JOGOS" 
                consumo="43"
                button='true'
                />
            </div>

            <div class="rec">
                <Rectangle 
                    nome="AR DA ACADEMIA" 
                    temperatura="20"
                    consumo="43"
                    button='true'
                />
            </div>

            <div class="rec">
                <Rectangle 
                    nome="LUZES DA ACADEMIA" 
                    consumo="43"
                    button='true'
                />

            </div>
        </div>


    </div>
    </v-container>
</template>

<script>
import Rectangle from '../../components/Rectangle.vue'

export default {
    name: 'Lazer',
    components: { Rectangle },
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
    .rec-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .rec {
    margin: 1rem;
    }


</style>