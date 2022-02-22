<script context="module" lang="ts">
	export const prerender = true;
</script>

<script lang="ts">
    import Lang from '$lib/lang';
	import ColumnPair from '$lib/columnpair/ColumnPair.svelte';
	import ImgHeader from '$lib/ImgHeader.svelte';
	import TextHeader from '$lib/TextHeader.svelte';
    import * as content from './_content';
</script>

<svelte:head>
	<title>Bici UC</title>
</svelte:head>

<section>
    <ImgHeader src={"biciuc_twitter_1500x500.jpg"} >
        <h1>Bici UC</h1>

        <ColumnPair>
          <div slot="left">
              <TextHeader>{content.HEADER.text(Lang.EN)}</TextHeader>
              <TextHeader title={"where"}>Where</TextHeader>
              <TextHeader title={"when"}>When</TextHeader>
              <TextHeader title={"why"}>Why</TextHeader>
          </div>
          <div slot="right">
              <TextHeader>{content.HEADER.text(Lang.ES)}</TextHeader>
              <div>cómo</div>
              <div>dónde</div>
          </div>
        </ColumnPair>
    </ImgHeader>
</section>

<style>
	section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 1;
	}
</style>
