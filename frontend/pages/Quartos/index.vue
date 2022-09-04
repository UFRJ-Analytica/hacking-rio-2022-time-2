<template>
    <div class="quartos-container">

        <h2 class="primary--text">
            QUARTOS
        </h2>
        <p class="darkText--text">
            Aqui estão as informações de consumo energético e de controle dos quartos
        </p>

        <div class="andar">
            <p class="nome-andar">1º ANDAR</p>
            <div class="quartos">
                <Quarto numero_quarto="101" pessoas="1" lampadas="1" televisoes="OFF" ar_condicionado="ON" consumo="15"/>
                <Quarto numero_quarto="102" pessoas="1" lampadas="1" televisoes="OFF" ar_condicionado="ON" consumo="15"/>
                <Quarto numero_quarto="103" pessoas="1" lampadas="1" televisoes="OFF" ar_condicionado="ON" consumo="15"/>
            </div>
        </div>

        <div class="andar">
            <p class="nome-andar">2º ANDAR</p>
            <div class="quartos">
                <Quarto numero_quarto="201" pessoas="1" lampadas="1" televisoes="OFF" ar_condicionado="ON" consumo="15"/>
                <Quarto numero_quarto="202" pessoas="1" lampadas="1" televisoes="OFF" ar_condicionado="ON" consumo="15"/>
                <Quarto numero_quarto="203" pessoas="1" lampadas="1" televisoes="OFF" ar_condicionado="ON" consumo="15"/>
            </div>
        </div>

    </div>
</template>

<script>
import Quarto from '../../components/Quarto.vue'

export default {
    name: 'Quartos',
    components: { Quarto },
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

.quartos-container {
    position: relative;
    width: 100%;
    margin: 0;
}

.andar {
    box-sizing: border-box;
    background-color: #F4F4F4;
    box-shadow: 7px 5px 40px 0px #00000026;
    height: 340px;
    width: 100vw;
    margin-left: -3rem;

    display: flex;
}

p.nome-andar {
    font-size: 1.2rem;
    font-weight: 700;
    letter-spacing: 1px;
    padding: 1.5rem 0 1.5rem 3rem;
    z-index: 10;
}

.quartos {
    margin-left: 5%;
    display: flex;
    align-items: center;
    justify-content: center;

    overflow: auto;
    padding-right: 20px;
}




</style>