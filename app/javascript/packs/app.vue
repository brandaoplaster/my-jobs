<template>
  <div>
    <portfolio></portfolio>
    <block></block>
  </div>
</template>

<script>
export default {
  data: () => ({

  }),

  components: {
    Portfolio: () => import('./components/portfolio'),
    Block: () => import('./components/block'),
  }
}
</script>
