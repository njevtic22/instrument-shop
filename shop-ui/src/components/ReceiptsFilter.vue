<template>
    <v-row>
        <v-col>
            <v-text-field
                class="py-2"
                density="compact"
                placeholder="Search code"
                hide-details
            ></v-text-field>
            <div class="py-2">
                <v-btn color="primary" block>Apply</v-btn>
            </div>
        </v-col>
        <v-col>
            <v-text-field
                class="py-2"
                density="compact"
                placeholder="Minimum price"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                class="py-2"
                density="compact"
                placeholder="Maximum price"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <v-text-field
                class="py-2"
                density="compact"
                placeholder="Minimum paid"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                class="py-2"
                density="compact"
                placeholder="Maximum paid"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <v-text-field
                class="py-2"
                density="compact"
                placeholder="Minimum change"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                class="py-2"
                density="compact"
                placeholder="Maximum change"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
        <v-col>
            <v-text-field
                class="py-2"
                density="compact"
                placeholder="Start issued at"
                type="number"
                hide-details
            ></v-text-field>
            <v-text-field
                class="py-2"
                density="compact"
                placeholder="End issued at"
                type="number"
                hide-details
            ></v-text-field>
        </v-col>
    </v-row>
</template>

<script setup></script>

<style scoped></style>
