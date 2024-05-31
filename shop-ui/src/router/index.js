import { createRouter, createWebHistory } from "vue-router";
import Instruments from "../views/InstrumentsView.vue";
import { Role, isAnonymous } from "@/store/auth";

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
            requiredRole: [Role.ANONYMOUS],
        },
    },
    {
        path: "/not-found",
        alias: "/:pathMatch(.*)*",
        name: "NotFound",
        component: () =>
            import(
                /* webpackChunkName: "NotFound" */ "../views/NotFoundView.vue"
            ),
        meta: {
            title: "Not Found",
        },
    },
];

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes,
});

router.beforeEach((to, from, next) => {
    if (!to.meta.requiredRole || to.meta.requiredRole.length == 0) {
        next();
        return;
    }

    if (isAnonymous() && to.path === "/login") {
        next();
        return;
    }

    next({ path: "/not-found" });
    return;
});

export default router;
