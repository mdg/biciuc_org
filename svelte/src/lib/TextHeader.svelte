<script lang="ts">
    export let title = "";
</script>

{#if title.length > 0 }
<h2>{title}</h2>
{/if}
<slot></slot>

<style>
    h2 {
        text-align: center;
        width: 100%;
    }
</style>
