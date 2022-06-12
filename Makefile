
build: build-static
	cd bici && mix compile

serve: build
	cd bici && mix phx.server

build-static:
	npx @11ty/eleventy --input=static --output=bici/priv/static \
		--formats=njk,css,png,jpg,ico

serve-static:
	npx @11ty/eleventy --input=static --output=bici/priv/static \
		--formats=njk,css,png,jpg,ico --serve
