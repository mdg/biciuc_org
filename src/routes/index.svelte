<script context="module" lang="ts">
	export const prerender = true;
</script>

<script lang="ts">
	import ColumnPair from '$lib/columnpair/ColumnPair.svelte';
	// import Counter from '$lib/Counter.svelte';
</script>

<svelte:head>
	<title>Home</title>
</svelte:head>

<section>
	<h1>
		<div class="welcome">
			<picture>
				<img src="biciuc_twitter_1500x500.jpg" />
			</picture>
		</div>
	</h1>

    <ColumnPair>
      <div slot="left">
          <div>how</div>
          <div>where</div>
          <div>what</div>
          <div>which</div>
      </div>
      <div slot="right">
          <div>cómo</div>
          <div>dónde</div>
      </div>
    </ColumnPair>
</section>

<style>
	section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 1;
	}

	h1 {
		width: 100%;
	}

    div.columns {
        columns: 100px 3;
    }

	.welcome {
		position: relative;
		width: 100%;
		height: 0;
		padding: 0 0 calc(100% * 495 / 2048) 0;
	}

	.welcome img {
		position: absolute;
		width: 100%;
		height: 100%;
		top: 0;
		display: block;
	}
</style>
