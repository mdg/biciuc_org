<script lang="ts">
    export let src;
    export let alt = "";
</script>

<img width="100%" src={src} alt={alt} />
<slot></slot>

<style>
</style>
