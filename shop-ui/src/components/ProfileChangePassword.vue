<template>
    <v-form ref="form">
        <v-row class="d-flex justify-center">
            <v-col cols="6">
                <v-text-field
                    v-model="passwordData.oldPassword"
                    :append-inner-icon="
                        show.oldPassword ? 'mdi-eye' : 'mdi-eye-off'
                    "
                    @click:append-inner="show.oldPassword = !show.oldPassword"
                    :type="show.oldPassword ? 'text' : 'password'"
                    :rules="[rules.required]"
                    label="Old password"
                    required
                    class="padded"
                ></v-text-field>

                <v-text-field
                    v-model="passwordData.newPassword"
                    :append-inner-icon="
                        show.newPassword ? 'mdi-eye' : 'mdi-eye-off'
                    "
                    @click:append-inner="show.newPassword = !show.newPassword"
                    :type="show.newPassword ? 'text' : 'password'"
                    :rules="[rules.required]"
                    label="New password"
                    required
                    class="padded"
                ></v-text-field>

                <v-text-field
                    v-model="passwordData.repeatedPassword"
                    :append-inner-icon="
                        show.newPassword ? 'mdi-eye' : 'mdi-eye-off'
                    "
                    @click:append-inner="show.newPassword = !show.newPassword"
                    :type="show.newPassword ? 'text' : 'password'"
                    :rules="[rules.required]"
                    label="Repeated password"
                    required
                    class="padded"
                ></v-text-field>
            </v-col>
        </v-row>

        <v-row class="d-flex justify-center">
            <v-btn :disabled="!isFormValid" @click="update" color="primary">
                Save
            </v-btn>
        </v-row>
        <br />
    </v-form>
</template>

<script setup>
import { ref, computed } from "vue";

const passwordData = ref({
    oldPassword: "",
    newPassword: "",
    repeatedPassword: "",
});

const show = ref({
    oldPassword: false,
    newPassword: false,
});

const form = ref(null);

const rules = {
    required: (value) => Boolean(value) || "Required",
};

// :disabled="!form ? !false : !form.isValid"
const isFormValid = computed(() => {
    return form.value ? form.value.isValid : false;
});

function update() {
    const changes = {
        oldPassword: passwordData.value.oldPassword,
        newPassword: passwordData.value.newPassword,
        repeatedPassword: passwordData.value.repeatedPassword,
    };
    console.log(changes);
}
</script>

<style scoped>
.padded {
    padding: 2%;
}
</style>
