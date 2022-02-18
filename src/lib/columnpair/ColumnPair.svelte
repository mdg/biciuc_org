<script lang="ts">
</script>

<table><tr>
    <td>
        <slot name="left"></slot>
    </td>
    <td>
        <slot name="right"></slot>
    </td>
</tr></table>

<style>
    table {
        width: 100%;
    }
    td {
        width: 50%;
        border: 1px solid black;
        vertical-align: top;
    }
</style>
