<template>
    <v-container>
        <h2 class="primary--text">
            INÍCIO
        </h2>
        <p class="darkText--text">
            Escolha por onde deseja começar
        </p>
    <div class="main">
        <div>
            <Botao 
                icon="mdi-chart-bar" 
                name="RESUMO" 
                link="resumo"
            />
        </div>
        <div>
            <Botao 
                icon='mdi-umbrella-beach'
                name='LAZER'
                link='lazer'
            />
        </div>
        <div>
            <Botao 
                icon='mdi-office-building'
                name='QUARTOS'
                link='quartos'
            />
        </div>
        <div>
            <Botao 
                icon='mdi-file'
                name='RELATÓRIOS'
                link='relatorios'
            />
        </div>
    </div>
    </v-container>
</template>

<script>
import Botao from '../components/Botao.vue'

export default {
    name: 'Inicio',
    components: { Botao },
    head() {
        return {
            title: 'Página Inicial',
            meta: [ 
                {
                    hid: 'Página inicial do dashboard Hurb para seu hotel',
                    name: 'Dashboard Hub acompanhar seu hotel',
                    content: 'Web app inteligente para monitoramento e controle do consumo energético em hotéis. Pode ser usado pelo hoteleiro/dono para manipular luzes e equipamentos, como ar condicionado, em todas as partes do hotel.'
                }
            ]
        }
    }
}
</script>

<style>
.main {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: center;
}
</style>