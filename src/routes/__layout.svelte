<script lang="ts">
	import Header from '$lib/header/Header.svelte';
	import '../app.css';
</script>

<Header />

<main>
	<slot />
</main>

<footer>
	<a href="mailto:info@biciuc.org">info@biciuc.org</a>
</footer>

<style>
	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 1rem;
        background-color: #fff0f0;
		width: 100%;
		margin: 0 auto;
		box-sizing: border-box;
	}

	footer {
		display: flex;
        align-self: center;
		flex-direction: column;
		justify-content: center;
        width: 100%;
        height: 40px;
		align-items: center;
		padding: 10px;
        background-color: #ffdfef;
	}

	footer a {
		font-weight: bold;
	}

	@media (min-width: 480px) {
		footer {
			padding: 10px 0;
		}
	}
</style>
