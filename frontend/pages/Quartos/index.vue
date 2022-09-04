<template>
    <div class="quartos-container">

        <h2 class="primary--text quarto-title">
            QUARTOS
        </h2>
        <p class="darkText--text quarto-title">
            Aqui estão as informações de consumo energético e de controle dos quartos
        </p>

        <div class="andar">
            <p class="nome-andar quarto-title">1º ANDAR</p>
            <span id="l3"><span style="color:#3468FC; font-weight: 600; font-size: 16px;">45 kWh</span> CONSUMO TOTAL</span>
            
            <label class="switch" id="s1">
                <input type="checkbox" checked>
                <span class="slider round"></span>
            </label>
            <span id="l2">LUZES</span>

            <label class="switch" id="s2">
                <input type="checkbox" checked>
                <span class="slider round"></span>
            </label>
            <span id="l1">AR CONDICIONADO</span>

            <div class="quartos">
                <Quarto numero_quarto="101" pessoas="1" lampadas="1" televisoes="OFF" ar_condicionado="ON" consumo="15"/>
                <Quarto numero_quarto="102" pessoas="1" lampadas="1" televisoes="OFF" ar_condicionado="ON" consumo="15"/>
                <Quarto numero_quarto="103" pessoas="1" lampadas="1" televisoes="OFF" ar_condicionado="ON" consumo="15"/>
            </div>
        </div>

        <div class="andar">
            <p class="nome-andar quarto-title">2º ANDAR</p>
            <span id="l3"><span style="color:#3468FC; font-weight: 600; font-size: 16px;">45 kWh</span> CONSUMO TOTAL</span>
            
            <label class="switch" id="s1">
                <input type="checkbox" checked>
                <span class="slider round"></span>
            </label>
            <span id="l2">LUZES</span>

            <label class="switch" id="s2">
                <input type="checkbox" checked>
                <span class="slider round"></span>
            </label>
            <span id="l1">AR CONDICIONADO</span>
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
import axios from 'axios'

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
    },
    // async mounted() {
    //     const response = await axios.post('https://ufrjanalytica.loca.lt/energyConsumptionDaily', 
    //         {
    //          "occ": 10,
    //         "lamps": 3,
    //         "tv": true,
    //         "ac": true
    //     }
    //     )
    //     console.log(response)
    // },
}
</script>

<style>

.quartos-container {
    position: relative;
    width: 100%;
}

.quarto-title {
    margin-left: 200px ;
}

.andar {
    box-sizing: border-box;
    background-color: #F4F4F4;
    box-shadow: 7px 5px 40px 0px #00000026;
    height: 100%;
    width: 100vw;
    margin-left: -3rem;

    display: flex;
    position: relative;
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


/* The switch - the box around the slider */
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #3468FC;
}

input:focus + .slider {
  box-shadow: 0 0 1px #3468FC;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

#s1 {
    position: absolute;
    left: 245px;
    bottom: 70px;
    z-index: 100;
    transform: scale(0.8);
}
#s2 {
    position: absolute;
    left: 245px;
    bottom: 30px;
    z-index: 100;
    transform: scale(0.8);
}

#l1 {
    display: inline-block;
    position: absolute;
    bottom: 39px;
    left: 310px;
    font-size: 12px;
}

#l2 {
    display: inline-block;
    position: absolute;
    bottom: 79px;
    left: 310px;
    font-size: 12px;
}
#l3 {
    display: inline-block;
    position: absolute;
    top: 55px;
    left: 245px;
    font-size: 12px;
}
</style>