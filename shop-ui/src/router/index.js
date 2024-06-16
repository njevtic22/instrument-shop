import { createRouter, createWebHistory } from "vue-router";
import Instruments from "@/views/InstrumentsView.vue";
import { Role, currentRole } from "@/store/auth";

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
        path: "/profile",
        name: "Profile",
        component: () =>
            import(
                /* webpackChunkName: "Profile" */ "../views/ProfileView.vue"
            ),
        meta: {
            title: "Profile",
            requiredRole: [Role.MANAGER, Role.SALESMAN, Role.CUSTOMER],
        },
    },
    {
        path: "/receipts",
        name: "Receipts",
        component: () =>
            import(
                /* webpackChunkName: "Receipts" */ "../views/ReceiptsView.vue"
            ),
        meta: {
            title: "Receipts",
            requiredRole: [Role.MANAGER],
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
    const roles = to.meta.requiredRole;
    if (!roles || roles.length == 0) {
        next();
        return;
    }

    const authorized = roles.some((role) => role === currentRole.value);
    if (authorized) {
        next();
        return;
    }

    next({ path: "/not-found" });
    return;
});

export default router;
