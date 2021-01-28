<template>
  <v-app-bar
    id="app-bar"
    absolute
    app
    color="transparent"
    flat
    height="75"
    class="d-flex justify-space-around"
  >
    <v-container
      v-for="(link, idx) in links"
      :key="idx"
    >
      <router-link
        :to="link.path"
        class="links ml-5"
      >
        <span>{{ link.name }}</span>
      </router-link>
    </v-container>
  </v-app-bar>
</template>

<script>

  // Utilities

  export default {
    name: 'DashboardCoreAppBar',

    components: {

    },

    props: {
      value: {
        type: Boolean,
        default: false,
      },
    },

    data: () => ({

      links: [
        {
          name: 'Supporters',
          path: '/supporters',
        },
        {
          name: 'Stream',
          path: '/stream',
        },
        {
          name: 'Inbox',
          path: '/inbox',
        },
        {
          name: 'Calender',
          path: '/calender',
        },
      ],
    }),
  }
</script>

<style lang="sass" scoped>
  .links
    color: #000
    text-decoration: none
</style>
