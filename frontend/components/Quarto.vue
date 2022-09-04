<template>
    <v-container class="quarto-container">
        <v-card
            class="quarto"
        >
        
    <p class="numero-quarto">
        {{ numero_quarto }}
    </p>

        <div class="pessoas">
            <v-icon 
                class="quarto-icon"
                size="25"
            >
                mdi-account
            </v-icon>
            <p class="qt_pessoas"> {{ pessoas }} </p>
        </div>

        <div class="lampada">
            <v-icon 
                class="quarto-icon"
                size="25"
            >
                mdi-lightbulb-on
            </v-icon>
            <p class="qt_lampada"> {{ lampadas }} </p>
        </div>


        <div class="televisoes">
            <v-icon 
                class="quarto-icon"
                size="25"
            >
                mdi-television
            </v-icon>
            <p class="qt_televisoes"> {{ televisoes }} </p>

        </div>

        <div class="ar_condicionado">
            <v-icon 
                class="quarto-icon"
                size="25"
            >
                mdi-weather-windy
            </v-icon>
            <p class="qt_ar_condicionado"> {{ ar_condicionado }} </p>

        </div>

        
            <img 
                src="/mini_graph.png" 
                alt="Graph Example" 
                class="graph_example"
            />
        
            <div class="consumo black--text">
               <span class="consumo-value"> {{ consumo }} </span> 
               <p class="unidade">kWh</p>
            </div>
        
        </v-card>
    </v-container>
</template>

<script>
export default {
    name: 'Quarto',
    props: ['pessoas', 'lampadas', 'televisoes', 'ar_condicionado', 'numero_quarto', 'consumo']
}
</script>

<style>

    .quarto {
        
        margin: 1rem; 
        padding: 0px; 
        width: 200px; 
        height: 200px; 
        border-radius: 20px!important;

        display: flex;
        flex-direction: column; 
        justify-content: center;
        align-items: center;

        box-shadow: 7px 5px 40px rgba(0, 0, 0, 0.15) !important;
    }

    p.numero-quarto {
        font-size: 1.4rem;
        font-weight: 700;
        letter-spacing: 1px;
        color: #3468FC;

        margin-top: 20px;
        margin-right: 60%;
        margin-bottom: 5px;
        z-index: 1;

    }

    .pessoas,
    .lampada,
    .televisoes,
    .ar_condicionado {
        display: flex;
        flex-direction: row;

        width: 100%;
        height: 100%;
        margin-bottom: -5px;
    }

    .qt_pessoas,
    .qt_lampada,
    .qt_televisoes,
    .qt_ar_condicionado {
        color: #3468FC;
        z-index: 1;
    }


    .quarto-icon {
        margin-right: 10px;
        margin-left: 20px;
        margin-top: -15px;
        z-index: 1;
    }


    i.v-icon.v-icon.quarto-icon {
        color: #353535;
    }

    .v-card--link:before {
    background: none;
    }

    img.graph_example {
        position: absolute;
        z-index: 0;
        width: 136px;
        right: 5px;
        top: 10px;
    }

    .consumo {
        position: absolute;
        bottom: 10px;
        right: 30px;
    }

    .consumo-value {
        font-weight: 700;
        font-size: 2.2em;
        letter-spacing: 2px;
    }

    .unidade {
        margin-top: -15px;
    }
</style>