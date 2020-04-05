.PHONY: clean checkout-index

default: clean checkout-index

clean:
	rm -rf output

checkout-index:
	git clone https://discobingolingo@github.com/qeffect/youtube-index.git output/youtube-index

checkout-web:
	git clone https://discobingolingo@github.com/qeffect/qeffect.github.io.git output/web

generate:
	youtube-archiver-server generate --config-path "output/youtube-index/serve.yml" --output "output/web"