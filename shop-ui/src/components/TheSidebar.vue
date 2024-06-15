<template>
    <v-navigation-drawer v-model="isOpened" permanent>
        <v-list density="compact" nav>
            <TransitionGroup name="fade">
                <v-list-item
                    v-if="currentRole === Role.ANONYMOUS"
                    @click="router.push('/login')"
                    prepend-icon="mdi-login"
                    title="Login"
                    value="Login"
                    key="Login"
                >
                </v-list-item>
                <v-list-item
                    v-if="currentRole !== Role.ANONYMOUS"
                    @click="router.push('/profile')"
                    prepend-icon="mdi-account"
                    title="Profile"
                    value="Profile"
                    key="Profile"
                >
                </v-list-item>
                <v-list-item
                    @click="router.push('/')"
                    prepend-icon="mdi-guitar-acoustic"
                    title="Instruments"
                    value="Instruments"
                    key="Instruments"
                >
                </v-list-item>
            </TransitionGroup>
        </v-list>

        <template v-slot:append>
            <transition name="fade">
                <LogoutButton
                    v-if="currentRole !== Role.ANONYMOUS"
                ></LogoutButton>
            </transition>
        </template>
    </v-navigation-drawer>
</template>

<script setup>
import { defineModel } from "vue";
import { useRouter } from "vue-router";
import { Role, currentRole } from "@/store/auth";

const router = useRouter();
const isOpened = defineModel();

// to avoid constantly calling isAnonymous when directly
// binding to v-if
// it also causes error on save:
// Maximum recursive updates exceeded in component <VMain>. This means you have a reactive effect that ...
// const isAnonymousComputed = computed(() => isAnonymous());
</script>

<style scoped>
.fade-enter-active {
    transition: opacity 0.3s ease;
    transition-delay: 0.3s;
}

.fade-leave-active {
    transition: opacity 0.3s ease;
    width: 94%;
}

.fade-enter-from,
.fade-leave-to {
    opacity: 0;
}

.fade-leave-active {
    position: absolute;
}
</style>
