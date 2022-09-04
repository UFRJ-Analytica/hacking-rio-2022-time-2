<template>
    <v-container class="box">
        <h2 class="primary--text pag-title">
            INÍCIO
        </h2>
        <p class="darkText--text pag-title">
            Escolha por onde deseja começar
        </p>
    <div class="main">

        <div class="about-container">
            <About />
        </div>

    <div class="botoes-container">
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

    </div>
    </v-container>
</template>

<script>
import Botao from '../components/Botao.vue'
import About from '../components/About.vue'

export default {
    name: 'Inicio',
    components: { Botao, About },
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
.box {
    margin-left: 120px;
}
.main {
    width: 100%;
    display: flex;
    justify-content: center;
    padding-left: 0 !important;
    margin: 0;
}
.pag-title {
    margin-left: 40px;
}
.about-container {
    padding: 0;
    flex-wrap: wrap;
    margin-left: 1rem;
}

.botoes-container {
    padding: 0;
    margin: 0!important;
    display: flex;
    flex-wrap: wrap;
    justify-content: left;
}
</style>