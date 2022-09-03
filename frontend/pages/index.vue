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
            <Botao />
        </div>
        <div>
            <Botao />
        </div>
        <div>
            <Botao />
        </div>
        <div>
            <Botao />
        </div>
    </div>
    </v-container>
</template>

<script>
import Botao from '../components/Botao.vue'

export default {
    name: 'Inicio',
    components: { Botao },
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