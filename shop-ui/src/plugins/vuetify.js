/**
 * plugins/vuetify.js
 *
 * Framework documentation: https://vuetifyjs.com`
 */

// Styles
import "@mdi/font/css/materialdesignicons.css";
import "vuetify/styles";

import colors from "vuetify/util/colors";
import { VDateInput } from "vuetify/labs/VDateInput";

// Composables
import { createVuetify } from "vuetify";

const myCustomLightTheme = {
    dark: false,
    colors: {
        background: colors.grey.lighten4, // "#f5f5f5", // whitesmoke
        primary: colors.indigo.darken4, // #1A237E
    },
};

// https://vuetifyjs.com/en/introduction/why-vuetify/#feature-guides
export default createVuetify({
    components: {
        VDateInput,
    },
    theme: {
        defaultTheme: "myCustomLightTheme",
        themes: {
            myCustomLightTheme,
        },
    },
});
