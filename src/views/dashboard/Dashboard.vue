<template>
  <v-container
    id="dashboard"
    fluid
    tag="section"
    class="d-flex justify-center ml-8"
  >
    <v-text-field
      :label="$t('search')"
      color="secondary"
      hide-details
      style="max-width: 450px;"
    >
      <template
        v-if="$vuetify.breakpoint.mdAndUp"
        v-slot:append-outer
      >
        <v-btn
          class="mt-n2"
          elevation="1"
          fab
          small
        >
          <v-icon>mdi-magnify</v-icon>
        </v-btn>
      </template>
    </v-text-field>
  </v-container>
</template>

<script>
  export default {
    name: 'DashboardDashboard',
  }
</script>
