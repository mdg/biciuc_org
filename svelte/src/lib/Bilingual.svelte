<script lang="ts">
    export const EN = "en";
    export const ES = "es";

    export let lang;
</script>

{#if lang == EN }
<slot name="en" />
{:else}
<slot name="es" />
{/if}

<style>
</style>
