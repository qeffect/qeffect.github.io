.PHONY: clean checkout-index

default: clean checkout-index checkout-web generate

clean:
	rm -rf output

checkout-index:
	git clone -b master --depth 1 https://discobingolingo@github.com/qeffect/youtube-index.git output/youtube-index

checkout-web:
	git clone -b master --depth 1 https://discobingolingo@github.com/qeffect/qeffect.github.io.git output/web

generate:
	youtube-archiver-server generate --config-path "output/youtube-index/serve.yml" --output "output/web-tmp"
	touch output/web-tmp/.nojekyll
	rm -rf output/web/*
	cp -r output/web-tmp/* output/web
	rm -rf output/web-tmp