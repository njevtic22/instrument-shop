import { createRouter, createWebHistory } from "vue-router";
import Instruments from "../views/InstrumentsView.vue";

const routes = [
    {
        path: "/",
        name: "Instruments",
        component: Instruments,
        meta: {
            title: "Instruments",
        },
    },
    {
        path: "/login",
        name: "Login",
        component: () =>
            import(/* webpackChunkName: "Login" */ "../views/LoginView.vue"),
        meta: {
            title: "Login",
        },
    },
];

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes,
});

export default router;
