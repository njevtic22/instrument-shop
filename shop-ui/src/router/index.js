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
        path: "/instruments/:id",
        name: "Instrument",
        component: () => import("../views/InstrumentView.vue"),
        meta: {
            title: "Instrument",
        },
    },
    {
        path: "/bought-instruments",
        name: "Bought instruments",
        component: () => import("../views/BoughtInstrumentsView.vue"),
        meta: {
            title: "Bought instruments",
            requiredRole: [Role.MANAGER, Role.CUSTOMER],
        },
    },
    {
        path: "/cart",
        name: "Cart",
        component: () => import("../views/CartView.vue"),
        meta: {
            title: "Cart",
            requiredRole: [Role.CUSTOMER],
        },
    },
    {
        path: "/instrument-types",
        name: "Instrument types",
        component: () => import("../views/InstrumentTypesView.vue"),
        meta: {
            title: "Instrument types",
            requiredRole: [Role.MANAGER, Role.SALESMAN],
        },
    },
    {
        path: "/login",
        name: "Login",
        component: () => import("../views/LoginView.vue"),
        meta: {
            title: "Login",
            requiredRole: [Role.ANONYMOUS],
        },
    },
    {
        path: "/register",
        name: "Register",
        component: () => import("../views/RegisterView.vue"),
        meta: {
            title: "Register",
            requiredRole: [Role.ANONYMOUS],
        },
    },
    {
        path: "/profile",
        name: "Profile",
        component: () => import("../views/ProfileView.vue"),
        meta: {
            title: "Profile",
            requiredRole: [Role.MANAGER, Role.SALESMAN, Role.CUSTOMER],
        },
    },
    {
        path: "/receipts",
        name: "Receipts",
        component: () => import("../views/ReceiptsView.vue"),
        meta: {
            title: "Receipts",
            requiredRole: [Role.MANAGER],
        },
    },
    {
        path: "/receipts/:id",
        name: "Receipt",
        component: () => import("../views/ReceiptView.vue"),
        meta: {
            title: "Receipt",
            requiredRole: [Role.MANAGER],
        },
    },
    {
        path: "/users",
        name: "Users",
        component: () => import("../views/UsersView.vue"),
        meta: {
            title: "Users",
            requiredRole: [Role.MANAGER],
        },
    },
    {
        path: "/not-found",
        alias: "/:pathMatch(.*)*",
        name: "NotFound",
        component: () => import("../views/NotFoundView.vue"),
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
