<template>
    <v-row>
        <v-col>
            <v-text-field
                v-model="filter.code"
                class="py-2"
                density="compact"
                placeholder="Search code"
                hide-details
            ></v-text-field>
            <div class="py-2">
                <v-btn @click="emitFilter" color="primary" block>Apply</v-btn>
            </div>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.priceStart"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Minimum price"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                v-model="filter.priceEnd"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Maximum price"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.paidStart"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Minimum paid"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                v-model="filter.paidEnd"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Maximum paid"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <v-text-field
                v-model="filter.changeStart"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Minimum change"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                v-model="filter.changeEnd"
                @keydown="validateDigit"
                class="py-2"
                density="compact"
                placeholder="Maximum change"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>

        <v-col>
            <div class="py-2">
                <v-menu v-model="menu1" :close-on-content-click="false">
                    <template v-slot:activator="{ props }">
                        <v-text-field
                            v-model="formattedStart"
                            v-bind="props"
                            placeholder="Issued at from"
                            density="compact"
                            hide-details
                            readonly
                            clearable
                        ></v-text-field>
                    </template>
                    <v-date-picker
                        v-model="picker.start"
                        :firstDayOfWeek="1"
                        hide-header
                    >
                        <template v-slot:actions>
                            <v-btn
                                :disabled="
                                    picker.start === filter.issuedAtStart
                                "
                                @click="picker.start = filter.issuedAtStart"
                                style="margin-top: -40px"
                                variant="text"
                            >
                                Cancel
                            </v-btn>
                            <!-- filter.value.issuedAtEnd -->
                            <v-btn
                                :disabled="
                                    picker.start === filter.issuedAtStart
                                "
                                @click="
                                    filter.issuedAtStart = picker.start;
                                    menu1 = false;
                                "
                                style="margin-top: -40px"
                                variant="text"
                            >
                                Ok
                            </v-btn>
                        </template>
                    </v-date-picker>
                </v-menu>
            </div>

            <div class="py-2">
                <v-menu v-model="menu2" :close-on-content-click="false">
                    <template v-slot:activator="{ props }">
                        <v-text-field
                            v-model="formattedEnd"
                            v-bind="props"
                            placeholder="Issued at to"
                            density="compact"
                            hide-details
                            readonly
                            clearable
                        ></v-text-field>
                    </template>
                    <v-date-picker
                        v-model="picker.end"
                        :firstDayOfWeek="1"
                        hide-header
                    >
                        <template v-slot:actions>
                            <v-btn
                                :disabled="picker.end === filter.issuedAtEnd"
                                @click="picker.end = filter.issuedAtEnd"
                                style="margin-top: -40px"
                                variant="text"
                            >
                                Cancel
                            </v-btn>
                            <v-btn
                                :disabled="picker.end === filter.issuedAtEnd"
                                @click="
                                    filter.issuedAtEnd = picker.end;
                                    menu2 = false;
                                "
                                style="margin-top: -40px"
                                variant="text"
                            >
                                Ok
                            </v-btn>
                        </template>
                    </v-date-picker>
                </v-menu>
            </div>
        </v-col>
    </v-row>
</template>

<script setup>
import { ref, computed } from "vue";

const emit = defineEmits(["filter"]);

const menu1 = ref(false);
const menu2 = ref(false);

const picker = ref({
    start: null,
    end: null,
});

const formattedStart = computed({
    get() {
        return picker.value.start
            ? new Date(picker.value.start).toLocaleDateString("sr-RS")
            : "";
    },
    set(newValue) {
        picker.value.start = newValue;
        filter.value.issuedAtStart = newValue;
    },
});

const formattedEnd = computed({
    get() {
        return picker.value.end
            ? new Date(picker.value.end).toLocaleDateString("sr-RS")
            : "";
    },
    set(newValue) {
        picker.value.end = newValue;
        filter.value.issuedAtEnd = newValue;
    },
});

const filter = ref({
    code: "",
    priceStart: "",
    priceEnd: "",
    paidStart: "",
    paidEnd: "",
    changeStart: "",
    changeEnd: "",
    issuedAtStart: null,
    issuedAtEnd: null,
});

function validateDigit(event) {
    if (event.key === "Backspace") {
        return;
    }

    if (event.key === " " || isNaN(Number(event.key))) {
        event.preventDefault();
    }
}

function emitFilter() {
    emit("filter", { ...filter.value });
}
</script>

<style scoped></style>
