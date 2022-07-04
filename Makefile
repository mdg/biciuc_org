
build: build-static
	cd bici && mix compile

serve: build
	cd bici && mix phx.server

container: build
	docker build --rm -t biciuc bici

serve-container:
	# assume container was already built
	docker run -i -t --name bici-test -p 4000:4000 --rm --env SECRET_KEY_BASE="${SECRET_KEY_BASE}" biciuc

build-static:
	npx @11ty/eleventy --input=static --output=bici/priv/static \
		--formats=njk,css,png,jpg,ico

serve-static:
	npx @11ty/eleventy --input=static --output=bici/priv/static \
		--formats=njk,css,png,jpg,ico --serve
