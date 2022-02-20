<script context="module" lang="ts">
	export const prerender = true;
</script>

<script lang="ts">
	import ColumnPair from '$lib/columnpair/ColumnPair.svelte';
	import ImgHeader from '$lib/ImgHeader.svelte';
	import TextHeader from '$lib/TextHeader.svelte';
</script>

<svelte:head>
	<title>Bici UC</title>
</svelte:head>

<section>
    <ImgHeader src={"biciuc_twitter_1500x500.jpg"} >
        <h1>Bici UC</h1>

        <ColumnPair>
          <div slot="left">
              <TextHeader>
              Let’s get organized to make cycling safer and more enjoyable
              for the people of Union City, New jersey
              </TextHeader>
              <TextHeader title={"where"}>Where</TextHeader>
              <TextHeader title={"when"}>When</TextHeader>
              <TextHeader title={"why"}>Why</TextHeader>
          </div>
          <div slot="right">
              <TextHeader>
              Organicémonos para hacer que el ciclismo sea más seguro y
              agradable para la gente de Union City, Nueva Jersey
              </TextHeader>
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
