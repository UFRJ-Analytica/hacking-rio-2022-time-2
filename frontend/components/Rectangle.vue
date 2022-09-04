<template>
    <v-container class="rectangle-container">
        <v-card
            class="rectangle"
        >
        <p class="rectangle-name primary--text"> 
            {{ nome }} 
        </p>

        <p class="rectangle-temperatura" v-if="temperatura">
            {{ temperatura }}ºC
        </p>

        <div class="rectangle-consumo black--text">
               <span class="rectangle-consumo-value"> {{ consumo }} </span> 
               <p class="rectangle-unidade">kWh</p>
            </div>

        <img 
            src="/full_graph.png" 
            alt="Graph Example" 
            class="full_graph_example"
        />

        <div class="rec-button" v-if="button">
            <label class="switch" id="s2">
                    <input type="checkbox" checked>
                    <span class="slider round"></span>
                </label>
                <span id="l1"></span>
        </div>
        
        </v-card>
    </v-container>
</template>

<script>
export default {
    name: 'Rectangle',
    props: ['nome', 'temperatura', 'consumo', 'button']
}
</script>

<style>

    .rectangle {
        
        width: 501px; 
        height: 248px; 
        border-radius: 20px!important;

        display: flex;
        flex-direction: column; 
        justify-content: center;
        align-items: center;

        box-shadow: 7px 5px 40px rgba(0, 0, 0, 0.15) !important;
    }

    p.rectangle-name {
        font-size: 1.2rem;
        font-weight: 600;
        letter-spacing: 1px;
        z-index: 1;

        position: absolute;
        left: 30px;
        top: 30px;
    }

    .rectangle-temperatura,
    .rectangle-consumo {
        z-index: 1;
    }

    p.rectangle-temperatura {
        position: absolute;
        left: 55px;
        bottom: 30px;
        font-size: 3.3rem;
    }

    .rectangle-consumo-value {
        font-weight: 600;
        position: absolute;
        right: 20px;
        bottom: 30px;
        font-size: 2rem;

        display: flex;
    }

    .rectangle-unidade {
        position: absolute;
        right: 20px;
        bottom: 5px;
    }

    .full_graph_example {
        z-index: 0;
        width: 350px;
        position: absolute;
        right: 35px;
        bottom: 20px;
    }

    .rec-button {
        position: absolute;
        left: 180px;
        bottom: 160px;
    }

</style>