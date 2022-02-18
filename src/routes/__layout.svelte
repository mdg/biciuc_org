<script lang="ts">
	import Header from '$lib/header/Header.svelte';
	import '../app.css';
</script>

<div id="main_column">

<Header />

<main>
	<slot />
</main>

<footer>
	<p>visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to learn SvelteKit</p>
</footer>

</div>

<style>
	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 1rem;
        background-color: #ffdfef;
		width: 100%;
		max-width: 1024px;
		margin: 0 auto;
		box-sizing: border-box;
	}

	footer {
		display: flex;
        align-self: center;
		flex-direction: column;
		justify-content: center;
        width: 100%;
        max-width: 1024px;
		align-items: center;
		padding: 40px;
	}

	footer a {
		font-weight: bold;
	}

    div#main_column {
        background-color: #f0d0e0;
		justify-content: center;
		width: 100%;
		max-width: 1024px;
    }

	@media (min-width: 480px) {
		footer {
			padding: 40px 0;
		}
	}
</style>
