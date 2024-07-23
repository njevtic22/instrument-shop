<template>
    <v-dialog v-model="dialog" width="25%">
        <v-card prepend-icon="mdi-cart-check" title="Buy instruments">
            <v-card-text>
                <v-form ref="form">
                    <v-text-field
                        v-model="totalPrice"
                        label="Total Price"
                        variant="underlined"
                        readonly
                    ></v-text-field>
                    <v-text-field
                        v-model="paid"
                        @keydown="validateDigit"
                        :min="totalPrice"
                        :rules="[rules.biggerThanPrice]"
                        label="Paid"
                        type="number"
                    ></v-text-field>
                </v-form>
            </v-card-text>

            <v-card-actions>
                <v-btn
                    :disabled="!form || !form.isValid"
                    @click="confirm"
                    color="primary"
                    variant="elevated"
                >
                    Confirm
                </v-btn>
                <v-btn @click="clear" variant="elevated"> Cancel </v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>

<script setup>
import { ref, defineModel } from "vue";

const emit = defineEmits(["confirmed"]);

const dialog = defineModel("dialog");
const totalPrice = defineModel("totalPrice");

const paid = ref(null);

const form = ref(null);

const rules = {
    biggerThanPrice: () =>
        paid.value >= totalPrice.value || "You did not pay enogh",
};

async function confirm() {
    const { valid } = await form.value.validate();

    if (!valid) {
        return;
    }

    emit("confirmed", Number(paid.value));

    clear();
}

function clear() {
    dialog.value = false;
    form.value.reset();
}

function validateDigit(event) {
    if (event.key === "Backspace") {
        return;
    }

    if (event.key === " " || isNaN(Number(event.key))) {
        event.preventDefault();
    }
}
</script>

<style scoped></style>
