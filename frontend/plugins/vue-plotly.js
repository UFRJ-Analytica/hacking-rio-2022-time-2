import Vue from 'vue';
import vPlotly from '@statnett/vue-plotly';

const VuePlotly = {
  install(Vue) {
    Vue.component('vue-plotly', vPlotly);
  },
};
Vue.use(VuePlotly);
export default VuePlotly;